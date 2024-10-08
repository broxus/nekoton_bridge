// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_key_create_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LedgerKeyCreateInput _$LedgerKeyCreateInputFromJson(Map<String, dynamic> json) {
  return _LedgerKeyCreateInput.fromJson(json);
}

/// @nodoc
mixin _$LedgerKeyCreateInput {
  String? get name => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  /// Serializes this LedgerKeyCreateInput to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of LedgerKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $LedgerKeyCreateInputCopyWith<LedgerKeyCreateInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerKeyCreateInputCopyWith<$Res> {
  factory $LedgerKeyCreateInputCopyWith(LedgerKeyCreateInput value,
          $Res Function(LedgerKeyCreateInput) then) =
      _$LedgerKeyCreateInputCopyWithImpl<$Res, LedgerKeyCreateInput>;
  @useResult
  $Res call({String? name, int accountId});
}

/// @nodoc
class _$LedgerKeyCreateInputCopyWithImpl<$Res,
        $Val extends LedgerKeyCreateInput>
    implements $LedgerKeyCreateInputCopyWith<$Res> {
  _$LedgerKeyCreateInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of LedgerKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? accountId = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LedgerKeyCreateInputImplCopyWith<$Res>
    implements $LedgerKeyCreateInputCopyWith<$Res> {
  factory _$$LedgerKeyCreateInputImplCopyWith(_$LedgerKeyCreateInputImpl value,
          $Res Function(_$LedgerKeyCreateInputImpl) then) =
      __$$LedgerKeyCreateInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? name, int accountId});
}

/// @nodoc
class __$$LedgerKeyCreateInputImplCopyWithImpl<$Res>
    extends _$LedgerKeyCreateInputCopyWithImpl<$Res, _$LedgerKeyCreateInputImpl>
    implements _$$LedgerKeyCreateInputImplCopyWith<$Res> {
  __$$LedgerKeyCreateInputImplCopyWithImpl(_$LedgerKeyCreateInputImpl _value,
      $Res Function(_$LedgerKeyCreateInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of LedgerKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? accountId = null,
  }) {
    return _then(_$LedgerKeyCreateInputImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LedgerKeyCreateInputImpl implements _LedgerKeyCreateInput {
  const _$LedgerKeyCreateInputImpl({this.name, required this.accountId});

  factory _$LedgerKeyCreateInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$LedgerKeyCreateInputImplFromJson(json);

  @override
  final String? name;
  @override
  final int accountId;

  @override
  String toString() {
    return 'LedgerKeyCreateInput(name: $name, accountId: $accountId)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerKeyCreateInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, accountId);

  /// Create a copy of LedgerKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerKeyCreateInputImplCopyWith<_$LedgerKeyCreateInputImpl>
      get copyWith =>
          __$$LedgerKeyCreateInputImplCopyWithImpl<_$LedgerKeyCreateInputImpl>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LedgerKeyCreateInputImplToJson(
      this,
    );
  }
}

abstract class _LedgerKeyCreateInput implements LedgerKeyCreateInput {
  const factory _LedgerKeyCreateInput(
      {final String? name,
      required final int accountId}) = _$LedgerKeyCreateInputImpl;

  factory _LedgerKeyCreateInput.fromJson(Map<String, dynamic> json) =
      _$LedgerKeyCreateInputImpl.fromJson;

  @override
  String? get name;
  @override
  int get accountId;

  /// Create a copy of LedgerKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LedgerKeyCreateInputImplCopyWith<_$LedgerKeyCreateInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
