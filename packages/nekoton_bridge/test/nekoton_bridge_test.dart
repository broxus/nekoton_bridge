import 'package:nekoton_bridge/nekoton_bridge.dart';
import 'package:test/test.dart';

void main() {
  group('A group of dart-only tests', () {
    final awesome = Awesome();

    setUp(() {
      // Additional setup goes here.
    });

    test('First Test', () {
      expect(awesome.isAwesome, isTrue);
    });
  });

  // group('A group of caller-related tests', () {
  // test('simpleCallDart', () {
  // final caller = createLib().initCaller();
  // caller.listen(expectAsync1(
  //   (p0) {
  //     print('Returned ${p0.fnName}');
  //   },
  // ));
  // createLib().simpleCallDart();
  // });
  // });
}
