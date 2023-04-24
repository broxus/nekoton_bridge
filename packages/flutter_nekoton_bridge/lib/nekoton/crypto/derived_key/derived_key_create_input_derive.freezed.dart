// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_create_input_derive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeyCreateInputDerive _$DerivedKeyCreateInputDeriveFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyCreateInputDeriveDerive.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyCreateInputDerive {
  String? get keyName => throw _privateConstructorUsedError;
  String get masterKey => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeyCreateInputDeriveCopyWith<DerivedKeyCreateInputDerive>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyCreateInputDeriveCopyWith<$Res> {
  factory $DerivedKeyCreateInputDeriveCopyWith(
          DerivedKeyCreateInputDerive value,
          $Res Function(DerivedKeyCreateInputDerive) then) =
      _$DerivedKeyCreateInputDeriveCopyWithImpl<$Res,
          DerivedKeyCreateInputDerive>;
  @useResult
  $Res call(
      {String? keyName, String masterKey, int accountId, Password password});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyCreateInputDeriveCopyWithImpl<$Res,
        $Val extends DerivedKeyCreateInputDerive>
    implements $DerivedKeyCreateInputDeriveCopyWith<$Res> {
  _$DerivedKeyCreateInputDeriveCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyName = freezed,
    Object? masterKey = null,
    Object? accountId = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DerivedKeyCreateInputDeriveDeriveCopyWith<$Res>
    implements $DerivedKeyCreateInputDeriveCopyWith<$Res> {
  factory _$$_DerivedKeyCreateInputDeriveDeriveCopyWith(
          _$_DerivedKeyCreateInputDeriveDerive value,
          $Res Function(_$_DerivedKeyCreateInputDeriveDerive) then) =
      __$$_DerivedKeyCreateInputDeriveDeriveCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? keyName, String masterKey, int accountId, Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_DerivedKeyCreateInputDeriveDeriveCopyWithImpl<$Res>
    extends _$DerivedKeyCreateInputDeriveCopyWithImpl<$Res,
        _$_DerivedKeyCreateInputDeriveDerive>
    implements _$$_DerivedKeyCreateInputDeriveDeriveCopyWith<$Res> {
  __$$_DerivedKeyCreateInputDeriveDeriveCopyWithImpl(
      _$_DerivedKeyCreateInputDeriveDerive _value,
      $Res Function(_$_DerivedKeyCreateInputDeriveDerive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyName = freezed,
    Object? masterKey = null,
    Object? accountId = null,
    Object? password = null,
  }) {
    return _then(_$_DerivedKeyCreateInputDeriveDerive(
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DerivedKeyCreateInputDeriveDerive
    implements _DerivedKeyCreateInputDeriveDerive {
  const _$_DerivedKeyCreateInputDeriveDerive(
      {this.keyName,
      required this.masterKey,
      required this.accountId,
      required this.password});

  factory _$_DerivedKeyCreateInputDeriveDerive.fromJson(
          Map<String, dynamic> json) =>
      _$$_DerivedKeyCreateInputDeriveDeriveFromJson(json);

  @override
  final String? keyName;
  @override
  final String masterKey;
  @override
  final int accountId;
  @override
  final Password password;

  @override
  String toString() {
    return 'DerivedKeyCreateInputDerive(keyName: $keyName, masterKey: $masterKey, accountId: $accountId, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeyCreateInputDeriveDerive &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, keyName, masterKey, accountId, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DerivedKeyCreateInputDeriveDeriveCopyWith<
          _$_DerivedKeyCreateInputDeriveDerive>
      get copyWith => __$$_DerivedKeyCreateInputDeriveDeriveCopyWithImpl<
          _$_DerivedKeyCreateInputDeriveDerive>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeyCreateInputDeriveDeriveToJson(
      this,
    );
  }
}

abstract class _DerivedKeyCreateInputDeriveDerive
    implements DerivedKeyCreateInputDerive {
  const factory _DerivedKeyCreateInputDeriveDerive(
      {final String? keyName,
      required final String masterKey,
      required final int accountId,
      required final Password password}) = _$_DerivedKeyCreateInputDeriveDerive;

  factory _DerivedKeyCreateInputDeriveDerive.fromJson(
          Map<String, dynamic> json) =
      _$_DerivedKeyCreateInputDeriveDerive.fromJson;

  @override
  String? get keyName;
  @override
  String get masterKey;
  @override
  int get accountId;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeyCreateInputDeriveDeriveCopyWith<
          _$_DerivedKeyCreateInputDeriveDerive>
      get copyWith => throw _privateConstructorUsedError;
}
