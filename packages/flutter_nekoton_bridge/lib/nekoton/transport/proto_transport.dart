import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Implementation of proto transport
class ProtoTransport extends Transport {
  final ProtoConnection protoConnection;
  late ProtoTransportImpl transport;

  ProtoTransport._(this.protoConnection);

  @override
  bool get disposed => _disposed;

  bool _disposed = false;

  static Future<ProtoTransport> create({
    required ProtoConnection protoConnection,
  }) async {
    final instance = ProtoTransport._(protoConnection);

    final lib = createLib();
    instance.transport = await lib.newStaticMethodProtoTransportImpl(
      protoConnection: protoConnection.connection,
    );

    instance.networkId = await instance.getNetworkId();

    instance.connectionParamsHash =
        getHash('proto:${protoConnection.settings.endpoint}');

    return instance;
  }

  @override
  void dispose() {
    transport.innerTransport.dispose();
    protoConnection.dispose();
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
  Future<BlockchainConfig> getBlockchainConfig({bool force = true}) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    final config = await transport.getBlockchainConfig(force: force);

    return BlockchainConfig.fromJson(jsonDecode(config));
  }

  @override
  Future<List<TxTreeSimulationErrorItem>> simulateTransactionTree({
    required SignedMessage signedMessage,
    required Int32List ignoredComputePhaseCodes,
    required Int32List ignoredActionPhaseCodes,
  }) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    final encoded = await transport.simulateTransactionTree(
        signedMessage: jsonEncode(signedMessage),
        ignoredComputePhaseCodes: ignoredComputePhaseCodes,
        ignoredActionPhaseCodes: ignoredActionPhaseCodes);
    final decoded = jsonDecode(encoded) as List<dynamic>;

    return decoded
        .map((e) =>
            TxTreeSimulationErrorItem.fromJson(e as Map<String, dynamic>))
        .toList();
  }

  @override
  String get group => protoConnection.group;

  @override
  String get name => protoConnection.name;

  @override
  TransportType get type => protoConnection.type;

  @override
  ArcTransportBoxTrait get transportBox => transport.innerTransport;
}
