import 'dart:io';

String _envStringSkipFlakyIOS = 'FLUTTER_TEST_SKIP_FLAKY_IOS';
String _envStringSkipFlakyAndroid = 'FLUTTER_TEST_SKIP_FLAKY_ANDROID';

bool getBooleanEnv(String key) {
  final value = Platform.environment[key];
  switch (value?.toLowerCase() ?? false) {
    case 'true':
      return true;
    case 'false':
      return false;
    default:
      throw Exception('Unknown value for $key: $value');
  }
}

bool skipBecauseFlaky() {
  if (Platform.isIOS && getBooleanEnv(_envStringSkipFlakyIOS)) {
    stdout.writeln('Skipping test because $_envStringSkipFlakyIOS is set');
    return true;
  }
  if (Platform.isAndroid && getBooleanEnv(_envStringSkipFlakyAndroid)) {
    stdout.writeln('Skipping test because $_envStringSkipFlakyAndroid is set');
    return true;
  }
  return false;
}
