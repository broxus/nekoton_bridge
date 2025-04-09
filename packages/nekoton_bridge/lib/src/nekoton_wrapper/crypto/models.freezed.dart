// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeySigner {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is KeySigner);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'KeySigner()';
  }
}

/// @nodoc
class $KeySignerCopyWith<$Res> {
  $KeySignerCopyWith(KeySigner _, $Res Function(KeySigner) __);
}

/// @nodoc

class KeySigner_Encrypted extends KeySigner {
  const KeySigner_Encrypted() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is KeySigner_Encrypted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'KeySigner.encrypted()';
  }
}

/// @nodoc

class KeySigner_Derived extends KeySigner {
  const KeySigner_Derived() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is KeySigner_Derived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'KeySigner.derived()';
  }
}

/// @nodoc

class KeySigner_Ledger extends KeySigner {
  const KeySigner_Ledger() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is KeySigner_Ledger);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'KeySigner.ledger()';
  }
}

/// @nodoc

class KeySigner_Stub extends KeySigner {
  const KeySigner_Stub(this.field0) : super._();

  final bool field0;

  /// Create a copy of KeySigner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeySigner_StubCopyWith<KeySigner_Stub> get copyWith =>
      _$KeySigner_StubCopyWithImpl<KeySigner_Stub>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeySigner_Stub &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'KeySigner.stub(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $KeySigner_StubCopyWith<$Res>
    implements $KeySignerCopyWith<$Res> {
  factory $KeySigner_StubCopyWith(
          KeySigner_Stub value, $Res Function(KeySigner_Stub) _then) =
      _$KeySigner_StubCopyWithImpl;
  @useResult
  $Res call({bool field0});
}

/// @nodoc
class _$KeySigner_StubCopyWithImpl<$Res>
    implements $KeySigner_StubCopyWith<$Res> {
  _$KeySigner_StubCopyWithImpl(this._self, this._then);

  final KeySigner_Stub _self;
  final $Res Function(KeySigner_Stub) _then;

  /// Create a copy of KeySigner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(KeySigner_Stub(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
