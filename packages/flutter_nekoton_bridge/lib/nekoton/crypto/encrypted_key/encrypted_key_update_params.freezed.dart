// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_update_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EncryptedKeyUpdateParamsRename data) rename,
    required TResult Function(EncryptedKeyUpdateParamsChangePassword data)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EncryptedKeyUpdateParamsRename data)? rename,
    TResult? Function(EncryptedKeyUpdateParamsChangePassword data)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EncryptedKeyUpdateParamsRename data)? rename,
    TResult Function(EncryptedKeyUpdateParamsChangePassword data)?
        changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Rename value) rename,
    required TResult Function(_ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Rename value)? rename,
    TResult? Function(_ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Rename value)? rename,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedKeyUpdateParamsCopyWith<$Res> {
  factory $EncryptedKeyUpdateParamsCopyWith(EncryptedKeyUpdateParams value,
          $Res Function(EncryptedKeyUpdateParams) then) =
      _$EncryptedKeyUpdateParamsCopyWithImpl<$Res, EncryptedKeyUpdateParams>;
}

/// @nodoc
class _$EncryptedKeyUpdateParamsCopyWithImpl<$Res,
        $Val extends EncryptedKeyUpdateParams>
    implements $EncryptedKeyUpdateParamsCopyWith<$Res> {
  _$EncryptedKeyUpdateParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_RenameCopyWith<$Res> {
  factory _$$_RenameCopyWith(_$_Rename value, $Res Function(_$_Rename) then) =
      __$$_RenameCopyWithImpl<$Res>;
  @useResult
  $Res call({EncryptedKeyUpdateParamsRename data});

  $EncryptedKeyUpdateParamsRenameCopyWith<$Res> get data;
}

/// @nodoc
class __$$_RenameCopyWithImpl<$Res>
    extends _$EncryptedKeyUpdateParamsCopyWithImpl<$Res, _$_Rename>
    implements _$$_RenameCopyWith<$Res> {
  __$$_RenameCopyWithImpl(_$_Rename _value, $Res Function(_$_Rename) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Rename(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EncryptedKeyUpdateParamsRename,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EncryptedKeyUpdateParamsRenameCopyWith<$Res> get data {
    return $EncryptedKeyUpdateParamsRenameCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_Rename implements _Rename {
  const _$_Rename(this.data, {final String? $type}) : $type = $type ?? 'rename';

  factory _$_Rename.fromJson(Map<String, dynamic> json) =>
      _$$_RenameFromJson(json);

  @override
  final EncryptedKeyUpdateParamsRename data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'EncryptedKeyUpdateParams.rename(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Rename &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RenameCopyWith<_$_Rename> get copyWith =>
      __$$_RenameCopyWithImpl<_$_Rename>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EncryptedKeyUpdateParamsRename data) rename,
    required TResult Function(EncryptedKeyUpdateParamsChangePassword data)
        changePassword,
  }) {
    return rename(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EncryptedKeyUpdateParamsRename data)? rename,
    TResult? Function(EncryptedKeyUpdateParamsChangePassword data)?
        changePassword,
  }) {
    return rename?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EncryptedKeyUpdateParamsRename data)? rename,
    TResult Function(EncryptedKeyUpdateParamsChangePassword data)?
        changePassword,
    required TResult orElse(),
  }) {
    if (rename != null) {
      return rename(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Rename value) rename,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return rename(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Rename value)? rename,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return rename?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Rename value)? rename,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (rename != null) {
      return rename(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_RenameToJson(
      this,
    );
  }
}

abstract class _Rename implements EncryptedKeyUpdateParams {
  const factory _Rename(final EncryptedKeyUpdateParamsRename data) = _$_Rename;

  factory _Rename.fromJson(Map<String, dynamic> json) = _$_Rename.fromJson;

  @override
  EncryptedKeyUpdateParamsRename get data;
  @JsonKey(ignore: true)
  _$$_RenameCopyWith<_$_Rename> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ChangePasswordCopyWith<$Res> {
  factory _$$_ChangePasswordCopyWith(
          _$_ChangePassword value, $Res Function(_$_ChangePassword) then) =
      __$$_ChangePasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({EncryptedKeyUpdateParamsChangePassword data});

  $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ChangePasswordCopyWithImpl<$Res>
    extends _$EncryptedKeyUpdateParamsCopyWithImpl<$Res, _$_ChangePassword>
    implements _$$_ChangePasswordCopyWith<$Res> {
  __$$_ChangePasswordCopyWithImpl(
      _$_ChangePassword _value, $Res Function(_$_ChangePassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ChangePassword(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as EncryptedKeyUpdateParamsChangePassword,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> get data {
    return $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_ChangePassword implements _ChangePassword {
  const _$_ChangePassword(this.data, {final String? $type})
      : $type = $type ?? 'change_password';

  factory _$_ChangePassword.fromJson(Map<String, dynamic> json) =>
      _$$_ChangePasswordFromJson(json);

  @override
  final EncryptedKeyUpdateParamsChangePassword data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'EncryptedKeyUpdateParams.changePassword(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ChangePassword &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      __$$_ChangePasswordCopyWithImpl<_$_ChangePassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(EncryptedKeyUpdateParamsRename data) rename,
    required TResult Function(EncryptedKeyUpdateParamsChangePassword data)
        changePassword,
  }) {
    return changePassword(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(EncryptedKeyUpdateParamsRename data)? rename,
    TResult? Function(EncryptedKeyUpdateParamsChangePassword data)?
        changePassword,
  }) {
    return changePassword?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(EncryptedKeyUpdateParamsRename data)? rename,
    TResult Function(EncryptedKeyUpdateParamsChangePassword data)?
        changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Rename value) rename,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Rename value)? rename,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Rename value)? rename,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (changePassword != null) {
      return changePassword(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ChangePasswordToJson(
      this,
    );
  }
}

abstract class _ChangePassword implements EncryptedKeyUpdateParams {
  const factory _ChangePassword(
      final EncryptedKeyUpdateParamsChangePassword data) = _$_ChangePassword;

  factory _ChangePassword.fromJson(Map<String, dynamic> json) =
      _$_ChangePassword.fromJson;

  @override
  EncryptedKeyUpdateParamsChangePassword get data;
  @JsonKey(ignore: true)
  _$$_ChangePasswordCopyWith<_$_ChangePassword> get copyWith =>
      throw _privateConstructorUsedError;
}
