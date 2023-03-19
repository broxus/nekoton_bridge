import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Implementation of jrpc transport
class GqlTransport extends Transport {
  final GqlConnection gqlConnection;
  late GqlTransportImpl transport;

  GqlTransport._(this.gqlConnection);

  static Future<GqlTransport> create({
    required GqlConnection gqlConnection,
  }) async {
    final instance = GqlTransport._(gqlConnection);

    final lib = createLib();
    instance.transport = await lib.newStaticMethodGqlTransportImpl(
      gqlConnection: gqlConnection.connection,
    );

    return instance;
  }

  @override
  void dispose() {
    transport.innerTransport.dispose();
    gqlConnection.dispose();
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
    );
    return AccountsList.fromJson(jsonDecode(res));
  }

  @override
  Future<RawContractState> getContractState(String address) async {
    final res = await transport.getContractState(address: address);
    return RawContractState.fromJson(jsonDecode(res));
  }

  @override
  Future<FullContractState?> getFullContractState(String address) async {
    final res = await transport.getFullContractState(address: address);
    return FullContractState.fromJson(jsonDecode(res));
  }

  @override
  Future<int?> getSignatureId() {
    return transport.getSignatureId();
  }

  @override
  Future<Transaction?> getTransaction(String hash) async {
    final res = await transport.getTransaction(hash: hash);
    if (res == null) return null;
    return Transaction.fromJson(jsonDecode(res));
  }

  @override
  Future<TransactionsList> getTransactions({
    required String address,
    required int count,
    int? fromLt,
  }) async {
    final res = await transport.getTransactions(
      address: address,
      count: count,
      fromLt: fromLt,
    );
    return TransactionsList.fromJson(jsonDecode(res));
  }

  @override
  String get group => gqlConnection.group;

  @override
  String get name => gqlConnection.name;

  @override
  int get networkId => gqlConnection.networkId;

  @override
  TransportType get type => gqlConnection.type;
}
