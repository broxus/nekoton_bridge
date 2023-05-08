import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('fixed json test', () {
    // 1 ever
    const encoded = '1000000000';
    expect(Fixed.parse(encoded), Fixed.fromInt(1000000000, scale: 0));

    expect(Fixed.fromInt(1000000000, scale: 0).toString(), encoded);
  });

  test('amountJsonConverter', () {
    // 1 ever
    const encoded = '1000000000';
    expect(
      amountJsonConverter.fromJson(encoded),
      Fixed.fromInt(1000000000, scale: 0),
    );

    expect(
      amountJsonConverter.toJson(Fixed.fromInt(1000000000, scale: 0)),
      encoded,
    );
  });
}
