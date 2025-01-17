// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'caller.freezed.dart';

/// Instruction for dart side that should call some method of some class instance.
class DartCallStub {
  /// Hash is unique id for any instance of any class, used to identify where to call method
  final String instanceHash;

  /// name of function that should be called
  final String fnName;

  /// List of positional arguments in function
  final List<DynamicValue> args;

  /// List of named arguments of function, empty if no such arguments
  final List<DynamicNamedValue> namedArgs;

  const DartCallStub({
    required this.instanceHash,
    required this.fnName,
    required this.args,
    required this.namedArgs,
  });

  @override
  int get hashCode =>
      instanceHash.hashCode ^
      fnName.hashCode ^
      args.hashCode ^
      namedArgs.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DartCallStub &&
          runtimeType == other.runtimeType &&
          instanceHash == other.instanceHash &&
          fnName == other.fnName &&
          args == other.args &&
          namedArgs == other.namedArgs;
}

/// Registered call of dart function that is tracked in rust side
class DartCallStubRegistred {
  /// Unique identifier of call of some method
  final String? id;

  /// Call itself
  final DartCallStub stub;

  const DartCallStubRegistred({
    this.id,
    required this.stub,
  });

  @override
  int get hashCode => id.hashCode ^ stub.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DartCallStubRegistred &&
          runtimeType == other.runtimeType &&
          id == other.id &&
          stub == other.stub;
}

/// Value of function call that should be placed in dart as named parameter.
/// EX: void funcCall({int? valueName}) -> DynamicNamedValue(name: "valueName", value: DynamicValue::U32(10))
class DynamicNamedValue {
  final String name;
  final DynamicValue? value;

  const DynamicNamedValue({
    required this.name,
    this.value,
  });

  @override
  int get hashCode => name.hashCode ^ value.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is DynamicNamedValue &&
          runtimeType == other.runtimeType &&
          name == other.name &&
          value == other.value;
}

@freezed
sealed class DynamicValue with _$DynamicValue {
  const DynamicValue._();

  const factory DynamicValue.u16(
    int field0,
  ) = DynamicValue_U16;
  const factory DynamicValue.u32(
    int field0,
  ) = DynamicValue_U32;
  const factory DynamicValue.i32(
    int field0,
  ) = DynamicValue_I32;
  const factory DynamicValue.u64(
    BigInt field0,
  ) = DynamicValue_U64;
  const factory DynamicValue.i64(
    PlatformInt64 field0,
  ) = DynamicValue_I64;
  const factory DynamicValue.f32(
    double field0,
  ) = DynamicValue_F32;
  const factory DynamicValue.f64(
    double field0,
  ) = DynamicValue_F64;
  const factory DynamicValue.string(
    String field0,
  ) = DynamicValue_String;
  const factory DynamicValue.vecU8(
    Uint8List field0,
  ) = DynamicValue_VecU8;
  const factory DynamicValue.megaStruct(
    String field0,
  ) = DynamicValue_MegaStruct;
  const factory DynamicValue.error(
    ErrorCode field0,
  ) = DynamicValue_Error;
  const factory DynamicValue.none() = DynamicValue_None;
}

enum ErrorCode {
  ok,
  network,
  generic,
  invokeException,
  ;
}