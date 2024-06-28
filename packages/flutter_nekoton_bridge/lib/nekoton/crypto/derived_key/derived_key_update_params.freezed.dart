// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_update_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DerivedKeyUpdateParams _$DerivedKeyUpdateParamsFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'rename_key':
      return _RenameKey.fromJson(json);
    case 'change_password':
      return _ChangePassword.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'DerivedKeyUpdateParams',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$DerivedKeyUpdateParams {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeyUpdateParamsRenameKey data) renameKey,
    required TResult Function(DerivedKeyUpdateParamsChangePassword data)
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeyUpdateParamsRenameKey data)? renameKey,
    TResult? Function(DerivedKeyUpdateParamsChangePassword data)?
        changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeyUpdateParamsRenameKey data)? renameKey,
    TResult Function(DerivedKeyUpdateParamsChangePassword data)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RenameKey value) renameKey,
    required TResult Function(_ChangePassword value) changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RenameKey value)? renameKey,
    TResult? Function(_ChangePassword value)? changePassword,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RenameKey value)? renameKey,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyUpdateParamsCopyWith<$Res> {
  factory $DerivedKeyUpdateParamsCopyWith(DerivedKeyUpdateParams value,
          $Res Function(DerivedKeyUpdateParams) then) =
      _$DerivedKeyUpdateParamsCopyWithImpl<$Res, DerivedKeyUpdateParams>;
}

/// @nodoc
class _$DerivedKeyUpdateParamsCopyWithImpl<$Res,
        $Val extends DerivedKeyUpdateParams>
    implements $DerivedKeyUpdateParamsCopyWith<$Res> {
  _$DerivedKeyUpdateParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$RenameKeyImplCopyWith<$Res> {
  factory _$$RenameKeyImplCopyWith(
          _$RenameKeyImpl value, $Res Function(_$RenameKeyImpl) then) =
      __$$RenameKeyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DerivedKeyUpdateParamsRenameKey data});

  $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> get data;
}

/// @nodoc
class __$$RenameKeyImplCopyWithImpl<$Res>
    extends _$DerivedKeyUpdateParamsCopyWithImpl<$Res, _$RenameKeyImpl>
    implements _$$RenameKeyImplCopyWith<$Res> {
  __$$RenameKeyImplCopyWithImpl(
      _$RenameKeyImpl _value, $Res Function(_$RenameKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$RenameKeyImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyUpdateParamsRenameKey,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> get data {
    return $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$RenameKeyImpl implements _RenameKey {
  const _$RenameKeyImpl(this.data, {final String? $type})
      : $type = $type ?? 'rename_key';

  factory _$RenameKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$RenameKeyImplFromJson(json);

  @override
  final DerivedKeyUpdateParamsRenameKey data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DerivedKeyUpdateParams.renameKey(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RenameKeyImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$RenameKeyImplCopyWith<_$RenameKeyImpl> get copyWith =>
      __$$RenameKeyImplCopyWithImpl<_$RenameKeyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeyUpdateParamsRenameKey data) renameKey,
    required TResult Function(DerivedKeyUpdateParamsChangePassword data)
        changePassword,
  }) {
    return renameKey(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeyUpdateParamsRenameKey data)? renameKey,
    TResult? Function(DerivedKeyUpdateParamsChangePassword data)?
        changePassword,
  }) {
    return renameKey?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeyUpdateParamsRenameKey data)? renameKey,
    TResult Function(DerivedKeyUpdateParamsChangePassword data)? changePassword,
    required TResult orElse(),
  }) {
    if (renameKey != null) {
      return renameKey(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_RenameKey value) renameKey,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return renameKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RenameKey value)? renameKey,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return renameKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RenameKey value)? renameKey,
    TResult Function(_ChangePassword value)? changePassword,
    required TResult orElse(),
  }) {
    if (renameKey != null) {
      return renameKey(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RenameKeyImplToJson(
      this,
    );
  }
}

abstract class _RenameKey implements DerivedKeyUpdateParams {
  const factory _RenameKey(final DerivedKeyUpdateParamsRenameKey data) =
      _$RenameKeyImpl;

  factory _RenameKey.fromJson(Map<String, dynamic> json) =
      _$RenameKeyImpl.fromJson;

  @override
  DerivedKeyUpdateParamsRenameKey get data;
  @JsonKey(ignore: true)
  _$$RenameKeyImplCopyWith<_$RenameKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ChangePasswordImplCopyWith<$Res> {
  factory _$$ChangePasswordImplCopyWith(_$ChangePasswordImpl value,
          $Res Function(_$ChangePasswordImpl) then) =
      __$$ChangePasswordImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DerivedKeyUpdateParamsChangePassword data});

  $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> get data;
}

/// @nodoc
class __$$ChangePasswordImplCopyWithImpl<$Res>
    extends _$DerivedKeyUpdateParamsCopyWithImpl<$Res, _$ChangePasswordImpl>
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
              as DerivedKeyUpdateParamsChangePassword,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res> get data {
    return $DerivedKeyUpdateParamsChangePasswordCopyWith<$Res>(_value.data,
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
  final DerivedKeyUpdateParamsChangePassword data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DerivedKeyUpdateParams.changePassword(data: $data)';
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
    required TResult Function(DerivedKeyUpdateParamsRenameKey data) renameKey,
    required TResult Function(DerivedKeyUpdateParamsChangePassword data)
        changePassword,
  }) {
    return changePassword(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeyUpdateParamsRenameKey data)? renameKey,
    TResult? Function(DerivedKeyUpdateParamsChangePassword data)?
        changePassword,
  }) {
    return changePassword?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeyUpdateParamsRenameKey data)? renameKey,
    TResult Function(DerivedKeyUpdateParamsChangePassword data)? changePassword,
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
    required TResult Function(_RenameKey value) renameKey,
    required TResult Function(_ChangePassword value) changePassword,
  }) {
    return changePassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_RenameKey value)? renameKey,
    TResult? Function(_ChangePassword value)? changePassword,
  }) {
    return changePassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_RenameKey value)? renameKey,
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

abstract class _ChangePassword implements DerivedKeyUpdateParams {
  const factory _ChangePassword(
      final DerivedKeyUpdateParamsChangePassword data) = _$ChangePasswordImpl;

  factory _ChangePassword.fromJson(Map<String, dynamic> json) =
      _$ChangePasswordImpl.fromJson;

  @override
  DerivedKeyUpdateParamsChangePassword get data;
  @JsonKey(ignore: true)
  _$$ChangePasswordImplCopyWith<_$ChangePasswordImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
