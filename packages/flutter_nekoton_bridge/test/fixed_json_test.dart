import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('BigInt json test', () {
    // 1 ever
    const encoded = '1000000000';
    expect(BigInt.parse(encoded), BigInt.from(1000000000));

    expect(BigInt.from(1000000000).toString(), encoded);
  });

  test('amountJsonConverter', () {
    // 1 ever
    const encoded = '1000000000';
    expect(
      amountJsonConverter.fromJson(encoded),
      BigInt.from(1000000000),
    );

    expect(
      amountJsonConverter.toJson(BigInt.from(1000000000)),
      encoded,
    );
  });
}
