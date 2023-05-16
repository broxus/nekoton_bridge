import 'dart:async';
import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/rust_to_dart/reflector.dart';
import 'package:reflectable/mirrors.dart';
import 'package:tuple/tuple.dart';

import 'token_wallet.reflectable.dart';

/// Implementation of nekoton's TonWallet.
///
/// If you need watch wallet changes, you can subscribe to [fieldUpdatesStream]
/// and be ready if any suitable data changes, but this won't notify about external
/// events emitted through [onMessageSentStream], [onMessageExpiredStream],
/// or [onTransactionsFoundStream].
/// [onStateChangedStream] changes internal state, so it will lead updating data.
@reflector
class TokenWallet extends RustToDartMirrorInterface {
  late TokenWalletDartWrapper wallet;
  final Transport transport;

  /// Flag that display [onStateChanged] that [wallet] was initialized.
  bool _isInitialized = false;

  /// Controllers that contains data that emits from rust.
  final _onBalanceChangedController = StreamController<Fixed>.broadcast();
  final _onTransactionsFoundController = StreamController<
      Tuple2<List<TransactionWithData<TokenWalletTransaction?>>,
          TransactionsBatchInfo>>.broadcast();

  /// Description information about wallet that could be changed and updated
  /// during [_updateData]. It means, that fields could be changed after any
  /// event that can change internal state of wallet.
  late ContractState _contractState;
  late Fixed balance;

  /// Triggers subscribers when [_updateData] completes
  final _fieldsUpdateController = StreamController<void>.broadcast();

  /// Description information about wallet that do not change
  late final String address;
  late final String owner;
  late final Symbol symbol;
  late final TokenWalletVersion version;

  TokenWallet._(this.transport);

  /// Create TokenWallet by subscribing to its instance.
  /// [owner] - address of account that is owner of wallet
  /// [rootTokenContract] - address of contract in blockchain
  static Future<TokenWallet> subscribe({
    required Transport transport,
    required String owner,
    required String rootTokenContract,
  }) async {
    final instance = TokenWallet._(transport);

    final lib = createLib();
    instance.wallet = await lib.subscribeStaticMethodTokenWalletDartWrapper(
      instanceHash: instance.instanceHash,
      transport: transport.transportBox,
      rootTokenContract: rootTokenContract,
      owner: owner,
    );

    await instance._initInstance();

    return instance;
  }

  /// If any error occurs during first initialization of wallet, it will dispose
  /// wallet and rethrow error;
  Future<void> _initInstance() async {
    try {
      address = await _getAddress();
      owner = await _getOwner();
      symbol = await _getSymbol();
      version = await _getVersion();

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
  Stream<Fixed> get onBalanceChangedStream =>
      _onBalanceChangedController.stream;

  /// Stream that emits data when transactions of wallet founds
  Stream<
      Tuple2<List<TransactionWithData<TokenWalletTransaction?>>,
          TransactionsBatchInfo>> get onTransactionsFoundStream =>
      _onTransactionsFoundController.stream;

  /// Get address of owner of wallet.
  Future<String> _getOwner() => wallet.owner();

  /// Get address of wallet.
  Future<String> _getAddress() => wallet.address();

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

  /// Prepare transferring tokens from this wallet to other.
  /// [destination] - address of account that should receive token
  /// [amount] - amount of tokens that should be transferred
  /// [notifyReceiver] - if receiver should be notifier by blockchain
  /// [payload] - payload of transfer aka comment
  /// [attachedAmount] - representation of rust u64, default 400000000.
  ///   How many native tokens should be attached to transfer.
  /// Returns InternalMessage or throw error.
  Future<InternalMessage> prepareTransfer({
    required String destination,
    required Fixed amount,
    bool notifyReceiver = false,
    Fixed? attachedAmount,
    String? payload,
  }) async {
    final encoded = await wallet.prepareTransfer(
      destination: destination,
      amount: amount.toString(),
      notifyReceiver: notifyReceiver,
      attachedAmount: attachedAmount?.toString(),
      payload: payload,
    );
    final decoded = jsonDecode(encoded) as Map<String, dynamic>;
    _updateData();
    return InternalMessage.fromJson(decoded);
  }

  /// Refresh wallet and update its data.
  /// May throw error.
  Future<void> refresh() async {
    await wallet.refresh();
    _updateData();
  }

  /// Preload transactions of wallet.
  /// [fromLt] - offset for loading data, string representation of u64
  /// May throw error.
  Future<void> preloadTransactions({required String fromLt}) async {
    await wallet.preloadTransactions(fromLt: fromLt);
    _updateData();
  }

  /// Handle block of blockchain.
  /// [block] - base64-encoded Block that could be got from [GqlTransport.getBlock]
  /// May throw error.
  Future<void> handleBlock({required String block}) async {
    await wallet.handleBlock(block: block);
    _updateData();
  }

  /// Get details about token wallet by address of wallet
  /// [tokenWalletAddress] - address of wallet
  /// 0: TokenWalletDetails
  /// 1: RootTokenContractDetails
  /// or throw error
  static Future<Tuple2<TokenWalletDetails, RootTokenContractDetails>>
      getTokenWalletDetails({
    required Transport transport,
    required String tokenWalletAddress,
  }) async {
    final lib = createLib();
    final encoded =
        await lib.getTokenWalletDetailsStaticMethodTokenWalletDartWrapper(
      address: tokenWalletAddress,
      transport: transport.transportBox,
    );
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return Tuple2(
      TokenWalletDetails.fromJson(decoded.first as Map<String, dynamic>),
      RootTokenContractDetails.fromJson(decoded.last as Map<String, dynamic>),
    );
  }

  /// Get details about root contract by address of TokenWallet
  /// 0: Address of root contract
  /// 1: RootTokenContractDetails of root contract
  /// or throw error.
  static Future<Tuple2<String, RootTokenContractDetails>>
      getTokenRootDetailsFromTokenWallet({
    required Transport transport,
    required String tokenWalletAddress,
  }) async {
    final lib = createLib();
    final encoded = await lib
        .getTokenRootDetailsFromTokenWalletStaticMethodTokenWalletDartWrapper(
      tokenWalletAddress: tokenWalletAddress,
      transport: transport.transportBox,
    );
    final decoded = jsonDecode(encoded) as List<dynamic>;
    return Tuple2(
      decoded.first as String,
      RootTokenContractDetails.fromJson(decoded.last as Map<String, dynamic>),
    );
  }

  /// Calls from rust side when balance of wallet has been changed
  void onBalanceChanged(String balance) {
    _onBalanceChangedController.add(Fixed.parse(balance));

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
    _onTransactionsFoundController.add(Tuple2(transactions, batchInfo));
  }

  /// Method that updates all internal data and notify subscribers about it.
  Future<void> _updateData() async {
    _contractState = await getContractState();
    balance = Fixed.parse(await _getBalance());

    _fieldsUpdateController.add(null);
  }

  @override
  void dispose() {
    wallet.innerWallet.dispose();
    _onBalanceChangedController.close();
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
