// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_update_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DerivedKeyUpdateParams _$DerivedKeyUpdateParamsFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'rename_key':
      return _DerivedKeyUpdateParamsRenameKey.fromJson(json);
    case 'change_password':
      return _DerivedKeyUpdateParamsChangePassword.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'DerivedKeyUpdateParams',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$DerivedKeyUpdateParams {
  Object get data;

  /// Serializes this DerivedKeyUpdateParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyUpdateParams &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'DerivedKeyUpdateParams(data: $data)';
  }
}

/// @nodoc
class $DerivedKeyUpdateParamsCopyWith<$Res> {
  $DerivedKeyUpdateParamsCopyWith(
      DerivedKeyUpdateParams _, $Res Function(DerivedKeyUpdateParams) __);
}

/// @nodoc
@JsonSerializable()
class _DerivedKeyUpdateParamsRenameKey implements DerivedKeyUpdateParams {
  const _DerivedKeyUpdateParamsRenameKey(this.data, {final String? $type})
      : $type = $type ?? 'rename_key';
  factory _DerivedKeyUpdateParamsRenameKey.fromJson(
          Map<String, dynamic> json) =>
      _$DerivedKeyUpdateParamsRenameKeyFromJson(json);

  @override
  final DerivedKeyUpdateParamsRenameKey data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of DerivedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyUpdateParamsRenameKeyCopyWith<_DerivedKeyUpdateParamsRenameKey>
      get copyWith => __$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<
          _DerivedKeyUpdateParamsRenameKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyUpdateParamsRenameKeyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyUpdateParamsRenameKey &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'DerivedKeyUpdateParams.renameKey(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyUpdateParamsRenameKeyCopyWith<$Res>
    implements $DerivedKeyUpdateParamsCopyWith<$Res> {
  factory _$DerivedKeyUpdateParamsRenameKeyCopyWith(
          _DerivedKeyUpdateParamsRenameKey value,
          $Res Function(_DerivedKeyUpdateParamsRenameKey) _then) =
      __$DerivedKeyUpdateParamsRenameKeyCopyWithImpl;
  @useResult
  $Res call({DerivedKeyUpdateParamsRenameKey data});

  $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> get data;
}

/// @nodoc
class __$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res>
    implements _$DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  __$DerivedKeyUpdateParamsRenameKeyCopyWithImpl(this._self, this._then);

  final _DerivedKeyUpdateParamsRenameKey _self;
  final $Res Function(_DerivedKeyUpdateParamsRenameKey) _then;

  /// Create a copy of DerivedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_DerivedKeyUpdateParamsRenameKey(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyUpdateParamsRenameKey,
    ));
  }

  /// Create a copy of DerivedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> get data {
    return $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DerivedKeyUpdateParamsChangePassword implements DerivedKeyUpdateParams {
  const _DerivedKeyUpdateParamsChangePassword(this.data, {final String? $type})
      : $type = $type ?? 'change_password';
  factory _DerivedKeyUpdateParamsChangePassword.fromJson(
          Map<String, dynamic> json) =>
      _$DerivedKeyUpdateParamsChangePasswordFromJson(json);

  @override
  final DerivedKeyUpdateParamsChangePassword data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of DerivedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyUpdateParamsChangePasswordCopyWith<
          _DerivedKeyUpdateParamsChangePassword>
      get copyWith => __$DerivedKeyUpdateParamsChangePasswordCopyWithImpl<
          _DerivedKeyUpdateParamsChangePassword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyUpdateParamsChangePasswordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyUpdateParamsChangePassword &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'DerivedKeyUpdateParams.changePassword(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyUpdateParamsChangePasswordCopyWith<$Res>
    implements $DerivedKeyUpdateParamsCopyWith<$Res> {
  factory _$DerivedKeyUpdateParamsChangePasswordCopyWith(
          _DerivedKeyUpdateParamsChangePassword value,
          $Res Function(_DerivedKeyUpdateParamsChangePassword) _then) =
      __$DerivedKeyUpdateParamsChangePasswordCopyWithImpl;
  @useResult
  $Res call({DerivedKeyUpdateParamsChangePassword data});

  $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> get data;
}

/// @nodoc
class __$DerivedKeyUpdateParamsChangePasswordCopyWithImpl<$Res>
    implements _$DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> {
  __$DerivedKeyUpdateParamsChangePasswordCopyWithImpl(this._self, this._then);

  final _DerivedKeyUpdateParamsChangePassword _self;
  final $Res Function(_DerivedKeyUpdateParamsChangePassword) _then;

  /// Create a copy of DerivedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_DerivedKeyUpdateParamsChangePassword(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyUpdateParamsChangePassword,
    ));
  }

  /// Create a copy of DerivedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> get data {
    return $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res>(_self.data,
        (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
