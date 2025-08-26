import 'dart:async';
import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:rxdart/rxdart.dart';

/// Implementation of nekoton's JettonWallet.
///
/// If you need watch wallet changes, you can subscribe to [fieldUpdatesStream]
/// and be ready if any suitable data changes, but this won't notify about external
/// events emitted through [onTransactionsFoundStream].
class JettonWallet implements RefreshingInterface {
  JettonWallet._(this.transport, this.rootTokenContract);

  late JettonWalletDartWrapper wallet;
  final Transport transport;

  /// Flag that display [onStateChanged] that [wallet] was initialized.
  bool _isInitialized = false;
  bool _isTransactionsPreloaded = false;

  /// Controllers that contains data that emits from rust.
  final _onBalanceChangedController = BehaviorSubject<BigInt>();
  final _onTransactionsFoundController = BehaviorSubject<
      (
        List<TransactionWithData<TokenWalletTransaction?>>,
        TransactionsBatchInfo
      )>();

  /// Description information about wallet that could be changed and updated
  /// during [_updateData]. It means, that fields could be changed after any
  /// event that can change internal state of wallet.
  late ContractState _contractState;
  late BigInt balance;

  /// Triggers subscribers when [_updateData] completes
  final _fieldsUpdateController = BehaviorSubject<void>();

  /// Description information about wallet that do not change

  /// Address of contract for token that is used to subscribe and identify wallet
  final Address rootTokenContract;

  /// Address of token that was extracted from [owner] and [rootTokenContract].
  /// Typically, this address is used to receive tokens.
  late final Address tokenAddress;

  /// Address of account, that this token wallet linked to. This address is the
  /// same as address of TonWallet for this account.
  late final Address owner;

  bool get isTransactionsPreloaded => _isTransactionsPreloaded;

  bool get isDisposed => wallet.innerWallet.isDisposed;

  /// Create JettonWallet by subscribing to its instance.
  /// [owner] - address of account that is owner of wallet
  /// [rootTokenContract] - address of contract in blockchain
  static Future<JettonWallet> subscribe({
    required Transport transport,
    required Address owner,
    required Address rootTokenContract,
    bool preloadTransactions = false,
  }) =>
      transport.use(() async {
        final instance = JettonWallet._(transport, rootTokenContract);

        instance.wallet = await JettonWalletDartWrapper.subscribe(
          transport: transport.transportBox,
          rootTokenContract: rootTokenContract.address,
          owner: owner.address,
          preloadTransactions: preloadTransactions,
          onBalanceChanged: instance.onBalanceChanged,
          onTransactionsFound: instance.onTransactionsFound,
        );

        await instance._initInstance();
        instance._isTransactionsPreloaded = preloadTransactions;

        return instance;
      });

  /// If any error occurs during first initialization of wallet, it will dispose
  /// wallet and rethrow error;
  Future<void> _initInstance() async {
    try {
      tokenAddress = await _getAddress();
      owner = await _getOwner();

      await _updateData();
      _isInitialized = true;
    } catch (_) {
      dispose();
      rethrow;
    }
  }

  ContractState get contractState => _contractState;

  /// Stream that allows subscribe to any changes of wallet data.
  Stream<void> get fieldUpdatesStream => _fieldsUpdateController.stream;

  /// Stream that emits data when balance of wallet changes
  ///
  /// To update data of this stream, wallet must be refreshed via [refresh].
  Stream<BigInt> get onBalanceChangedStream =>
      _onBalanceChangedController.stream;

  /// Stream that emits data when transactions of wallet founds
  ///
  /// To update data of this stream, wallet must be refreshed via [refresh].
  Stream<
      (
        List<TransactionWithData<TokenWalletTransaction?>>,
        TransactionsBatchInfo
      )> get onTransactionsFoundStream => _onTransactionsFoundController.stream;

  /// Get address of owner of wallet.
  Future<Address> _getOwner() async => Address(address: await wallet.owner());

  /// Get address of wallet.
  Future<Address> _getAddress() async =>
      Address(address: await wallet.address());

  /// Get balance of wallet or throw error.
  /// Return string representation of rust BigUInt
  Future<String> _getBalance() => wallet.balance();

  /// Get ContractState or throw error.
  Future<ContractState> getContractState() async {
    final encoded = await wallet.contractState();
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return ContractState.fromJson(decoded);
  }

  /// Estimates the minimum attached amount required for a transaction.
  ///
  /// This method calculates the minimum `BigInt` amount that needs to be attached when sending a transaction
  /// to the specified destination address, considering the provided amount, remaining gas, and callback parameters.
  ///
  /// **Parameters:**
  /// - `amount`: The amount to be sent in the transaction.
  /// - `destination`: The destination address for the transaction.
  /// - `remainingGasTo`: The address to receive any remaining gas after the transaction.
  /// - `callbackValue`: The value to pass back in case of a callback.
  /// - `customPayload` (_optional_): A custom payload for the transaction.
  /// - `callbackPayload` (_optional_): A payload to include in the callback.
  ///
  /// **Returns:**
  /// - A `Future<BigInt>` that completes with the estimated minimum attached amount.
  Future<BigInt> estimateMinAttachedAmount({
    required Address destination,
  }) async {
    final value = await wallet.estimateMinAttachedAmount(
      destination: destination.address,
    );

    return BigInt.parse(value);
  }

  /// Prepares a transfer of tokens.
  ///
  /// This method encodes the necessary parameters for a token transfer and updates the internal state.
  ///
  /// **Parameters:**
  /// - `amount`: The amount of tokens to transfer.
  /// - `destination`: The address of the destination wallet.
  /// - `remainingGasTo`: The address to receive any remaining gas.
  /// - `callbackValue`: The value to be used for the callback.
  /// - `customPayload` (_optional_): A custom payload to include in the transfer.
  /// - `callbackPayload` (_optional_): A payload for the callback.
  /// - `attachedAmount` (_optional_): An additional amount to attach to the transfer.
  ///
  /// **Returns:**
  /// An [InternalMessage] object representing the prepared transfer.
  Future<InternalMessage> prepareTransfer({
    required BigInt amount,
    required Address destination,
    required Address remainingGasTo,
    required BigInt callbackValue,
    String? customPayload,
    String? callbackPayload,
    BigInt? attachedAmount,
  }) async {
    final encoded = await wallet.prepareTransfer(
      amount: amount.toString(),
      destination: destination.address,
      remainingGasTo: remainingGasTo.address,
      customPayload: customPayload,
      callbackValue: callbackValue.toString(),
      callbackPayload: callbackPayload,
      attachedAmount: attachedAmount?.toString(),
    );
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    await _updateData();
    return InternalMessage.fromJson(decoded);
  }

  /// Helper flag that allows users avoid multiple refreshes if network is slow
  /// and their polling method do not support correct updating.
  bool _isRefreshing = false;

  /// Refresh wallet and update its data.
  ///
  /// This is a polling method, that sends requests to blockchain over network,
  /// so it's a good practice to call this method with delay at least 10seconds.
  ///
  /// May throw error.
  @override
  Future<void> refresh() async {
    if (_isRefreshing || transport.disposed || isDisposed) return;

    try {
      _isRefreshing = true;
      await transport.use(() async {
        await wallet.refresh();
        await _updateData();
      });
    } finally {
      _isRefreshing = false;
    }
  }

  @override
  String get refreshDescription =>
      'JettonWallet: (Owner: $owner, RootContract: $rootTokenContract, TokenAddress: $tokenAddress)';

  /// Preload transactions of wallet.
  /// [fromLt] - offset for loading data, string representation of u64
  /// May throw error.
  Future<void> preloadTransactions([String? fromLt]) async {
    if (isDisposed) return;

    _isTransactionsPreloaded = true;
    await wallet.preloadTransactions(
      fromLt: fromLt ?? contractState.lastTransactionId?.lt ?? '0',
    );
    await _updateData();
  }

  /// Handle block of blockchain.
  /// [block] - base64-encoded Block that could be got from [GqlTransport.getBlock]
  /// May throw error.
  Future<void> handleBlock({required String block}) async {
    if (isDisposed) return;

    await wallet.handleBlock(block: block);
    await _updateData();
  }

  /// Get details about token wallet by address of wallet
  /// [address] - address of wallet
  /// 0: JettonWalletData
  /// 1: JettonRootData
  /// or throw error
  static Future<(JettonWalletData, JettonRootData)> getJettonWalletDetails({
    required Transport transport,
    required Address address,
  }) async {
    final encoded = await transport.use(() async {
      return JettonWalletDartWrapper.getJettonWalletDetails(
        address: address.address,
        transport: transport.transportBox,
      );
    });
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return (
      JettonWalletData.fromJson(decoded.first as Map<String, dynamic>),
      JettonRootData.fromJson(decoded.last as Map<String, dynamic>),
    );
  }

  /// Get details about root contract by address of TokenWallet
  /// 0: Address of root contract
  /// 1: JettonRootData of root contract
  /// or throw error.
  static Future<(Address, JettonRootData)>
      getJettonRootDetailsFromJettonWallet({
    required Transport transport,
    required Address address,
  }) async {
    final encoded = await transport.use(() async {
      return JettonWalletDartWrapper.getJettonRootDetailsFromJettonWallet(
        tokenWalletAddress: address.address,
        transport: transport.transportBox,
      );
    });
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return (
      Address(address: (decoded.first as String)),
      JettonRootData.fromJson(decoded.last as Map<String, dynamic>),
    );
  }

  /// Get details about root contract by address of TokenWallet
  /// 0: Address of root contract
  /// 1: JettonRootData of root contract
  /// or throw error.
  static Future<JettonRootData> getJettonRootDetails({
    required Transport transport,
    required Address tokenRoot,
  }) async {
    final encoded = await transport.use(() async {
      return JettonWalletDartWrapper.getJettonRootDetails(
        tokenRootAddress: tokenRoot.address,
        transport: transport.transportBox,
      );
    });
    return JettonRootData.fromJson(jsonDecode(encoded));
  }

  /// Calls from rust side when balance of wallet has been changed
  void onBalanceChanged(String balance) {
    if (isDisposed) return;

    _onBalanceChangedController.add(BigInt.parse(balance));

    /// For some strange reason, rust calls this method before creation completes
    if (!_isInitialized) return;

    _updateData();
  }

  /// Calls from rust side when transactions of wallet has been found
  void onTransactionsFound(String payload) {
    if (isDisposed) return;

    final json = jsonDecode(payload) as List<dynamic>;

    final transactionsJson = json.first as List<dynamic>;
    final transactions = transactionsJson
        .cast<Map<String, dynamic>>()
        .map(
          (e) => TransactionWithData<TokenWalletTransaction?>.fromJson(
            e,
            (json) => json != null
                ? TokenWalletTransaction.fromJson(json as Map<String, dynamic>)
                : null,
          ),
        )
        .toList();
    final batchInfoJson = json.last as Map<String, dynamic>;
    final batchInfo = TransactionsBatchInfo.fromJson(batchInfoJson);
    _onTransactionsFoundController.add((transactions, batchInfo));
  }

  /// Method that updates all internal data and notify subscribers about it.
  ///
  /// This method should be awaited in internal calls to be sure, that dart
  /// instance gets updates in a good way.
  ///
  /// This shitty repeated avoidCall needs to avoid `Use after free` when
  /// method calls after dispose.
  Future<void> _updateData() async {
    if (transport.disposed) return;

    if (isDisposed) return;
    _contractState = await getContractState();
    if (isDisposed) return;
    balance = BigInt.parse(await _getBalance());
    if (isDisposed) return;
    _fieldsUpdateController.add(null);
  }

  void dispose() {
    wallet.innerWallet.dispose();
    _onBalanceChangedController.close();
    _onTransactionsFoundController.close();
    _fieldsUpdateController.close();
  }
}
