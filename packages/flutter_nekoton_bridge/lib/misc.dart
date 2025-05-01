import 'dart:typed_data';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart' hide Symbol;
import 'package:flutter_nekoton_bridge/log_entry.dart';

void Function(LogEntry logEntry)? _logHandler;
const String _tag = 'flutter_nekoton_bridge';

/// Init logger
Future<void> setupLogger({
  LogLevel level = LogLevel.warn,
  bool mobileLogger = true,
  required void Function(LogEntry logEntry) logHandler,
}) async {
  _logHandler = logHandler;
  await initLogger(level: level, mobileLogger: mobileLogger);
  createLogStream().listen(logHandler);
}

/// Update clock offset
Future<void> updateClockOffset(Duration offset) {
  return setClockOffset(offsetMs: offset.inMilliseconds);
}

Stream<DartCallStubRegistred>? _caller;

Future<void> registerRustToDartCaller(RustToDartCaller rustToDartCaller) async {
  if (_caller != null) return;

  _caller = initCaller()
    ..listen((stubRegistred) async {
      var id = stubRegistred.id;
      var stub = stubRegistred.stub;
      var objectHash = stub.instanceHash;

      final positionalArguments = stub.args.map((e) => e.toDynamic()).toList();
      final namedArguments = stub.namedArgs.fold(
          <Symbol, dynamic>{},
          (previousValue, element) => {
                ...previousValue,
                ...{
                  Symbol(element.name): element.value?.toDynamic(),
                }
              });

      try {
        final result = rustToDartCaller.invoke(
          objectHash,
          stub.fnName,
          positionalArguments,
          namedArguments.isNotEmpty ? namedArguments : null,
        );
        if (id == null) {
          // Don't use return value
          return;
        }
        if (result is String) {
          callSendResult(id: id, value: DynamicValue.string(result));
          return;
        } else if (result is Future<String>) {
          callSendResult(id: id, value: DynamicValue.string(await result));
          return;
        } else if (result is Future<String?>) {
          final r = await result;
          if (r == null) {
            callSendResult(id: id, value: const DynamicValue.none());
          } else {
            callSendResult(id: id, value: DynamicValue.string(r));
          }
          return;
        } else if (result is int) {
          callSendResult(id: id, value: DynamicValue.i64(result));
          return;
        } else if (result is Future<int>) {
          callSendResult(id: id, value: DynamicValue.i64(await result));
          return;
        } else if (result is double) {
          callSendResult(id: id, value: DynamicValue.f64(result));
          return;
        } else if (result is Future<double>) {
          callSendResult(id: id, value: DynamicValue.f64(await result));
          return;
        } else if (result is DynamicValue) {
          callSendResult(id: id, value: result);
          return;
        } else if (result is Future<DynamicValue>) {
          callSendResult(id: id, value: await result);
          return;
        } else if (result is ErrorCode) {
          callSendResult(id: id, value: DynamicValue.error(result));
          return;
        } else if (result is Future<ErrorCode>) {
          callSendResult(id: id, value: DynamicValue.error(await result));
          return;
        } else if (result is Uint8List) {
          callSendResult(id: id, value: DynamicValue.vecU8(result));
          return;
        } else if (result is Future<Uint8List>) {
          callSendResult(id: id, value: DynamicValue.vecU8(await result));
          return;
        } else if (result == null) {
          callSendResult(id: id, value: const DynamicValue.none());
        }
        // This option must be at last place because void can be determined
        // as any type
        else if (result is Future<void>) {
          await result;
          callSendResult(id: id, value: const DynamicValue.none());
          return;
        }

        final logEntry = LogEntryCreate.create(
          level: LogLevel.error,
          tag: _tag,
          msg: 'Unsupported return type: ${result.runtimeType}',
        );
        _logHandler?.call(logEntry);
      } on Object catch (e, t) {
        if (id != null) {
          /// To get here, just `throw ErrorCode.Network` for example
          if (e is ErrorCode) {
            callSendResult(id: id, value: DynamicValue.error(e));
          } else {
            callSendResult(
              id: id,
              value: const DynamicValue.error(ErrorCode.invokeException),
            );
          }
        }
        final logEntry = LogEntryCreate.create(
          level: LogLevel.error,
          tag: _tag,
          msg: e.toString(),
          stack: t.toString(),
        );
        _logHandler?.call(logEntry);
      }
    });
}

/// Init rust to dart caller that will call methods of registered instances.
/// For details, see [RustToDartCaller]
Future<void> initRustToDartCaller() async {
  await registerRustToDartCaller(RustToDartCaller.instance);
}
