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

  group('logger test', () {
    testWidgets('info, debug, warn, error', (WidgetTester tester) async {
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
      await tester.tap(find.text('i'));
      await tester.pumpAndSettleWithTimeout();
      expect(log, hasLength(1));
      expect(log[0], contains('Info: test logger: info'));
      log.clear();

      expect(log, isEmpty);
      await tester.tap(find.text('d'));
      await tester.pumpAndSettleWithTimeout();
      expect(log, hasLength(1));
      expect(log[0], contains('Debug: test logger: debug'));
      log.clear();

      expect(log, isEmpty);
      await tester.tap(find.text('w'));
      await tester.pumpAndSettleWithTimeout();
      expect(log, hasLength(1));
      expect(log[0], contains('Warn: test logger: warn'));
      log.clear();

      expect(log, isEmpty);
      await tester.tap(find.text('e'));
      await tester.pumpAndSettleWithTimeout();
      expect(log, hasLength(1));
      expect(log[0], contains('Error: test logger: error'));
      log.clear();

      debugPrint = originalDebugPrint;
    });

// TODO: This test always fails because I don't know how to catch exception here.
// Error mesage is:
// 'package:flutter_test/src/binding.dart': Failed assertion: line 903 pos 14: '_pendingExceptionDetails != null':
// A test overrode FlutterError.onError but either failed to return it to its original state, or had unexpected
// additional errors that it could not handle. Typically, this is caused by using expect() before restoring
// FlutterError.onError.
    testWidgets('panic', skip: true, (WidgetTester tester) async {
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

      final FlutterExceptionHandler? originalOnError = FlutterError.onError;
      FlutterError.onError = (details) {};

      await tester.tap(find.text('p'));
      await tester.pumpAndSettleWithTimeout();

      FlutterError.onError = originalOnError;

      expect(log, hasLength(1));
      expect(log[0], contains('Panic: test logger: panic'));
      log.clear();

      debugPrint = originalDebugPrint;
    });
  });
}
