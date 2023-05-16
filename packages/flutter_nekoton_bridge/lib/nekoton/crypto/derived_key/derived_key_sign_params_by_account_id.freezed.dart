// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_sign_params_by_account_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeySignParamsByAccountId _$DerivedKeySignParamsByAccountIdFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeySignParamsByAccountIdByAccountId.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeySignParamsByAccountId {
  String get masterKey => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeySignParamsByAccountIdCopyWith<DerivedKeySignParamsByAccountId>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeySignParamsByAccountIdCopyWith<$Res> {
  factory $DerivedKeySignParamsByAccountIdCopyWith(
          DerivedKeySignParamsByAccountId value,
          $Res Function(DerivedKeySignParamsByAccountId) then) =
      _$DerivedKeySignParamsByAccountIdCopyWithImpl<$Res,
          DerivedKeySignParamsByAccountId>;
  @useResult
  $Res call({String masterKey, int accountId, Password password});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeySignParamsByAccountIdCopyWithImpl<$Res,
        $Val extends DerivedKeySignParamsByAccountId>
    implements $DerivedKeySignParamsByAccountIdCopyWith<$Res> {
  _$DerivedKeySignParamsByAccountIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? accountId = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_DerivedKeySignParamsByAccountIdByAccountIdCopyWith<$Res>
    implements $DerivedKeySignParamsByAccountIdCopyWith<$Res> {
  factory _$$_DerivedKeySignParamsByAccountIdByAccountIdCopyWith(
          _$_DerivedKeySignParamsByAccountIdByAccountId value,
          $Res Function(_$_DerivedKeySignParamsByAccountIdByAccountId) then) =
      __$$_DerivedKeySignParamsByAccountIdByAccountIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String masterKey, int accountId, Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_DerivedKeySignParamsByAccountIdByAccountIdCopyWithImpl<$Res>
    extends _$DerivedKeySignParamsByAccountIdCopyWithImpl<$Res,
        _$_DerivedKeySignParamsByAccountIdByAccountId>
    implements _$$_DerivedKeySignParamsByAccountIdByAccountIdCopyWith<$Res> {
  __$$_DerivedKeySignParamsByAccountIdByAccountIdCopyWithImpl(
      _$_DerivedKeySignParamsByAccountIdByAccountId _value,
      $Res Function(_$_DerivedKeySignParamsByAccountIdByAccountId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? accountId = null,
    Object? password = null,
  }) {
    return _then(_$_DerivedKeySignParamsByAccountIdByAccountId(
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
class _$_DerivedKeySignParamsByAccountIdByAccountId
    implements _DerivedKeySignParamsByAccountIdByAccountId {
  const _$_DerivedKeySignParamsByAccountIdByAccountId(
      {required this.masterKey,
      required this.accountId,
      required this.password});

  factory _$_DerivedKeySignParamsByAccountIdByAccountId.fromJson(
          Map<String, dynamic> json) =>
      _$$_DerivedKeySignParamsByAccountIdByAccountIdFromJson(json);

  @override
  final String masterKey;
  @override
  final int accountId;
  @override
  final Password password;

  @override
  String toString() {
    return 'DerivedKeySignParamsByAccountId(masterKey: $masterKey, accountId: $accountId, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeySignParamsByAccountIdByAccountId &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, accountId, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DerivedKeySignParamsByAccountIdByAccountIdCopyWith<
          _$_DerivedKeySignParamsByAccountIdByAccountId>
      get copyWith =>
          __$$_DerivedKeySignParamsByAccountIdByAccountIdCopyWithImpl<
              _$_DerivedKeySignParamsByAccountIdByAccountId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeySignParamsByAccountIdByAccountIdToJson(
      this,
    );
  }
}

abstract class _DerivedKeySignParamsByAccountIdByAccountId
    implements DerivedKeySignParamsByAccountId {
  const factory _DerivedKeySignParamsByAccountIdByAccountId(
          {required final String masterKey,
          required final int accountId,
          required final Password password}) =
      _$_DerivedKeySignParamsByAccountIdByAccountId;

  factory _DerivedKeySignParamsByAccountIdByAccountId.fromJson(
          Map<String, dynamic> json) =
      _$_DerivedKeySignParamsByAccountIdByAccountId.fromJson;

  @override
  String get masterKey;
  @override
  int get accountId;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeySignParamsByAccountIdByAccountIdCopyWith<
          _$_DerivedKeySignParamsByAccountIdByAccountId>
      get copyWith => throw _privateConstructorUsedError;
}
