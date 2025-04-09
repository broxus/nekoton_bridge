// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_export_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DerivedKeyExportSeedParams {
  PublicKey get masterKey;
  Password get password;

  /// Create a copy of DerivedKeyExportSeedParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DerivedKeyExportSeedParamsCopyWith<DerivedKeyExportSeedParams>
      get copyWith =>
          _$DerivedKeyExportSeedParamsCopyWithImpl<DerivedKeyExportSeedParams>(
              this as DerivedKeyExportSeedParams, _$identity);

  /// Serializes this DerivedKeyExportSeedParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyExportSeedParams &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, password);

  @override
  String toString() {
    return 'DerivedKeyExportSeedParams(masterKey: $masterKey, password: $password)';
  }
}

/// @nodoc
abstract mixin class $DerivedKeyExportSeedParamsCopyWith<$Res> {
  factory $DerivedKeyExportSeedParamsCopyWith(DerivedKeyExportSeedParams value,
          $Res Function(DerivedKeyExportSeedParams) _then) =
      _$DerivedKeyExportSeedParamsCopyWithImpl;
  @useResult
  $Res call({PublicKey masterKey, Password password});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyExportSeedParamsCopyWithImpl<$Res>
    implements $DerivedKeyExportSeedParamsCopyWith<$Res> {
  _$DerivedKeyExportSeedParamsCopyWithImpl(this._self, this._then);

  final DerivedKeyExportSeedParams _self;
  final $Res Function(DerivedKeyExportSeedParams) _then;

  /// Create a copy of DerivedKeyExportSeedParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyExportSeedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyExportSeedParams
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
class _DerivedKeyExportSeedParams implements DerivedKeyExportSeedParams {
  const _DerivedKeyExportSeedParams(
      {required this.masterKey, required this.password});
  factory _DerivedKeyExportSeedParams.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyExportSeedParamsFromJson(json);

  @override
  final PublicKey masterKey;
  @override
  final Password password;

  /// Create a copy of DerivedKeyExportSeedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyExportSeedParamsCopyWith<_DerivedKeyExportSeedParams>
      get copyWith => __$DerivedKeyExportSeedParamsCopyWithImpl<
          _DerivedKeyExportSeedParams>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyExportSeedParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyExportSeedParams &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, password);

  @override
  String toString() {
    return 'DerivedKeyExportSeedParams(masterKey: $masterKey, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyExportSeedParamsCopyWith<$Res>
    implements $DerivedKeyExportSeedParamsCopyWith<$Res> {
  factory _$DerivedKeyExportSeedParamsCopyWith(
          _DerivedKeyExportSeedParams value,
          $Res Function(_DerivedKeyExportSeedParams) _then) =
      __$DerivedKeyExportSeedParamsCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey masterKey, Password password});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$DerivedKeyExportSeedParamsCopyWithImpl<$Res>
    implements _$DerivedKeyExportSeedParamsCopyWith<$Res> {
  __$DerivedKeyExportSeedParamsCopyWithImpl(this._self, this._then);

  final _DerivedKeyExportSeedParams _self;
  final $Res Function(_DerivedKeyExportSeedParams) _then;

  /// Create a copy of DerivedKeyExportSeedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? masterKey = null,
    Object? password = null,
  }) {
    return _then(_DerivedKeyExportSeedParams(
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyExportSeedParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }

  /// Create a copy of DerivedKeyExportSeedParams
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
