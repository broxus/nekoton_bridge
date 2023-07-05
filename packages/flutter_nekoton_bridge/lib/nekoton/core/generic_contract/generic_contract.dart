import 'dart:async';
import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';
import 'package:tuple/tuple.dart';

import 'generic_contract.reflectable.dart';

/// Implementation of nekoton's GenericContract.
///
/// If you need watch contract changes, you can subscribe to [fieldUpdatesStream]
/// and be ready if any suitable data changes, but this won't notify about external
/// events emitted through [onMessageSentStream], [onMessageExpiredStream],
/// or [onTransactionsFoundStream].
/// [onStateChangedStream] changes internal state, so it will lead updating data.
@reflector
class GenericContract extends RustToDartMirrorInterface {
  late GenericContractDartWrapper contract;
  final Transport transport;

  /// Flag that display [onStateChanged] that [contract] was initialized.
  bool _isInitialized = false;

  /// Controllers that contains data that emits from rust.
  final _onMessageSentController =
      StreamController<Tuple2<PendingTransaction, Transaction?>>.broadcast();
  final _onMessageExpiredController =
      StreamController<PendingTransaction>.broadcast();
  final _onStateChangedController = StreamController<ContractState>.broadcast();
  final _onTransactionsFoundController = StreamController<
      Tuple2<List<Transaction>, TransactionsBatchInfo>>.broadcast();

  /// Description information about contract that could be changed and updated
  /// during [_updateData]. It means, that fields could be changed after any
  /// event that can change internal state of contract.
  late ContractState _contractState;
  late List<PendingTransaction> _pendingTransactions;
  late PollingMethod _pollingMethod;

  /// Triggers subscribers when [_updateData] completes
  final _fieldsUpdateController = StreamController<void>.broadcast();

  /// Description information about contract that do not change
  late final Address address;

  GenericContract._(this.transport);

  /// Create GenericContract by subscribing to its instance.
  /// [address] - address of contract
  /// [preloadTransactions] - if transactions must be loaded during creation
  static Future<GenericContract> subscribe({
    required Transport transport,
    required Address address,
    required bool preloadTransactions,
  }) async {
    final instance = GenericContract._(transport);

    final lib = createLib();
    instance.contract =
        await lib.subscribeStaticMethodGenericContractDartWrapper(
      instanceHash: instance.instanceHash,
      transport: transport.transportBox,
      address: address.address,
      preloadTransactions: preloadTransactions,
    );

    await instance._initInstance();

    return instance;
  }

  /// If any error occurs during first initialization of contract, it will dispose
  /// contract and rethrow error;
  Future<void> _initInstance() async {
    try {
      address = await _getAddress();

      await _updateData();
      _isInitialized = true;
    } catch (_) {
      dispose();
      rethrow;
    }
  }

  ContractState get contractState => _contractState;

  List<PendingTransaction> get pendingTransactions => _pendingTransactions;

  PollingMethod get pollingMethod => _pollingMethod;

  /// Stream that allows subscribe to any changes of contract data.
  Stream<void> get fieldUpdatesStream => _fieldsUpdateController.stream;

  /// Stream that emits data when blockchain founds new transaction
  ///
  /// To update data of this stream, contract must be refreshed via [refresh].
  Stream<Tuple2<PendingTransaction, Transaction?>> get onMessageSentStream =>
      _onMessageSentController.stream;

  /// Stream that emits data when expired message come to contract
  ///
  /// To update data of this stream, contract must be refreshed via [refresh].
  Stream<PendingTransaction> get onMessageExpiredStream =>
      _onMessageExpiredController.stream;

  /// Stream that emits data when state of contract changes
  ///
  /// To update data of this stream, contract must be refreshed via [refresh].
  Stream<ContractState> get onStateChangedStream =>
      _onStateChangedController.stream;

  /// Stream that emits data when transactions of contract founds
  ///
  /// To update data of this stream, contract must be refreshed via [refresh].
  Stream<Tuple2<List<Transaction>, TransactionsBatchInfo>>
      get onTransactionsFoundStream => _onTransactionsFoundController.stream;

  /// Get address of contract.
  Future<Address> _getAddress() async =>
      Address(address: await contract.address());

  /// Get ContractState or throw error.
  Future<ContractState> getContractState() async {
    final encoded = await contract.contractState();
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return ContractState.fromJson(decoded);
  }

  /// Get list of PendingTransaction or throw error.
  Future<List<PendingTransaction>> getPendingTransactions() async {
    final encoded = await contract.pendingTransactions();
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return decoded
        .map((e) => PendingTransaction.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  /// Get PollingMethod of contract.
  Future<PollingMethod> getPollingMethod() => contract.pollingMethod();

  /// Execute transaction locally and return its instance.
  /// [options] - additional info for execution
  /// Return  Transaction or throw error.
  Future<Transaction> executeTransactionLocally({
    required SignedMessage signedMessage,
    required TransactionExecutionOptions options,
  }) async {
    final encoded = await contract.executeTransactionLocally(
      signedMessage: jsonEncode(signedMessage),
      options: options,
    );
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    return Transaction.fromJson(decoded);
  }

  /// Calculate fees for transaction.
  /// Returns fees as string representation of u128 or throw error.
  Future<String> estimateFees({
    required SignedMessage signedMessage,
  }) =>
      contract.estimateFees(signedMessage: jsonEncode(signedMessage));

  /// Send message to blockchain and receive transaction of send.
  /// Returns PendingTransaction or throw error.
  Future<PendingTransaction> send({
    required SignedMessage signedMessage,
  }) async {
    final encoded =
        await contract.send(signedMessage: jsonEncode(signedMessage));
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    await _updateData();
    return PendingTransaction.fromJson(decoded);
  }

  /// Helper flag that allows users avoid multiple refreshes if network is slow
  /// and their polling method do not support correct updating.
  bool _isRefreshing = false;

  /// Refresh contract and update its data.
  ///
  /// This is a polling method, that sends requests to blockchain over network,
  /// so it's a good practice to call this method with delay at least 10seconds.
  ///
  /// May throw error.
  Future<void> refresh() async {
    if (_isRefreshing) return;

    try {
      _isRefreshing = true;
      await contract.refresh();
      await _updateData();
    } finally {
      _isRefreshing = false;
    }
  }

  /// Preload transactions of contract.
  /// [fromLt] - offset for loading data, string representation of u64
  /// May throw error.
  Future<void> preloadTransactions({required String fromLt}) async {
    await contract.preloadTransactions(fromLt: fromLt);
    await _updateData();
  }

  /// Handle block of blockchain.
  /// [block] - base64-encoded Block that could be got from [GqlTransport.getBlock]
  /// May throw error.
  Future<void> handleBlock({required String block}) async {
    if (avoidCall) return;

    await contract.handleBlock(block: block);
    await _updateData();
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

  /// Calls from rust side when state of contract has been changed
  void onStateChanged(String payload) {
    final json = jsonDecode(payload) as Map<String, dynamic>;
    final contractState = ContractState.fromJson(json);
    _onStateChangedController.add(contractState);

    /// For some strange reason, rust calls this method before creation completes
    if (!_isInitialized) return;
    _updateData();
  }

  /// Calls from rust side when transactions of contract has been found
  void onTransactionsFound(String payload) {
    final json = jsonDecode(payload) as List<dynamic>;

    final transactionsJson = json.first as List<dynamic>;
    final transactions = transactionsJson
        .cast<Map<String, dynamic>>()
        .map((e) => Transaction.fromJson(e))
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
    if (avoidCall) return;
    _contractState = await getContractState();
    if (avoidCall) return;
    _pendingTransactions = await getPendingTransactions();
    if (avoidCall) return;
    _pollingMethod = await getPollingMethod();

    _fieldsUpdateController.add(null);
  }

  @override
  void dispose() {
    contract.innerContract.dispose();
    _onTransactionsFoundController.close();
    _onStateChangedController.close();
    _onMessageSentController.close();
    _onMessageExpiredController.close();
    super.dispose();
  }

  @override
  InstanceMirror initializeMirror() {
    initializeReflectable(); // auto-generated reflectable file
    return reflector.reflect(this);
  }
}

void main() {}
