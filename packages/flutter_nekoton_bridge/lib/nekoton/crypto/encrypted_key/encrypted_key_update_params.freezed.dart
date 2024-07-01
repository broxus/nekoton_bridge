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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$RenameImplCopyWith<$Res> {
  factory _$$RenameImplCopyWith(
          _$RenameImpl value, $Res Function(_$RenameImpl) then) =
      __$$RenameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EncryptedKeyUpdateParamsRename data});

  $EncryptedKeyUpdateParamsRenameCopyWith<$Res> get data;
}

/// @nodoc
class __$$RenameImplCopyWithImpl<$Res>
    extends _$EncryptedKeyUpdateParamsCopyWithImpl<$Res, _$RenameImpl>
    implements _$$RenameImplCopyWith<$Res> {
  __$$RenameImplCopyWithImpl(
      _$RenameImpl _value, $Res Function(_$RenameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$RenameImpl(
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
class _$RenameImpl implements _Rename {
  const _$RenameImpl(this.data, {final String? $type})
      : $type = $type ?? 'rename';

  factory _$RenameImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenameImplFromJson(json);

  @override
  final EncryptedKeyUpdateParamsRename data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'EncryptedKeyUpdateParams.rename(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenameImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RenameImplCopyWith<_$RenameImpl> get copyWith =>
      __$$RenameImplCopyWithImpl<_$RenameImpl>(this, _$identity);

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
    return _$$RenameImplToJson(
      this,
    );
  }
}

abstract class _Rename implements EncryptedKeyUpdateParams {
  const factory _Rename(final EncryptedKeyUpdateParamsRename data) =
      _$RenameImpl;

  factory _Rename.fromJson(Map<String, dynamic> json) = _$RenameImpl.fromJson;

  @override
  EncryptedKeyUpdateParamsRename get data;
  @JsonKey(ignore: true)
  _$$RenameImplCopyWith<_$RenameImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({EncryptedKeyUpdateParamsChangePassword data});

  $EncryptedKeyUpdateParamsChangePasswordCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$EncryptedKeyUpdateParamsCopyWithImpl<$Res, _$ChangePasswordImpl>
    implements _$$ChangePasswordImplCopyWith<$Res> {
  __$$ChangePasswordImplCopyWithImpl(
      _$ChangePasswordImpl _value, $Res Function(_$ChangePasswordImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ChangePasswordImpl(
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
class _$ChangePasswordImpl implements _ChangePassword {
  const _$ChangePasswordImpl(this.data, {final String? $type})
      : $type = $type ?? 'change_password';

  factory _$ChangePasswordImpl.fromJson(Map<String, dynamic> json) =>
      _$$ChangePasswordImplFromJson(json);

  @override
  final EncryptedKeyUpdateParamsChangePassword data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'EncryptedKeyUpdateParams.changePassword(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangePasswordImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      __$$ChangePasswordImplCopyWithImpl<_$ChangePasswordImpl>(
          this, _$identity);

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
    return _$$ChangePasswordImplToJson(
      this,
    );
  }
}

abstract class _ChangePassword implements EncryptedKeyUpdateParams {
  const factory _ChangePassword(
      final EncryptedKeyUpdateParamsChangePassword data) = _$ChangePasswordImpl;

  factory _ChangePassword.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordImpl.fromJson;

  @override
  EncryptedKeyUpdateParamsChangePassword get data;
  @JsonKey(ignore: true)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
