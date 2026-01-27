import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_utils.dart';

class MockGenericContractDartWrapper extends Mock
    implements GenericContractDartWrapper {}

void main() {
  group('GenericContract', () {
    test('refresh returns early when disposed', () async {
      // Arrange
      final transport = TestTransport();
      final contract = MockGenericContractDartWrapper();
      final genericContract = GenericContract.test(
        transport: transport,
        contract: contract,
        isDisposed: true,
      );

      // Act
      await genericContract.refresh();

      // Assert
      verifyNever(() => contract.refresh());
    });

    test('onStateChanged emits and skips update before init', () async {
      // Arrange
      final transport = TestTransport();
      final contract = MockGenericContractDartWrapper();
      final genericContract = GenericContract.test(
        transport: transport,
        contract: contract,
        isInitialized: false,
      );

      final payload = jsonEncode({
        'balance': '0',
        'genTimings': {'genLt': '0', 'genUtime': 0},
        'lastTransactionId': null,
        'isDeployed': true,
        'codeHash': null,
      });

      final expectation = expectLater(
        genericContract.onStateChangedStream,
        emits(predicate<ContractState>((state) => state.isDeployed == true)),
      );

      // Act
      genericContract.onStateChanged(payload);

      // Assert
      await expectation;
      verifyNever(() => contract.contractState());
      verifyNever(() => contract.pendingTransactions());
      verifyNever(() => contract.pollingMethod());
    });
  });
}
