import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Implementation of jrpc transport
class GqlTransport extends Transport {
  final GqlConnection gqlConnection;
  late GqlTransportImpl transport;

  GqlTransport._(this.gqlConnection);

  @override
  bool get disposed => _disposed;

  bool _disposed = false;

  static Future<GqlTransport> create({
    required GqlConnection gqlConnection,
  }) async {
    final instance = GqlTransport._(gqlConnection);

    final lib = createLib();
    instance.transport = await lib.newStaticMethodGqlTransportImpl(
      gqlConnection: gqlConnection.connection,
    );

    instance.networkId = await instance.getNetworkId();

    instance.connectionParamsHash =
        getHash('gql:${gqlConnection.settings.endpoints.join(',')}');

    return instance;
  }

  @override
  void dispose() {
    transport.innerTransport.dispose();
    gqlConnection.dispose();
    _disposed = true;
  }

  @override
  Future<AccountsList> getAccountsByCodeHash({
    required String codeHash,
    required int limit,
    String? continuation,
  }) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    final res = await transport.getAccountsByCodeHash(
      codeHash: codeHash,
      limit: limit,
      continuation: continuation,
    );
    return AccountsList.fromJson(jsonDecode(res));
  }

  @override
  Future<RawContractState> getContractState(Address address) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    final res = await transport.getContractState(address: address.address);
    return RawContractState.fromJson(jsonDecode(res));
  }

  @override
  Future<FullContractState?> getFullContractState(Address address) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    final res = await transport.getFullContractState(address: address.address);
    if (res == null) return null;

    return FullContractState.fromJson(jsonDecode(res));
  }

  @override
  Future<(Map<String, dynamic>?, FullContractState?)> getContractFields({
    required Address address,
    required String contractAbi,
    FullContractState? cachedState,
  }) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    final state = cachedState ?? await getFullContractState(address);
    if (state == null) {
      return (null, null);
    }

    return (
      await unpackContractFields(
        contractAbi: contractAbi,
        boc: state.boc,
        allowPartial: true,
      ),
      state,
    );
  }

  @override
  Future<int?> getSignatureId() {
    if (_disposed) throw TransportCallAfterDisposeError();

    return transport.getSignatureId();
  }

  @override
  Future<int> getNetworkId() {
    if (_disposed) throw TransportCallAfterDisposeError();

    return transport.getNetworkId();
  }

  @override
  Future<Transaction?> getTransaction(String hash) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    final res = await transport.getTransaction(hash: hash);
    if (res == null) return null;
    return Transaction.fromJson(jsonDecode(res));
  }

  @override
  Future<TransactionsList> getTransactions({
    required Address address,
    required int count,
    String? fromLt,
  }) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    final res = await transport.getTransactions(
      address: address.address,
      count: count,
      fromLt: fromLt,
    );
    return TransactionsList.fromJson(jsonDecode(res));
  }

  @override
  Future<RawTransaction?> getDstTransaction(String messageHash) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    final res = await transport.getDstTransaction(messageHash: messageHash);

    return res == null ? null : RawTransaction.fromJson(jsonDecode(res));
  }

  /// Get latest block by address and return it or throw error
  Future<LatestBlock> getLatestBlock({required Address address}) {
    if (_disposed) throw TransportCallAfterDisposeError();

    return transport.getLatestBlock(address: address.address);
  }

  /// Get transport block by id and return base64 encoded block or throw error
  Future<String> getBlock({required String id}) {
    if (_disposed) throw TransportCallAfterDisposeError();

    return transport.getBlock(id: id);
  }

  /// Wait until next block will come to blockchain and return its id or throw error
  Future<String> waitForNextBlock({
    required String currentBlockId,
    required Address address,
    required Duration timeout,
  }) {
    if (_disposed) throw TransportCallAfterDisposeError();

    return transport.waitForNextBlock(
      currentBlockId: currentBlockId,
      address: address.address,
      timeout: timeout.inMilliseconds,
    );
  }

  @override
  Future<BlockchainConfig> getBlockchainConfig({bool force = true}) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    final config = await transport.getBlockchainConfig(force: force);

    return BlockchainConfig.fromJson(jsonDecode(config));
  }

  @override
  String get group => gqlConnection.group;

  @override
  String get name => gqlConnection.name;

  @override
  TransportType get type => gqlConnection.type;

  @override
  ArcTransportBoxTrait get transportBox => transport.innerTransport;
}
