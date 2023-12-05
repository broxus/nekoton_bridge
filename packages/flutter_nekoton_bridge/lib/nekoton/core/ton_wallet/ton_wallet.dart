import 'dart:async';
import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';
import 'package:rxdart/rxdart.dart';
import 'package:tuple/tuple.dart';

import 'ton_wallet.reflectable.dart';

/// Implementation of nekoton's TonWallet.
///
/// If you need watch wallet changes, you can subscribe to [fieldUpdatesStream]
/// and be ready if any suitable data changes, but this won't notify about external
/// events emitted through [onMessageSentStream], [onMessageExpiredStream],
/// or [onTransactionsFoundStream].
/// [onStateChangedStream] changes internal state, so it will lead updating data.
@reflector
class TonWallet extends RustToDartMirrorInterface
    implements RefreshingInterface {
  late TonWalletDartWrapper wallet;
  final Transport transport;

  /// Flag that display [onStateChanged] that [wallet] was initialized.
  bool _isInitialized = false;

  /// Controllers that contains data that emits from rust.
  final _onMessageSentController =
      BehaviorSubject<Tuple2<PendingTransaction, Transaction?>>();
  final _onMessageExpiredController = BehaviorSubject<PendingTransaction>();
  final _onStateChangedController = BehaviorSubject<ContractState>();
  final _onTransactionsFoundController = BehaviorSubject<
      Tuple2<List<TransactionWithData<TransactionAdditionalInfo?>>,
          TransactionsBatchInfo>>();

  /// Description information about wallet that could be changed and updated
  /// during [_updateData]. It means, that fields could be changed after any
  /// event that can change internal state of wallet.
  late ContractState _contractState;
  late List<PendingTransaction> _pendingTransactions;
  late PollingMethod _pollingMethod;
  late List<MultisigPendingTransaction> _unconfirmedTransactions;
  late List<PublicKey>? _custodians;

  /// Triggers subscribers when [_updateData] completes
  final _fieldsUpdateController = BehaviorSubject<void>();

  /// Description information about wallet that do not change
  late final TonWalletDetails details;
  late final PublicKey publicKey;
  late final Address address;
  late final WalletType walletType;
  late final int workchain;

  TonWallet._(this.transport);

  /// Create TonWallet by subscribing to its instance by public_key.
  /// publicKey - is string representation of key
  static Future<TonWallet> subscribe({
    required Transport transport,
    required int workchainId,
    required PublicKey publicKey,
    required WalletType walletType,
  }) async {
    final instance = TonWallet._(transport);

    final lib = createLib();
    instance.wallet = await lib.subscribeStaticMethodTonWalletDartWrapper(
      instanceHash: instance.instanceHash,
      publicKey: publicKey.publicKey,
      walletType: jsonEncode(walletType),
      workchainId: workchainId,
      transport: transport.transportBox,
    );

    await instance._initInstance();

    return instance;
  }

  /// Create TonWallet by subscribing to its instance by address of wallet.
  static Future<TonWallet> subscribeByAddress({
    required Transport transport,
    required Address address,
  }) async {
    final instance = TonWallet._(transport);

    final lib = createLib();
    instance.wallet =
        await lib.subscribeByAddressStaticMethodTonWalletDartWrapper(
      instanceHash: instance.instanceHash,
      address: address.address,
      transport: transport.transportBox,
    );

    await instance._initInstance();

    return instance;
  }

  /// Create TonWallet by subscribing to its instance by existed instance.
  static Future<TonWallet> subscribeByExistingWallet({
    required Transport transport,
    required ExistingWalletInfo existingWallet,
  }) async {
    final instance = TonWallet._(transport);

    final lib = createLib();
    instance.wallet =
        await lib.subscribeByExistingStaticMethodTonWalletDartWrapper(
      instanceHash: instance.instanceHash,
      existingWallet: jsonEncode(existingWallet),
      transport: transport.transportBox,
    );

    await instance._initInstance();

    return instance;
  }

  /// If any error occurs during first initialization of wallet, it will dispose
  /// wallet and rethrow error;
  Future<void> _initInstance() async {
    try {
      walletType = await _getWalletType();
      workchain = await _getWorkchain();
      publicKey = await _getPublicKey();
      address = await _getAddress();
      details = await _getDetails();

      await _updateData();
      _isInitialized = true;
    } catch (_) {
      dispose();
      rethrow;
    }
  }

  /// For not multisig wallet custodians contains public key of wallet
  List<PublicKey>? get custodians => _custodians;

  ContractState get contractState => _contractState;

  List<PendingTransaction> get pendingTransactions => _pendingTransactions;

  PollingMethod get pollingMethod => _pollingMethod;

  List<MultisigPendingTransaction> get unconfirmedTransactions =>
      _unconfirmedTransactions;

  /// Stream that allows subscribe to any changes of wallet data.
  Stream<void> get fieldUpdatesStream => _fieldsUpdateController.stream;

  /// Stream that emits data when blockchain founds new transaction
  ///
  /// To update data of this stream, wallet must be refreshed via [refresh].
  Stream<Tuple2<PendingTransaction, Transaction?>> get onMessageSentStream =>
      _onMessageSentController.stream;

  /// Stream that emits data when expired message come to wallet
  ///
  /// To update data of this stream, wallet must be refreshed via [refresh].
  Stream<PendingTransaction> get onMessageExpiredStream =>
      _onMessageExpiredController.stream;

  /// Stream that emits data when state of wallet changes
  ///
  /// To update data of this stream, wallet must be refreshed via [refresh].
  Stream<ContractState> get onStateChangedStream =>
      _onStateChangedController.stream;

  /// Stream that emits data when transactions of wallet founds
  ///
  /// To update data of this stream, wallet must be refreshed via [refresh].
  Stream<
      Tuple2<List<TransactionWithData<TransactionAdditionalInfo?>>,
          TransactionsBatchInfo>> get onTransactionsFoundStream =>
      _onTransactionsFoundController.stream;

  /// Get workchain of wallet.
  Future<int> _getWorkchain() => wallet.workchain();

  /// Get address of wallet.
  Future<Address> _getAddress() async =>
      Address(address: await wallet.address());

  /// Get public key of wallet.
  Future<PublicKey> _getPublicKey() async =>
      PublicKey(publicKey: await wallet.publicKey());

  /// Get WalletType or throw error.
  Future<WalletType> _getWalletType() async {
    final encoded = await wallet.walletType();
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return WalletType.fromJson(decoded);
  }

  /// Get ContractState or throw error.
  Future<ContractState> getContractState() async {
    final encoded = await wallet.contractState();
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return ContractState.fromJson(decoded);
  }

  /// Get list of PendingTransaction or throw error.
  Future<List<PendingTransaction>> getPendingTransactions() async {
    final encoded = await wallet.pendingTransactions();
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return decoded
        .map((e) => PendingTransaction.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Get PollingMethod of wallet.
  Future<PollingMethod> getPollingMethod() => wallet.pollingMethod();

  /// Get TonWalletDetails or throw error.
  Future<TonWalletDetails> _getDetails() async {
    final encoded = await wallet.details();
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return TonWalletDetails.fromJson(decoded);
  }

  /// Get list of MultisigPendingTransaction or throw error.
  Future<List<MultisigPendingTransaction>> getUnconfirmedTransactions() async {
    final encoded = await wallet.unconfirmedTransactions();
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return decoded
        .map(
          (e) => MultisigPendingTransaction.fromJson(e as Map<String, dynamic>),
        )
        .toList();
  }

  /// Get optional list of custodians.
  /// Returns list of public keys.
  Future<List<PublicKey>?> getCustodians() async => (await wallet.custodians())
      ?.map((key) => PublicKey(publicKey: key))
      .toList();

  /// Prepare TonWallet for deploy action.
  /// Returns UnsignedMessage or throw error.
  Future<UnsignedMessage> prepareDeploy({
    required Expiration expiration,
  }) async =>
      UnsignedMessage.create(
        message: await wallet.prepareDeploy(expiration: jsonEncode(expiration)),
      );

  /// Prepare TonWallet for deploy actions if wallet is multisig.
  /// [custodians] - list of public keys of custodians.
  /// [reqConfirms] - count of required confirmations from 1 to [custodians] count
  /// Returns UnsignedMessage or throw error.
  Future<UnsignedMessage> prepareDeployWithMultipleOwners({
    required Expiration expiration,
    required List<PublicKey> custodians,
    required int reqConfirms,
  }) async =>
      UnsignedMessage.create(
        message: await wallet.prepareDeployWithMultipleOwners(
          expiration: jsonEncode(expiration),
          custodians: custodians.map((key) => key.publicKey).toList(),
          reqConfirms: reqConfirms,
        ),
      );

  /// Prepare transferring tokens from this wallet to other.
  /// [publicKey] - key of account that had initiated transfer
  /// [destination] - address of account that should receive token
  /// [amount] - amount of tokens that should be transferred
  /// [bounce] - nekoton's bounce param
  /// [body] - body of transfer aka comment
  /// Returns UnsignedMessage or throw error.
  Future<UnsignedMessage> prepareTransfer({
    required RawContractState contractState,
    required PublicKey publicKey,
    required Address destination,
    required BigInt amount,
    required bool bounce,
    String? body,
    required Expiration expiration,
  }) async {
    final message = await wallet.prepareTransfer(
      contractState: jsonEncode(contractState),
      publicKey: publicKey.publicKey,
      destination: destination.address,
      amount: amount.toString(),
      bounce: bounce,
      body: body,
      expiration: jsonEncode(expiration),
    );
    await _updateData();
    return UnsignedMessage.create(message: message);
  }

  /// Prepare transaction for confirmation.
  /// publicKey - key of account that had initiated transfer
  /// [transactionId] - id of transaction, u64 in rust.
  /// Returns UnsignedMessage or throw error.
  Future<UnsignedMessage> prepareConfirmTransaction({
    required RawContractState contractState,
    required PublicKey publicKey,
    required String transactionId,
    required Expiration expiration,
  }) async =>
      UnsignedMessage.create(
        message: await wallet.prepareConfirmTransaction(
          contractState: jsonEncode(contractState),
          publicKey: publicKey.publicKey,
          expiration: jsonEncode(expiration),
          transactionId: transactionId,
        ),
      );

  /// Calculate fees for transaction.
  /// Returns representation of u128 or throw error.
  Future<BigInt> estimateFees({
    required SignedMessage signedMessage,
  }) async {
    final fee =
        await wallet.estimateFees(signedMessage: jsonEncode(signedMessage));
    return BigInt.parse(fee);
  }

  /// Send message to blockchain and receive transaction of send.
  /// Returns PendingTransaction or throw error.
  Future<PendingTransaction> send({
    required SignedMessage signedMessage,
  }) async {
    final encoded = await wallet.send(signedMessage: jsonEncode(signedMessage));
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    await _updateData();
    return PendingTransaction.fromJson(decoded);
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
    if (_isRefreshing || transport.disposed) return;

    try {
      _isRefreshing = true;
      await wallet.refresh();
      await _updateData();
    } finally {
      _isRefreshing = false;
    }
  }

  @override
  String get refreshDescription => 'TonWallet: ${address.address}';

  /// Preload transactions of wallet.
  /// [fromLt] - offset for loading data, string representation of u64
  /// May throw error.
  Future<void> preloadTransactions({required String fromLt}) async {
    await wallet.preloadTransactions(fromLt: fromLt);
    await _updateData();
  }

  /// Handle block of blockchain.
  /// [block] - base64-encoded Block that could be got from [GqlTransport.getBlock]
  /// May throw error.
  Future<void> handleBlock({required String block}) async {
    await wallet.handleBlock(block: block);
    await _updateData();
  }

  /// Find list of wallets of [publicKey] and return them.
  /// [walletTypes] - list of WalletType we accept for searching.
  /// [publicKey] - key of account where wallets must be found.
  /// Return list of ExistingWalletInfo or throw error.
  static Future<List<ExistingWalletInfo>> findExistingWallets({
    required Transport transport,
    required int workchainId,
    required PublicKey publicKey,
    required List<WalletType> walletTypes,
  }) async {
    final lib = createLib();
    final encoded =
        await lib.findExistingWalletsStaticMethodTonWalletDartWrapper(
      publicKey: publicKey.publicKey,
      walletTypes: jsonEncode(walletTypes),
      workchainId: workchainId,
      transport: transport.transportBox,
    );
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return decoded
        .map((e) => ExistingWalletInfo.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Get information of account by its address.
  /// May throw error.
  static Future<ExistingWalletInfo> getExistingWalletInfo({
    required Transport transport,
    required Address address,
  }) async {
    final lib = createLib();
    final encoded =
        await lib.getExistingWalletInfoStaticMethodTonWalletDartWrapper(
      address: address.address,
      transport: transport.transportBox,
    );
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return ExistingWalletInfo.fromJson(decoded);
  }

  /// Get list of custodians of account by address.
  /// Not for multisig wallet custodians contains public key of wallet.
  /// Return list of public keys or throw error.
  static Future<List<PublicKey>> getWalletCustodians({
    required Transport transport,
    required Address address,
  }) async {
    final lib = createLib();
    return (await lib.getCustodiansStaticMethodTonWalletDartWrapper(
      address: address.address,
      transport: transport.transportBox,
    ))
        .map((key) => PublicKey(publicKey: key))
        .toList();
  }

  /// Calls from rust side when message has been sent to blockchain
  void onMessageSent(String payload) {
    final json = jsonDecode(payload) as List<dynamic>;

    final pendingTransactionJson = json.first as Map<String, dynamic>;
    final pendingTransaction =
        PendingTransaction.fromJson(pendingTransactionJson);
    final transactionJson = json.last as Map<String, dynamic>?;
    final transaction =
        transactionJson != null ? Transaction.fromJson(transactionJson) : null;
    _onMessageSentController.add(Tuple2(pendingTransaction, transaction));
  }

  /// Calls from rust side when message has been expired
  void onMessageExpired(String payload) {
    final json = jsonDecode(payload) as Map<String, dynamic>;
    final pendingTransaction = PendingTransaction.fromJson(json);
    _onMessageExpiredController.add(pendingTransaction);
  }

  /// Calls from rust side when state of wallet has been changed
  void onStateChanged(String payload) {
    final json = jsonDecode(payload) as Map<String, dynamic>;
    final contractState = ContractState.fromJson(json);
    _onStateChangedController.add(contractState);

    /// For some strange reason, rust calls this method before creation completes
    if (!_isInitialized) return;
    _updateData();
  }

  /// Calls from rust side when transactions of wallet has been found
  void onTransactionsFound(String payload) {
    final json = jsonDecode(payload) as List<dynamic>;

    final transactionsJson = json.first as List<dynamic>;
    final transactions = transactionsJson
        .cast<Map<String, dynamic>>()
        .map(
          (e) => TransactionWithData<TransactionAdditionalInfo?>.fromJson(
            e,
            (json) => json != null
                ? TransactionAdditionalInfo.fromJson(
                    json as Map<String, dynamic>,
                  )
                : null,
          ),
        )
        .toList();
    final batchInfoJson = json.last as Map<String, dynamic>;
    final batchInfo = TransactionsBatchInfo.fromJson(batchInfoJson);
    _onTransactionsFoundController.add(Tuple2(transactions, batchInfo));
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
    _pendingTransactions = await getPendingTransactions();
    if (avoidCall) return;
    _pollingMethod = await getPollingMethod();
    if (avoidCall) return;
    _unconfirmedTransactions = await getUnconfirmedTransactions();
    if (avoidCall) return;
    _custodians = await getCustodians();

    _fieldsUpdateController.add(null);
  }

  @override
  void dispose() {
    wallet.innerWallet.dispose();
    _onMessageSentController.close();
    _onMessageExpiredController.close();
    _onStateChangedController.close();
    _onTransactionsFoundController.close();
    super.dispose();
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable(); // auto-generated reflectable file
    return reflector.reflect(this);
  }
}

void main() {}
