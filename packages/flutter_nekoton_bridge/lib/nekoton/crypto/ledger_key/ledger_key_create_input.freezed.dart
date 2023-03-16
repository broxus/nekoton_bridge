// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ledger_key_create_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LedgerKeyCreateInput _$LedgerKeyCreateInputFromJson(Map<String, dynamic> json) {
  return _LedgerKeyCreateInput.fromJson(json);
}

/// @nodoc
mixin _$LedgerKeyCreateInput {
  String? get name => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LedgerKeyCreateInputCopyWith<LedgerKeyCreateInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerKeyCreateInputCopyWith<$Res> {
  factory $LedgerKeyCreateInputCopyWith(LedgerKeyCreateInput value,
          $Res Function(LedgerKeyCreateInput) then) =
      _$LedgerKeyCreateInputCopyWithImpl<$Res>;
  $Res call({String? name, int accountId});
}

/// @nodoc
class _$LedgerKeyCreateInputCopyWithImpl<$Res>
    implements $LedgerKeyCreateInputCopyWith<$Res> {
  _$LedgerKeyCreateInputCopyWithImpl(this._value, this._then);

  final LedgerKeyCreateInput _value;
  // ignore: unused_field
  final $Res Function(LedgerKeyCreateInput) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LedgerKeyCreateInputCopyWith<$Res>
    implements $LedgerKeyCreateInputCopyWith<$Res> {
  factory _$$_LedgerKeyCreateInputCopyWith(_$_LedgerKeyCreateInput value,
          $Res Function(_$_LedgerKeyCreateInput) then) =
      __$$_LedgerKeyCreateInputCopyWithImpl<$Res>;
  @override
  $Res call({String? name, int accountId});
}

/// @nodoc
class __$$_LedgerKeyCreateInputCopyWithImpl<$Res>
    extends _$LedgerKeyCreateInputCopyWithImpl<$Res>
    implements _$$_LedgerKeyCreateInputCopyWith<$Res> {
  __$$_LedgerKeyCreateInputCopyWithImpl(_$_LedgerKeyCreateInput _value,
      $Res Function(_$_LedgerKeyCreateInput) _then)
      : super(_value, (v) => _then(v as _$_LedgerKeyCreateInput));

  @override
  _$_LedgerKeyCreateInput get _value => super._value as _$_LedgerKeyCreateInput;

  @override
  $Res call({
    Object? name = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_$_LedgerKeyCreateInput(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LedgerKeyCreateInput implements _LedgerKeyCreateInput {
  const _$_LedgerKeyCreateInput({this.name, required this.accountId});

  factory _$_LedgerKeyCreateInput.fromJson(Map<String, dynamic> json) =>
      _$$_LedgerKeyCreateInputFromJson(json);

  @override
  final String? name;
  @override
  final int accountId;

  @override
  String toString() {
    return 'LedgerKeyCreateInput(name: $name, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LedgerKeyCreateInput &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(accountId));

  @JsonKey(ignore: true)
  @override
  _$$_LedgerKeyCreateInputCopyWith<_$_LedgerKeyCreateInput> get copyWith =>
      __$$_LedgerKeyCreateInputCopyWithImpl<_$_LedgerKeyCreateInput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LedgerKeyCreateInputToJson(
      this,
    );
  }
}

abstract class _LedgerKeyCreateInput implements LedgerKeyCreateInput {
  const factory _LedgerKeyCreateInput(
      {final String? name,
      required final int accountId}) = _$_LedgerKeyCreateInput;

  factory _LedgerKeyCreateInput.fromJson(Map<String, dynamic> json) =
      _$_LedgerKeyCreateInput.fromJson;

  @override
  String? get name;
  @override
  int get accountId;
  @override
  @JsonKey(ignore: true)
  _$$_LedgerKeyCreateInputCopyWith<_$_LedgerKeyCreateInput> get copyWith =>
      throw _privateConstructorUsedError;
}
