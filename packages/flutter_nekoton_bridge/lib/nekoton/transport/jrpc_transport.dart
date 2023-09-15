import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Implementation of jrpc transport
class JrpcTransport extends Transport {
  final JrpcConnection jrpcConnection;
  late JrpcTransportImpl transport;

  JrpcTransport._(this.jrpcConnection);

  static Future<JrpcTransport> create({
    required JrpcConnection jrpcConnection,
  }) async {
    final instance = JrpcTransport._(jrpcConnection);

    final lib = createLib();
    instance.transport = await lib.newStaticMethodJrpcTransportImpl(
      jrpcConnection: jrpcConnection.connection,
    );

    instance.networkId = await instance.getNetworkId();

    return instance;
  }

  @override
  void dispose() {
    transport.innerTransport.dispose();
    jrpcConnection.dispose();
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
  String get group => jrpcConnection.group;

  @override
  String get name => jrpcConnection.name;

  @override
  TransportType get type => jrpcConnection.type;

  @override
  ArcTransportBoxTrait get transportBox => transport.innerTransport;
}
