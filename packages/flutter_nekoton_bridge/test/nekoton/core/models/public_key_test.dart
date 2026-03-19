import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class MockBridge extends Mock implements NekotonBridgeApi {}

void main() {
  const a1 = 'ruFndvUORSTJUudb';
  const a2 = 'UunWqRiqmFPeeuIk';
  final bridge = MockBridge();

  setUpAll(() {
    NekotonBridge.initMock(api: bridge);
  });

  setUp(() {
    reset(bridge);
  });

  group('PublicKey', () {
    test('hashCode', () {
      expect(
        const PublicKey(publicKey: a1).hashCode,
        const PublicKey(publicKey: a1).hashCode,
      );
      expect(
        const PublicKey(publicKey: a1).hashCode,
        isNot(const PublicKey(publicKey: a2).hashCode),
      );
    });

    test('operator ==', () {
      expect(const PublicKey(publicKey: a1), const PublicKey(publicKey: a1));
      expect(
        const PublicKey(publicKey: a1),
        isNot(const PublicKey(publicKey: a2)),
      );
    });

    test('fromJson creates public key', () {
      expect(
        PublicKey.fromJson('a' * 64),
        const PublicKey(
          publicKey:
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ),
      );
    });

    test('isValid checks length, hex and bridge validation', () {
      // Arrange
      when(
        () => bridge.crateApiMergedNtCheckPublicKey(
          publicKey:
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ),
      ).thenReturn(true);

      // Assert
      expect(
        const PublicKey(
          publicKey:
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ).isValid,
        isTrue,
      );
      expect(const PublicKey(publicKey: 'short').isValid, isFalse);
      expect(PublicKey(publicKey: 'g' * 64).isValid, isFalse);
    });

    test('toJson returns raw public key', () {
      expect(
        const PublicKey(
          publicKey:
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ).toJson(),
        'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      );
    });

    test('toString returns raw public key', () {
      expect(
        const PublicKey(
          publicKey:
              'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
        ).toString(),
        'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa',
      );
    });

    test('compareTo sorts by public key string', () {
      final lower = PublicKey(publicKey: 'a' * 64);
      final higher = PublicKey(publicKey: 'b' * 64);

      expect(lower.compareTo(higher), lessThan(0));
    });

    test('toEllipseString returns shortened form', () {
      final key = PublicKey(publicKey: 'a' * 64);

      expect(key.toEllipseString(), 'aaaa...aaaa');
      expect(const PublicKey(publicKey: 'abcd').toEllipseString(), 'abcd');
    });
  });
}
