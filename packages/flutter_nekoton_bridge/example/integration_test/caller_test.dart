import 'package:flutter/foundation.dart';
import 'package:flutter_nekoton_bridge_example/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('caller test', () {
    testWidgets('async and sync call without and with result',
        (WidgetTester tester) async {
      final List<String> log = <String>[];

      app.main();
      await tester.pumpAndSettle();

      final DebugPrintCallback originalDebugPrint = debugPrint;

      // We can't move this init to setUp() because it should be after app init
      debugPrint = (String? s, {int? wrapWidth}) {
        // Ignore 'This may or may not be a problem. It will happen normally if hot-reload Flutter app.'
        if (s != null && !s.contains('hot-reload')) log.add(s);
      };

      expect(log, isEmpty);
      await tester.tap(find.text('initDartCaller'));
      await tester.pumpAndSettle();
      expect(log, hasLength(0));
      log.clear();

      expect(log, isEmpty);
      await tester.tap(find.text('Test0Async'));
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(log, hasLength(2));
      expect(
          log,
          contains(contains(
              'test_caller_call_test0_async testCallerCallTest0Async false')));
      expect(log[1], contains('result null'));
      log.clear();

      expect(log, isEmpty);
      await tester.tap(find.text('Test0AsyncResult'));
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(log, hasLength(2));
      expect(
          log,
          contains(contains(
              'test_caller_call_test0_async testCallerCallTest0Async true')));
      expect(log[1], contains('result testCallerCallTest0Async true'));
      log.clear();

      expect(log, isEmpty);
      await tester.tap(find.text('Test0Sync'));
      await tester.pumpAndSettle(const Duration(seconds: 1));
      expect(log, hasLength(2));
      expect(
          log,
          contains(contains(
              'test_caller_call_test0_sync testCallerCallTest0Sync false')));
      expect(log, contains('result null'));
      log.clear();

      debugPrint = originalDebugPrint;
    });
  });
}
