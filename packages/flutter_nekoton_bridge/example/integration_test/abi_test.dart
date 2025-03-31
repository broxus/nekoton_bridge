import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'timeout_utils.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const abi =
      '{"ABI version":2,"version":"2.2","header":["pubkey","time","expire"],"functions":[{"name":"onNftTransfer","inputs":[{"name":"id","type":"uint256"},{"name":"oldOwner","type":"address"},{"name":"newOwner","type":"address"},{"name":"oldManager","type":"address"},{"name":"newManager","type":"address"},{"name":"collection","type":"address"},{"name":"gasReceiver","type":"address"},{"name":"payload","type":"cell"}],"outputs":[]}],"data":[],"events":[],"fields":[]}';
  const json =
      '{"id":{"lt":"53524925000013","hash":"8d4defdcf9a86fb2f26ee0dc43aed3b763d5af0a80c31b0ceb3137d5682c97b1"},"prevTransactionId":{"lt":"53524902000013","hash":"649425ce41032ff6a7a96fb79b714c734820a33f6745c57e92a3e5e506daedbd"},"createdAt":1726671599,"aborted":true,"exitCode":60,"origStatus":"active","endStatus":"active","totalFees":"1568073","inMessage":{"hash":"0fab62d974a7c6197caf56380d2e60f99ec8249098a112baa0752051bc4ccbd6","src":"0:5d81e08f05d2fc62d74778e300bb78296c548bc4fabf670e94b6e57946fd6fe5","dst":"0:deaa615aad3828255ce6c4c5495a0590740f2ecdc187cfb434da8e4552cf8f3f","value":"100000000","bounce":false,"bounced":false,"body":"te6ccgECBwEAAQQAAYt8aOG5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAHz6upLAkF/5DX7GPMUuT00XeFko8I7OQv36HfZLRSvjQAQFDgBvVTCtVpwUEq5zYmKkrQLIOgeXZuDD59oabUciqWfHn8AIBQ4Ab1UwrVacFBKuc2JipK0CyDoHl2bgw+faGm1HIqlnx5/ADAUOAG9VMK1WnBQSrnNiYqStAsg6B5dm4MPn2hptRyKpZ8efwBAFDgAINVCLwfujEyZHtv72L2+Nnxw/ZUXm2kEONh+mfMyPTMAUBQ4AfPq6ksCQX/kNfsY8xS5PTRd4WSjwjs5C/fod9ktFK+NAGAAA=","bodyHash":"400e7c804772a9b79ec50b6e9bccf9c50899dad55fb92b72ca8aa499ec84b18e"},"outMessages":[]}';

  const raw = Address(
    address:
        '0:959e8440732a41bdf5612a1519338bdf270969a95d02415019acbbeeb6b1249a',
  );
  const withBounce = Address(
    address: 'EQCVnoRAcypBvfVhKhUZM4vfJwlpqV0CQVAZrLvutrEkmrZO',
  );

  const tokenTransferPayload =
      'te6ccgEBAwEAcAABi3PiIUMAAAAAAAAAAAAAAAA7msoAgA2oWheJTK0CQdURfshdtsp65Pn3prDRiPDuplvCUc4+QAAAAAAAAAAAAAAAAPf0kDABAUOAGyWSMMDEPWpy8q/cfoTQwcWEOvqIIMTRC+a7cRSNUPhIAgAA';
  const jettonTransferPayload =
      'te6ccgEBAQEAVQAApg+KfqUAAAGV62nSEiJxCAFiJ1MpagSULOM+0icmUdbrKy2HFEvrIFFijf2bhsQ7/QAbKNSc4kliLTF9K6JjcGYPuyWYt/+vqzb6CEDodHcrGAIC';

  setUpAll(() async {
    await NekotonBridge.init();
  });

  group('ABI test', () {
    testWidgets('decodeTransaction', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();
      await initRustToDartCaller();

      final decoded = await decodeTransaction(
        transaction: Transaction.fromJson(jsonDecode(json)),
        contractAbi: abi,
      );

      expect(decoded, isNotNull);
      expect(decoded!.method, 'onNftTransfer');
    });

    testWidgets('repackAddress', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();
      await initRustToDartCaller();

      final repackedRaw = repackAddress(raw);
      final repackedWithBounce = repackAddress(withBounce);

      expect(repackedRaw.address, raw.address);
      expect(repackedWithBounce.address, raw.address);
    });

    testWidgets('packAddress', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();
      await initRustToDartCaller();

      final packed = packAddress(raw);

      expect(packed.address, withBounce.address);
    });

    testWidgets('encodeComment', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();
      await initRustToDartCaller();

      final encoded = encodeComment('test comment');

      expect(encoded, isNotNull);
      expect(encoded, isNotEmpty);
    });
  });

  testWidgets('parseKnownPayload', (WidgetTester tester) async {
    await tester.pumpAndSettleWithTimeout();
    await initRustToDartCaller();

    final knownTokenTransactionPayload =
        parseKnownPayload(tokenTransferPayload);
    final knownJettonTransactionPayload =
        parseKnownPayload(jettonTransferPayload);
    final unknownPayload = parseKnownPayload(r'!@#$%^&*()_+invalid_base64');

    expect(unknownPayload, isNull);

    expect(knownTokenTransactionPayload, isNotNull);
    expect(
      knownTokenTransactionPayload!.whenOrNull(
        tokenOutgoingTransfer: (data) => data,
      ),
      isNotNull,
    );
    expect(
      knownTokenTransactionPayload.whenOrNull(
        tokenOutgoingTransfer: (data) => data.tokens,
      ),
      BigInt.parse('1000000000'),
    );

    expect(knownJettonTransactionPayload, isNotNull);
    expect(
      knownJettonTransactionPayload!.whenOrNull(
        jettonOutgoingTransfer: (data) => data,
      ),
      isNotNull,
    );
    expect(
      knownJettonTransactionPayload.whenOrNull(
        jettonOutgoingTransfer: (data) => data.tokens,
      ),
      BigInt.parse('10000'),
    );
  });

  // Moved to integration tests due to the need to call native methods (packAddress, repackAddress)
  group('Address', () {
    const raw1 =
        '0:959e8440732a41bdf5612a1519338bdf270969a95d02415019acbbeeb6b1249a';
    const raw2 =
        '0:2ecbebcec6b163a9eb3e4c8f74d9ac52fd131173071787441d12f210885907f5';
    const bounceable1 = 'EQCVnoRAcypBvfVhKhUZM4vfJwlpqV0CQVAZrLvutrEkmrZO';

    test('hashCode', () {
      expect(
        const Address(address: raw1).hashCode,
        const Address(address: raw1).hashCode,
      );
      expect(
        const Address(address: raw1).hashCode,
        isNot(const Address(address: raw2).hashCode),
      );
      expect(
        const Address(address: raw1).hashCode,
        const Address(address: bounceable1).hashCode,
      );
    });

    test('operator ==', () {
      expect(
        const Address(address: raw1),
        const Address(address: raw1),
      );
      expect(
        const Address(address: raw1),
        isNot(const Address(address: raw2)),
      );
      expect(
        const Address(address: raw1),
        const Address(address: bounceable1),
      );
    });

    test('isValid', () {
      expect(const Address(address: raw1).isValid, isTrue);
      expect(const Address(address: bounceable1).isValid, isTrue);
      expect(const Address(address: 'abcdefg').isValid, isFalse);
    });

    test('isRaw', () {
      expect(const Address(address: raw1).isRaw, isTrue);
      expect(Address(address: raw1.toUpperCase()).isRaw, isTrue);
      expect(const Address(address: bounceable1).isRaw, isFalse);
    });

    test('toRaw', () {
      expect(const Address(address: raw1).toRaw(), raw1);
      expect(const Address(address: bounceable1).toRaw(), raw1);
    });

    test('toBounceable', () {
      expect(const Address(address: raw1).toBounceable(), bounceable1);
      expect(const Address(address: bounceable1).toBounceable(), bounceable1);
    });

    test('workchain', () {
      expect(const Address(address: raw1).workchain, 0);
      expect(const Address(address: bounceable1).workchain, 0);
    });

    test('isZeroState', () {
      expect(const Address(address: raw1).isZeroState, isFalse);
      expect(
        const Address(
          address:
              '-1:0000000000000000000000000000000000000000000000000000000000000000',
        ).isZeroState,
        isTrue,
      );
    });
  });
}
