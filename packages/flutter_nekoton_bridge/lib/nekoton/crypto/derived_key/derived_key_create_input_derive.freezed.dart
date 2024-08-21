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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DerivedKeyCreateInputDerive _$DerivedKeyCreateInputDeriveFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyCreateInputDeriveDerive.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyCreateInputDerive {
  String? get keyName => throw _privateConstructorUsedError;
  PublicKey get masterKey => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  /// Serializes this DerivedKeyCreateInputDerive to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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
      {String? keyName, PublicKey masterKey, int accountId, Password password});

  $PublicKeyCopyWith<$Res> get masterKey;
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

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
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
              as PublicKey,
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

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_value.masterKey, (value) {
      return _then(_value.copyWith(masterKey: value) as $Val);
    });
  }

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DerivedKeyCreateInputDeriveDeriveImplCopyWith<$Res>
    implements $DerivedKeyCreateInputDeriveCopyWith<$Res> {
  factory _$$DerivedKeyCreateInputDeriveDeriveImplCopyWith(
          _$DerivedKeyCreateInputDeriveDeriveImpl value,
          $Res Function(_$DerivedKeyCreateInputDeriveDeriveImpl) then) =
      __$$DerivedKeyCreateInputDeriveDeriveImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? keyName, PublicKey masterKey, int accountId, Password password});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$DerivedKeyCreateInputDeriveDeriveImplCopyWithImpl<$Res>
    extends _$DerivedKeyCreateInputDeriveCopyWithImpl<$Res,
        _$DerivedKeyCreateInputDeriveDeriveImpl>
    implements _$$DerivedKeyCreateInputDeriveDeriveImplCopyWith<$Res> {
  __$$DerivedKeyCreateInputDeriveDeriveImplCopyWithImpl(
      _$DerivedKeyCreateInputDeriveDeriveImpl _value,
      $Res Function(_$DerivedKeyCreateInputDeriveDeriveImpl) _then)
      : super(_value, _then);

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyName = freezed,
    Object? masterKey = null,
    Object? accountId = null,
    Object? password = null,
  }) {
    return _then(_$DerivedKeyCreateInputDeriveDeriveImpl(
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
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
class _$DerivedKeyCreateInputDeriveDeriveImpl
    implements _DerivedKeyCreateInputDeriveDerive {
  const _$DerivedKeyCreateInputDeriveDeriveImpl(
      {this.keyName,
      required this.masterKey,
      required this.accountId,
      required this.password});

  factory _$DerivedKeyCreateInputDeriveDeriveImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DerivedKeyCreateInputDeriveDeriveImplFromJson(json);

  @override
  final String? keyName;
  @override
  final PublicKey masterKey;
  @override
  final int accountId;
  @override
  final Password password;

  @override
  String toString() {
    return 'DerivedKeyCreateInputDerive(keyName: $keyName, masterKey: $masterKey, accountId: $accountId, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DerivedKeyCreateInputDeriveDeriveImpl &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, keyName, masterKey, accountId, password);

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DerivedKeyCreateInputDeriveDeriveImplCopyWith<
          _$DerivedKeyCreateInputDeriveDeriveImpl>
      get copyWith => __$$DerivedKeyCreateInputDeriveDeriveImplCopyWithImpl<
          _$DerivedKeyCreateInputDeriveDeriveImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DerivedKeyCreateInputDeriveDeriveImplToJson(
      this,
    );
  }
}

abstract class _DerivedKeyCreateInputDeriveDerive
    implements DerivedKeyCreateInputDerive {
  const factory _DerivedKeyCreateInputDeriveDerive(
          {final String? keyName,
          required final PublicKey masterKey,
          required final int accountId,
          required final Password password}) =
      _$DerivedKeyCreateInputDeriveDeriveImpl;

  factory _DerivedKeyCreateInputDeriveDerive.fromJson(
          Map<String, dynamic> json) =
      _$DerivedKeyCreateInputDeriveDeriveImpl.fromJson;

  @override
  String? get keyName;
  @override
  PublicKey get masterKey;
  @override
  int get accountId;
  @override
  Password get password;

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DerivedKeyCreateInputDeriveDeriveImplCopyWith<
          _$DerivedKeyCreateInputDeriveDeriveImpl>
      get copyWith => throw _privateConstructorUsedError;
}
