import 'dart:io';

const String _envStringSkipFlakyIOS = 'FLUTTER_TEST_SKIP_FLAKY_IOS';
const String _envStringSkipFlakyAndroid = 'FLUTTER_TEST_SKIP_FLAKY_ANDROID';

bool skipBecauseFlaky() {
  if (Platform.isIOS && const bool.fromEnvironment(_envStringSkipFlakyIOS)) {
    // ignore: avoid_print
    print('Skipping test because $_envStringSkipFlakyIOS is set');
    return true;
  }
  if (Platform.isAndroid &&
      const bool.fromEnvironment(_envStringSkipFlakyAndroid)) {
    // ignore: avoid_print
    print('Skipping test because $_envStringSkipFlakyAndroid is set');
    return true;
  }
  return false;
}
