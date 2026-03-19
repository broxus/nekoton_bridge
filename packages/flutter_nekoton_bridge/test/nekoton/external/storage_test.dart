import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockStorageDartWrapper extends Mock implements StorageDartWrapper {}

void main() {
  test('get set and remove delegate to provided callbacks', () async {
    // Arrange
    final values = <String, String>{};
    final storage = Storage.test(
      get: (key) async => values[key],
      set: ({required key, required value}) async {
        values[key] = value;
      },
      setUnchecked: ({required key, required value}) {
        values[key] = value;
      },
      remove: (key) async {
        values.remove(key);
      },
      removeUnchecked: (key) {
        values.remove(key);
      },
      storage: _MockStorageDartWrapper(),
    );

    // Act
    await storage.set('key', 'value');
    final stored = await storage.get('key');
    await storage.remove('key');
    final removed = await storage.get('key');

    // Assert
    expect(stored, 'value');
    expect(removed, isNull);
  });

  test('get maps failure to ErrorCode.generic', () async {
    // Arrange
    final storage = Storage.test(
      get: (key) => throw Exception('boom'),
      set: ({required key, required value}) async {},
      setUnchecked: ({required key, required value}) {},
      remove: (key) async {},
      removeUnchecked: (key) {},
      storage: _MockStorageDartWrapper(),
    );

    // Act
    final call = storage.get('key');

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.generic)));
  });

  test('set maps failure to ErrorCode.generic', () async {
    // Arrange
    final storage = Storage.test(
      get: (key) async => null,
      set: ({required key, required value}) => throw Exception('boom'),
      setUnchecked: ({required key, required value}) {},
      remove: (key) async {},
      removeUnchecked: (key) {},
      storage: _MockStorageDartWrapper(),
    );

    // Act
    final call = storage.set('key', 'value');

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.generic)));
  });

  test('remove maps failure to ErrorCode.generic', () async {
    // Arrange
    final storage = Storage.test(
      get: (key) async => null,
      set: ({required key, required value}) async {},
      setUnchecked: ({required key, required value}) {},
      remove: (key) => throw Exception('boom'),
      removeUnchecked: (key) {},
      storage: _MockStorageDartWrapper(),
    );

    // Act
    final call = storage.remove('key');

    // Assert
    await expectLater(call, throwsA(equals(ErrorCode.generic)));
  });

  test('setUnchecked and removeUnchecked swallow errors', () {
    // Arrange
    final storage = Storage.test(
      get: (key) async => null,
      set: ({required key, required value}) async {},
      setUnchecked: ({required key, required value}) {
        throw Exception('boom');
      },
      remove: (key) async {},
      removeUnchecked: (key) {
        throw Exception('boom');
      },
      storage: _MockStorageDartWrapper(),
    );

    // Act
    storage.setUnchecked('key', 'value');
    storage.removeUnchecked('key');

    // Assert
    expect(true, isTrue);
  });
}
