import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBridge extends Mock implements NekotonBridge {}

class MockTransport extends Mock implements Transport {
  @override
  use<T>(Future<T> Function() fn) => fn();
}

void main() {
  late MockBridge bridge;
  late MockTransport transport;
  late ArcTransportBoxTrait box;

  setUp(() {
    bridge = MockBridge();
    transport = MockTransport();
    box = ArcTransportBoxTrait.fromRaw(0, 0, bridge);
  });

  group('Mock nekoton bridge', () {
    test('mock bridge for creating lib', () {
      mockWrapper(bridge);

      expect(identical(bridge, createLib()), isTrue);
    });

    test('Call method via mocked bridge', () async {
      const address = Address(address: 'address');
      const key = PublicKey(publicKey: 'key');
      registerFallbackValue(box);

      mockWrapper(bridge);
      when(() => transport.transportBox).thenReturn(box);
      when(
        () => bridge.getCustodiansStaticMethodTonWalletDartWrapper(
          address: any(named: 'address'),
          transport: any(named: 'transport'),
        ),
      ).thenAnswer((_) => Future.value([key.publicKey]));

      final custodians = await TonWallet.getWalletCustodians(
        transport: transport,
        address: address,
      );

      expect(custodians, [key]);
    });
  });
}
