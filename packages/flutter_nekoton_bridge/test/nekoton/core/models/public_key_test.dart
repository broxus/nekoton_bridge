import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const a1 = 'ruFndvUORSTJUudb';
  const a2 = 'UunWqRiqmFPeeuIk';
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
      expect(
        const PublicKey(publicKey: a1),
        const PublicKey(publicKey: a1),
      );
      expect(
        const PublicKey(publicKey: a1),
        isNot(const PublicKey(publicKey: a2)),
      );
    });
  });
}
