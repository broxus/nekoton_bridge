import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  const a1 = '16:ajSRAnGfnLGcJGda';
  const a2 = '22:lniDKxEPmAwzSIch';
  group('Address', () {
    test('hashCode', () {
      expect(
        const Address(address: a1).hashCode,
        const Address(address: a1).hashCode,
      );
      expect(
        const Address(address: a1).hashCode,
        isNot(const Address(address: a2).hashCode),
      );
    });

    test('operator ==', () {
      expect(
        const Address(address: a1),
        const Address(address: a1),
      );
      expect(
        const Address(address: a1),
        isNot(const Address(address: a2)),
      );
    });
  });
}
