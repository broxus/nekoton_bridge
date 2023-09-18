import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Implementation of proto transport
class ProtoTransport extends Transport {
  final ProtoConnection protoConnection;
  late ProtoTransportImpl transport;

  ProtoTransport._(this.protoConnection);

  static Future<ProtoTransport> create({
    required ProtoConnection protoConnection,
  }) async {
    final instance = ProtoTransport._(protoConnection);

    final lib = createLib();
    instance.transport = await lib.newStaticMethodProtoTransportImpl(
      protoConnection: protoConnection.connection,
    );

    instance.networkId = await instance.getNetworkId();

    return instance;
  }

  @override
  void dispose() {
    transport.innerTransport.dispose();
    protoConnection.dispose();
  }

  @override
  Future<AccountsList> getAccountsByCodeHash({
    required String codeHash,
    required int limit,
    String? continuation,
  }) async {
    final res = await transport.getAccountsByCodeHash(
      codeHash: codeHash,
      limit: limit,
      continuation: continuation,
    );
    return AccountsList.fromJson(jsonDecode(res));
  }

  @override
  Future<RawContractState> getContractState(Address address) async {
    final res = await transport.getContractState(address: address.address);
    return RawContractState.fromJson(jsonDecode(res));
  }

  @override
  Future<FullContractState?> getFullContractState(Address address) async {
    final res = await transport.getFullContractState(address: address.address);
    if (res == null) return null;

    return FullContractState.fromJson(jsonDecode(res));
  }

  @override
  Future<int?> getSignatureId() {
    return transport.getSignatureId();
  }

  @override
  Future<int> getNetworkId() => transport.getNetworkId();

  @override
  Future<Transaction?> getTransaction(String hash) async {
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
    final res = await transport.getTransactions(
      address: address.address,
      count: count,
      fromLt: fromLt,
    );
    return TransactionsList.fromJson(jsonDecode(res));
  }

  @override
  Future<RawTransaction?> getDstTransaction(String messageHash) async {
    final res = await transport.getDstTransaction(messageHash: messageHash);

    return res == null ? null : RawTransaction.fromJson(jsonDecode(res));
  }

  @override
  Future<(Map<String, dynamic>?, FullContractState?)> getContractFields({
    required Address address,
    required String contractAbi,
    FullContractState? cachedState,
  }) async {
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
    final config = await transport.getBlockchainConfig(force: force);

    return BlockchainConfig.fromJson(jsonDecode(config));
  }

  @override
  String get group => protoConnection.group;

  @override
  String get name => protoConnection.name;

  @override
  TransportType get type => protoConnection.type;

  @override
  ArcTransportBoxTrait get transportBox => transport.innerTransport;

  @override
  String get connectionParamsHash =>
      getHash('proto:${protoConnection.settings.endpoint}');
}
