import 'package:flutter_nekoton_bridge_example/main.dart' as app;
// import 'package:flutter_nekoton_bridge/example/lib/main.dart' as app;
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';
// import 'package:vm_service/vm_service_io.dart';

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  group('end-to-end test', () {
    testWidgets('just run the app', (WidgetTester tester) async {
      app.main();
      await tester.pumpAndSettle();

      expect(find.textContaining('logger-related'), findsOneWidget);
    });
  });
}
