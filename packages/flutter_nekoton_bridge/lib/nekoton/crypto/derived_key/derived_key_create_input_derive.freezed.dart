// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_create_input_derive.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DerivedKeyCreateInputDerive {
  String? get keyName;
  PublicKey get masterKey;
  int get accountId;
  Password get password;

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DerivedKeyCreateInputDeriveCopyWith<DerivedKeyCreateInputDerive>
      get copyWith => _$DerivedKeyCreateInputDeriveCopyWithImpl<
              DerivedKeyCreateInputDerive>(
          this as DerivedKeyCreateInputDerive, _$identity);

  /// Serializes this DerivedKeyCreateInputDerive to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyCreateInputDerive &&
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

  @override
  String toString() {
    return 'DerivedKeyCreateInputDerive(keyName: $keyName, masterKey: $masterKey, accountId: $accountId, password: $password)';
  }
}

/// @nodoc
abstract mixin class $DerivedKeyCreateInputDeriveCopyWith<$Res> {
  factory $DerivedKeyCreateInputDeriveCopyWith(
          DerivedKeyCreateInputDerive value,
          $Res Function(DerivedKeyCreateInputDerive) _then) =
      _$DerivedKeyCreateInputDeriveCopyWithImpl;
  @useResult
  $Res call(
      {String? keyName, PublicKey masterKey, int accountId, Password password});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyCreateInputDeriveCopyWithImpl<$Res>
    implements $DerivedKeyCreateInputDeriveCopyWith<$Res> {
  _$DerivedKeyCreateInputDeriveCopyWithImpl(this._self, this._then);

  final DerivedKeyCreateInputDerive _self;
  final $Res Function(DerivedKeyCreateInputDerive) _then;

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
    return _then(_self.copyWith(
      keyName: freezed == keyName
          ? _self.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_self.password, (value) {
      return _then(_self.copyWith(password: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _DerivedKeyCreateInputDerive implements DerivedKeyCreateInputDerive {
  const _DerivedKeyCreateInputDerive(
      {this.keyName,
      required this.masterKey,
      required this.accountId,
      required this.password});
  factory _DerivedKeyCreateInputDerive.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyCreateInputDeriveFromJson(json);

  @override
  final String? keyName;
  @override
  final PublicKey masterKey;
  @override
  final int accountId;
  @override
  final Password password;

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyCreateInputDeriveCopyWith<_DerivedKeyCreateInputDerive>
      get copyWith => __$DerivedKeyCreateInputDeriveCopyWithImpl<
          _DerivedKeyCreateInputDerive>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyCreateInputDeriveToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyCreateInputDerive &&
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

  @override
  String toString() {
    return 'DerivedKeyCreateInputDerive(keyName: $keyName, masterKey: $masterKey, accountId: $accountId, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyCreateInputDeriveCopyWith<$Res>
    implements $DerivedKeyCreateInputDeriveCopyWith<$Res> {
  factory _$DerivedKeyCreateInputDeriveCopyWith(
          _DerivedKeyCreateInputDerive value,
          $Res Function(_DerivedKeyCreateInputDerive) _then) =
      __$DerivedKeyCreateInputDeriveCopyWithImpl;
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
class __$DerivedKeyCreateInputDeriveCopyWithImpl<$Res>
    implements _$DerivedKeyCreateInputDeriveCopyWith<$Res> {
  __$DerivedKeyCreateInputDeriveCopyWithImpl(this._self, this._then);

  final _DerivedKeyCreateInputDerive _self;
  final $Res Function(_DerivedKeyCreateInputDerive) _then;

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyName = freezed,
    Object? masterKey = null,
    Object? accountId = null,
    Object? password = null,
  }) {
    return _then(_DerivedKeyCreateInputDerive(
      keyName: freezed == keyName
          ? _self.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyCreateInputDerive
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_self.password, (value) {
      return _then(_self.copyWith(password: value));
    });
  }
}

// dart format on
