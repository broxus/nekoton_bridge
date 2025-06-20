import 'dart:async';
import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';
import 'package:rxdart/rxdart.dart';

import 'token_wallet.reflectable.dart';

/// Implementation of nekoton's TonWallet.
///
/// If you need watch wallet changes, you can subscribe to [fieldUpdatesStream]
/// and be ready if any suitable data changes, but this won't notify about external
/// events emitted through [onMessageSentStream], [onMessageExpiredStream],
/// or [onTransactionsFoundStream].
/// [onStateChangedStream] changes internal state, so it will lead updating data.
@reflector
class TokenWallet extends RustToDartMirrorInterface
    implements RefreshingInterface {
  late TokenWalletDartWrapper wallet;
  final Transport transport;

  /// Flag that display [onStateChanged] that [wallet] was initialized.
  bool _isInitialized = false;
  bool _isTransactionsPreloaded = false;

  /// Controllers that contains data that emits from rust.
  final _onBalanceChangedController = BehaviorSubject<BigInt>();
  final _onMoneyBalanceChangedController = BehaviorSubject<Money>();
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

  Money get moneyBalance => Money.fromBigIntWithCurrency(balance, currency);

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

  late final Symbol symbol;
  late final Currency currency;
  late final TokenWalletVersion version;

  bool get isTransactionsPreloaded => _isTransactionsPreloaded;

  TokenWallet._(this.transport, this.rootTokenContract);

  /// Create TokenWallet by subscribing to its instance.
  /// [owner] - address of account that is owner of wallet
  /// [rootTokenContract] - address of contract in blockchain
  static Future<TokenWallet> subscribe({
    required Transport transport,
    required Address owner,
    required Address rootTokenContract,
    bool preloadTransactions = false,
  }) =>
      transport.use(() async {
        final instance = TokenWallet._(transport, rootTokenContract);

        instance.wallet = await TokenWalletDartWrapper.subscribe(
          instanceHash: instance.instanceHash,
          transport: transport.transportBox,
          rootTokenContract: rootTokenContract.address,
          owner: owner.address,
          preloadTransactions: preloadTransactions,
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
      symbol = await _getSymbol();
      version = await _getVersion();

      currency = _getCurrency();

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

  /// Stream that emits data when balance in Money of wallet changes
  ///
  /// To update data of this stream, wallet must be refreshed via [refresh].
  Stream<Money> get onMoneyBalanceChangedStream =>
      _onMoneyBalanceChangedController.stream;

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

  /// Get Symbol of contract of wallet.
  /// May throw error
  Future<Symbol> _getSymbol() async {
    final encoded = await wallet.symbol();
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return Symbol.fromJson(decoded);
  }

  /// Get TokenWalletVersion or throw error.
  Future<TokenWalletVersion> _getVersion() async {
    final encoded = await wallet.version();
    final decoded = jsonDecode(encoded);
    return TokenWalletVersion.values.firstWhere((e) => e.toString() == decoded);
  }

  /// Get balance of wallet or throw error.
  /// Return string representation of rust BigUInt
  Future<String> _getBalance() => wallet.balance();

  /// Get ContractState or throw error.
  Future<ContractState> getContractState() async {
    final encoded = await wallet.contractState();
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return ContractState.fromJson(decoded);
  }

  Future<BigInt> estimateMinAttachedAmount({
    required Address destination,
    required BigInt amount,
    bool notifyReceiver = false,
    String? payload,
  }) async {
    final value = await wallet.estimateMinAttachedAmount(
      destination: destination.address,
      amount: amount.toString(),
      payload: payload,
      notifyReceiver: notifyReceiver,
    );

    return BigInt.parse(value);
  }

  /// Prepare transferring tokens from this wallet to other.
  /// [destination] - address of account that should receive token
  /// [amount] - amount of tokens that should be transferred
  /// [notifyReceiver] - if receiver should be notifier by blockchain
  /// [payload] - payload of transfer aka comment
  /// [attachedAmount] - representation of rust u64, default 400000000.
  ///   How many native tokens should be attached to transfer.
  /// Returns InternalMessage or throw error.
  Future<InternalMessage> prepareTransfer({
    required Address destination,
    required BigInt amount,
    bool notifyReceiver = false,
    BigInt? attachedAmount,
    String? payload,
  }) async {
    final encoded = await wallet.prepareTransfer(
      destination: destination.address,
      amount: amount.toString(),
      notifyReceiver: notifyReceiver,
      attachedAmount: attachedAmount?.toString(),
      payload: payload,
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
    if (_isRefreshing || transport.disposed || avoidCall) return;

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
      'TokenWallet ${symbol.name}: (Owner: $owner, RootContract: $rootTokenContract, TokenAddress: $tokenAddress)';

  /// Preload transactions of wallet.
  /// [fromLt] - offset for loading data, string representation of u64
  /// May throw error.
  Future<void> preloadTransactions([String? fromLt]) async {
    if (avoidCall) return;

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
    if (avoidCall) return;

    await wallet.handleBlock(block: block);
    await _updateData();
  }

  /// Get details about token wallet by address of wallet
  /// [address] - address of wallet
  /// 0: TokenWalletDetails
  /// 1: RootTokenContractDetails
  /// or throw error
  static Future<(TokenWalletDetails, RootTokenContractDetails)>
      getTokenWalletDetails({
    required Transport transport,
    required Address address,
  }) async {
    final encoded = await transport.use(() async {
      return TokenWalletDartWrapper.getTokenWalletDetails(
        address: address.address,
        transport: transport.transportBox,
      );
    });
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return (
      TokenWalletDetails.fromJson(decoded.first as Map<String, dynamic>),
      RootTokenContractDetails.fromJson(decoded.last as Map<String, dynamic>),
    );
  }

  /// Get details about root contract by address of TokenWallet
  /// 0: Address of root contract
  /// 1: RootTokenContractDetails of root contract
  /// or throw error.
  static Future<(Address, RootTokenContractDetails)>
      getTokenRootDetailsFromTokenWallet({
    required Transport transport,
    required Address address,
  }) async {
    final encoded = await transport.use(() async {
      return TokenWalletDartWrapper.getTokenRootDetailsFromTokenWallet(
        tokenWalletAddress: address.address,
        transport: transport.transportBox,
      );
    });
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return (
      Address(address: (decoded.first as String)),
      RootTokenContractDetails.fromJson(decoded.last as Map<String, dynamic>),
    );
  }

  /// Get details about root contract by address of TokenWallet
  /// 0: Address of root contract
  /// 1: RootTokenContractDetails of root contract
  /// or throw error.
  static Future<RootTokenContractDetails> getTokenRootDetails({
    required Transport transport,
    required Address tokenRoot,
  }) async {
    final encoded = await transport.use(() async {
      return TokenWalletDartWrapper.getTokenRootDetails(
        tokenRootAddress: tokenRoot.address,
        transport: transport.transportBox,
      );
    });
    return RootTokenContractDetails.fromJson(jsonDecode(encoded));
  }

  /// Calls from rust side when balance of wallet has been changed
  void onBalanceChanged(String balance) {
    if (avoidCall) return;

    _onBalanceChangedController.add(BigInt.parse(balance));

    /// For some strange reason, rust calls this method before creation completes
    if (!_isInitialized) return;

    _updateData();
  }

  /// Calls from rust side when transactions of wallet has been found
  void onTransactionsFound(String payload) {
    if (avoidCall) return;

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

    if (avoidCall) return;
    _contractState = await getContractState();
    if (avoidCall) return;
    balance = BigInt.parse(await _getBalance());

    if (avoidCall) return;
    // Initialization is completed, so we have Currency already created
    _onMoneyBalanceChangedController.add(moneyBalance);
    _fieldsUpdateController.add(null);
  }

  Currency _getCurrency() {
    final patternDigits =
        symbol.decimals > 0 ? '0.${'#' * symbol.decimals}' : '0';
    final currency = Currency.create(
      symbol.name,
      symbol.decimals,
      symbol: symbol.name,
      pattern: patternDigits,
    );
    Currencies().register(currency);

    return currency;
  }

  @override
  void dispose() {
    wallet.innerWallet.dispose();
    _onBalanceChangedController.close();
    _onMoneyBalanceChangedController.close();
    _onTransactionsFoundController.close();
    _fieldsUpdateController.close();
    super.dispose();
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable(); // auto-generated reflectable file
    return reflector.reflect(this);
  }
}

void main() {}
