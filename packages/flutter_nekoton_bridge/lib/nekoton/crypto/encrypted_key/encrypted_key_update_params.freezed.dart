// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_update_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
EncryptedKeyUpdateParams _$EncryptedKeyUpdateParamsFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'rename':
      return _Rename.fromJson(json);
    case 'change_password':
      return _ChangePassword.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'EncryptedKeyUpdateParams',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$EncryptedKeyUpdateParams {
  Object get data;

  /// Serializes this EncryptedKeyUpdateParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EncryptedKeyUpdateParams &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'EncryptedKeyUpdateParams(data: $data)';
  }
}

/// @nodoc
class $EncryptedKeyUpdateParamsCopyWith<$Res> {
  $EncryptedKeyUpdateParamsCopyWith(
      EncryptedKeyUpdateParams _, $Res Function(EncryptedKeyUpdateParams) __);
}

/// @nodoc
@JsonSerializable()
class _Rename implements EncryptedKeyUpdateParams {
  const _Rename(this.data, {final String? $type}) : $type = $type ?? 'rename';
  factory _Rename.fromJson(Map<String, dynamic> json) => _$RenameFromJson(json);

  @override
  final EncryptedKeyUpdateParamsRename data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of EncryptedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$RenameCopyWith<_Rename> get copyWith =>
      __$RenameCopyWithImpl<_Rename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RenameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Rename &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'EncryptedKeyUpdateParams.rename(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$RenameCopyWith<$Res>
    implements $EncryptedKeyUpdateParamsCopyWith<$Res> {
  factory _$RenameCopyWith(_Rename value, $Res Function(_Rename) _then) =
      __$RenameCopyWithImpl;
  @useResult
  $Res call({EncryptedKeyUpdateParamsRename data});

  $EncryptedKeyUpdateParamsRenameCopyWith<$Res> get data;
}

/// @nodoc
class __$RenameCopyWithImpl<$Res> implements _$RenameCopyWith<$Res> {
  __$RenameCopyWithImpl(this._self, this._then);

  final _Rename _self;
  final $Res Function(_Rename) _then;

  /// Create a copy of EncryptedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_Rename(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as EncryptedKeyUpdateParamsRename,
    ));
  }

  /// Create a copy of EncryptedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EncryptedKeyUpdateParamsRenameCopyWith<$Res> get data {
    return $EncryptedKeyUpdateParamsRenameCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ChangePassword implements EncryptedKeyUpdateParams {
  const _ChangePassword(this.data, {final String? $type})
      : $type = $type ?? 'change_password';
  factory _ChangePassword.fromJson(Map<String, dynamic> json) =>
      _$ChangePasswordFromJson(json);

  @override
  final EncryptedKeyUpdateParamsChangePassword data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of EncryptedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ChangePasswordCopyWith<_ChangePassword> get copyWith =>
      __$ChangePasswordCopyWithImpl<_ChangePassword>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ChangePasswordToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ChangePassword &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'EncryptedKeyUpdateParams.changePassword(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ChangePasswordCopyWith<$Res>
    implements $EncryptedKeyUpdateParamsCopyWith<$Res> {
  factory _$ChangePasswordCopyWith(
          _ChangePassword value, $Res Function(_ChangePassword) _then) =
      __$ChangePasswordCopyWithImpl;
  @useResult
  $Res call({EncryptedKeyUpdateParamsChangePassword data});

  $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> get data;
}

/// @nodoc
class __$ChangePasswordCopyWithImpl<$Res>
    implements _$ChangePasswordCopyWith<$Res> {
  __$ChangePasswordCopyWithImpl(this._self, this._then);

  final _ChangePassword _self;
  final $Res Function(_ChangePassword) _then;

  /// Create a copy of EncryptedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_ChangePassword(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as EncryptedKeyUpdateParamsChangePassword,
    ));
  }

  /// Create a copy of EncryptedKeyUpdateParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> get data {
    return $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res>(_self.data,
        (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
