import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart' as lib;

/// Implementation of jrpc transport
class JrpcTransport extends Transport {
  final JrpcConnection jrpcConnection;
  late lib.JrpcTransportImpl transport;

  JrpcTransport._(this.jrpcConnection);

  @override
  bool get disposed => _disposed;

  bool _disposed = false;

  static Future<JrpcTransport> create({
    required JrpcConnection jrpcConnection,
  }) async {
    final instance = JrpcTransport._(jrpcConnection);

    instance.transport = lib.JrpcTransportImpl(
      jrpcConnection: jrpcConnection.connection,
    );

    instance.networkId = await instance.getNetworkId();

    instance.connectionParamsHash =
        getHash('jrpc:${jrpcConnection.settings.endpoint}');

    return instance;
  }

  @override
  Future<void> dispose() => mutex.protectWrite(() async {
        transport.innerTransport.dispose();
        jrpcConnection.dispose();
        _disposed = true;
      });

  @override
  Future<AccountsList> getAccountsByCodeHash({
    required String codeHash,
    required int limit,
    String? continuation,
  }) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() async {
      final res = await transport.getAccountsByCodeHash(
        codeHash: codeHash,
        limit: limit,
        continuation: continuation,
      );
      return AccountsList.fromJson(jsonDecode(res));
    });
  }

  @override
  Future<RawContractState> getContractState(Address address) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() async {
      final res = await transport.getContractState(address: address.address);
      return RawContractState.fromJson(jsonDecode(res));
    });
  }

  @override
  Future<FullContractState?> getFullContractState(Address address) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() async {
      final res =
          await transport.getFullContractState(address: address.address);
      return res == null ? null : FullContractState.fromJson(jsonDecode(res));
    });
  }

  @override
  Future<int?> getSignatureId() {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() => transport.getSignatureId());
  }

  @override
  Future<int> getNetworkId() {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() => transport.getNetworkId());
  }

  @override
  Future<Transaction?> getTransaction(String hash) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() async {
      final res = await transport.getTransaction(hash: hash);
      return res == null ? null : Transaction.fromJson(jsonDecode(res));
    });
  }

  @override
  Future<TransactionsList> getTransactions({
    required Address address,
    required int count,
    String? fromLt,
  }) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() async {
      final res = await transport.getTransactions(
        address: address.address,
        count: count,
        fromLt: fromLt,
      );
      return TransactionsList.fromJson(jsonDecode(res));
    });
  }

  @override
  Future<RawTransaction?> getDstTransaction(String messageHash) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() async {
      final res = await transport.getDstTransaction(messageHash: messageHash);
      return res == null ? null : RawTransaction.fromJson(jsonDecode(res));
    });
  }

  @override
  Future<(Map<String, dynamic>?, FullContractState?)> getContractFields({
    required Address address,
    required String contractAbi,
    FullContractState? cachedState,
  }) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() async {
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
    });
  }

  @override
  Future<BlockchainConfig> getBlockchainConfig({bool force = true}) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() async {
      final res = await transport.getBlockchainConfig(force: force);
      return BlockchainConfig.fromJson(jsonDecode(res));
    });
  }

  @override
  Future<List<TxTreeSimulationErrorItem>> simulateTransactionTree({
    required SignedMessage signedMessage,
    required Int32List ignoredComputePhaseCodes,
    required Int32List ignoredActionPhaseCodes,
  }) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() async {
      final encoded = await transport.simulateTransactionTree(
          signedMessage: jsonEncode(signedMessage),
          ignoredComputePhaseCodes: ignoredComputePhaseCodes,
          ignoredActionPhaseCodes: ignoredActionPhaseCodes);
      final decoded = jsonDecode(encoded) as List<dynamic>;

      return decoded
          .map((e) =>
              TxTreeSimulationErrorItem.fromJson(e as Map<String, dynamic>))
          .toList();
    });
  }

  @override
  Future<FeeFactors> getFeeFactors({required bool isMasterchain}) async {
    if (_disposed) throw TransportCallAfterDisposeError();

    return mutex.protectRead(() async {
      final res = await transport.getFeeFactors(isMasterchain: isMasterchain);
      return FeeFactors.fromJson(jsonDecode(res));
    });
  }

  @override
  String get group => jrpcConnection.group;

  @override
  String get name => jrpcConnection.name;

  @override
  TransportType get type => jrpcConnection.type;

  @override
  lib.ArcTransportBoxTrait get transportBox => transport.innerTransport;
}
