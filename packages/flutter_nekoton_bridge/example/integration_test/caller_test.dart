import 'package:flutter/foundation.dart';
import 'package:flutter_nekoton_bridge_example/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'test_helpers.dart';
import 'timeout_utils.dart';

void main() {
  // TODO(nesquikm): it's not clear which test is causing flaky behavior
  // https://github.com/flutter/flutter/issues/105913
  if (skipBecauseFlaky()) {
    return;
  }

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('caller test', () {
    testWidgets('async and sync call without and with result',
        (WidgetTester tester) async {
      final List<String> log = <String>[];

      app.main();
      await tester.pumpAndSettleWithTimeout();

      final DebugPrintCallback originalDebugPrint = debugPrint;

      // We can't move this init to setUp() because it should be after app init
      debugPrint = (String? s, {int? wrapWidth}) {
        // Ignore 'This may or may not be a problem. It will happen normally if hot-reload Flutter app.'
        if (s != null && !s.contains('hot-reload')) log.add(s);
      };

      expect(log, isEmpty);
      await tester.tap(find.text('initDartCaller'));
      await tester.pumpAndSettleWithTimeout();
      expect(log, hasLength(0));
      log.clear();

      expect(log, isEmpty);
      await tester.tap(find.text('Test0Async'));
      await tester.pumpAndSettleWithTimeout();
      expect(log, hasLength(2));
      expect(
          log,
          contains(contains(
              'test_caller_call_test0_async testCallerCallTest0Async false')));
      expect(log[1], contains('result null'));
      log.clear();

      expect(log, isEmpty);
      await tester.tap(find.text('Test0AsyncResult'));
      await tester.pumpAndSettleWithTimeout();
      expect(log, hasLength(2));
      expect(
          log,
          contains(contains(
              'test_caller_call_test0_async testCallerCallTest0Async true')));
      expect(log[1], contains('result testCallerCallTest0Async true'));
      log.clear();

      expect(log, isEmpty);
      await tester.tap(find.text('Test0Sync'));
      await tester.pumpAndSettleWithTimeout();
      expect(log, hasLength(2));
      expect(
          log,
          contains(contains(
              'test_caller_call_test0_sync testCallerCallTest0Sync false')));
      expect(log, contains('result null'));
      log.clear();

      debugPrint = originalDebugPrint;
    });

// TODO: This test always fails on github and I don't know how to fix it.
    testWidgets('async mulptiple parallel execution', skip: true,
        (WidgetTester tester) async {
      final List<String> log = <String>[];

      app.main();
      await tester.pumpAndSettleWithTimeout();

      final DebugPrintCallback originalDebugPrint = debugPrint;

      // We can't move this init to setUp() because it should be after app init
      debugPrint = (String? s, {int? wrapWidth}) {
        // Ignore 'This may or may not be a problem. It will happen normally if hot-reload Flutter app.'
        if (s != null && !s.contains('hot-reload')) log.add(s);
      };

      expect(log, isEmpty);
      await tester.tap(find.text('initDartCaller'));
      await tester.pumpAndSettleWithTimeout();
      expect(log, hasLength(0));
      log.clear();

      expect(log, isEmpty);
      await tester.tap(find.text('Test1AsyncResult'));
      await tester.pumpAndSettleWithTimeout(const Duration(seconds: 2));
      expect(log, hasLength(14),
          reason: 'failed log entry count, found ${log.length}, should be 14');
      count(String substring) => log.fold(
          0, (count, string) => count += string.contains(substring) ? 1 : 0);

      expect(
        count('test_caller_call_test1_async testCallerCallTest1Async true'),
        7,
        reason: 'failed log rust entry count, found ${log.length}, should be 7',
      );
      expect(
        count('result testCallerCallTest1Async true'),
        7,
        reason: 'failed log dart entry count, found ${log.length}, should be 7',
      );
      log.clear();

      debugPrint = originalDebugPrint;
    });
  });
}
