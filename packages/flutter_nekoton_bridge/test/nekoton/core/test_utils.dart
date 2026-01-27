import 'dart:typed_data';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:mocktail/mocktail.dart';

class FakeArcTransportBoxTrait extends Fake implements ArcTransportBoxTrait {}

class MockStorageDartWrapper extends Mock implements StorageDartWrapper {}

class TestTransport extends Transport {
  TestTransport({this.disposedFlag = false}) {
    networkId = 0;
    connectionParamsHash = 'test-transport';
  }

  bool disposedFlag;

  @override
  bool get disposed => disposedFlag;

  @override
  String get name => 'test-transport';

  @override
  String get group => 'test-group';

  @override
  TransportType get type => TransportType.gql;

  @override
  ArcTransportBoxTrait get transportBox => FakeArcTransportBoxTrait();

  @override
  Future<void> dispose() async {
    disposedFlag = true;
  }

  @override
  Future<RawContractState> getContractState(Address address) {
    throw UnimplementedError();
  }

  @override
  Future<FullContractState?> getFullContractState(Address address) {
    throw UnimplementedError();
  }

  @override
  Future<(Map<String, dynamic>?, FullContractState?)> getContractFields({
    required Address address,
    required String contractAbi,
    FullContractState? cachedState,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<AccountsList> getAccountsByCodeHash({
    required String codeHash,
    required int limit,
    String? continuation,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<TransactionsList> getTransactions({
    required Address address,
    required int count,
    String? fromLt,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<Transaction?> getTransaction(String hash) {
    throw UnimplementedError();
  }

  @override
  Future<RawTransaction?> getDstTransaction(String messageHash) {
    throw UnimplementedError();
  }

  @override
  Future<int?> getSignatureId() {
    throw UnimplementedError();
  }

  @override
  Future<int> getNetworkId() {
    throw UnimplementedError();
  }

  @override
  Future<BlockchainConfig> getBlockchainConfig({bool force = true}) {
    throw UnimplementedError();
  }

  @override
  Future<List<TxTreeSimulationErrorItem>> simulateTransactionTree({
    required SignedMessage signedMessage,
    required Int32List ignoredComputePhaseCodes,
    required Int32List ignoredActionPhaseCodes,
  }) {
    throw UnimplementedError();
  }

  @override
  Future<FeeFactors> getFeeFactors({required bool isMasterchain}) {
    throw UnimplementedError();
  }
}

Storage createInMemoryStorage() {
  final data = <String, String>{};
  final storageWrapper = MockStorageDartWrapper();

  return Storage.test(
    get: (key) async => data[key],
    set: ({required key, required value}) async {
      data[key] = value;
    },
    setUnchecked: ({required key, required value}) {
      data[key] = value;
    },
    remove: (key) async {
      data.remove(key);
    },
    removeUnchecked: (key) {
      data.remove(key);
    },
    storage: storageWrapper,
  );
}
