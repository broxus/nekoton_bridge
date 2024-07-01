// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_sign_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DerivedKeyPassword _$DerivedKeyPasswordFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'by_account_id':
      return _ByAccountId.fromJson(json);
    case 'by_public_key':
      return _ByPublicKey.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'DerivedKeyPassword',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$DerivedKeyPassword {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeyPasswordByAccountId data) byAccountId,
    required TResult Function(DerivedKeyPasswordByPublicKey data) byPublicKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeyPasswordByAccountId data)? byAccountId,
    TResult? Function(DerivedKeyPasswordByPublicKey data)? byPublicKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeyPasswordByAccountId data)? byAccountId,
    TResult Function(DerivedKeyPasswordByPublicKey data)? byPublicKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ByAccountId value) byAccountId,
    required TResult Function(_ByPublicKey value) byPublicKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ByAccountId value)? byAccountId,
    TResult? Function(_ByPublicKey value)? byPublicKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ByAccountId value)? byAccountId,
    TResult Function(_ByPublicKey value)? byPublicKey,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyPasswordCopyWith<$Res> {
  factory $DerivedKeyPasswordCopyWith(
          DerivedKeyPassword value, $Res Function(DerivedKeyPassword) then) =
      _$DerivedKeyPasswordCopyWithImpl<$Res, DerivedKeyPassword>;
}

/// @nodoc
class _$DerivedKeyPasswordCopyWithImpl<$Res, $Val extends DerivedKeyPassword>
    implements $DerivedKeyPasswordCopyWith<$Res> {
  _$DerivedKeyPasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ByAccountIdImplCopyWith<$Res> {
  factory _$$ByAccountIdImplCopyWith(
          _$ByAccountIdImpl value, $Res Function(_$ByAccountIdImpl) then) =
      __$$ByAccountIdImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DerivedKeyPasswordByAccountId data});

  $DerivedKeyPasswordByAccountIdCopyWith<$Res> get data;
}

/// @nodoc
class __$$ByAccountIdImplCopyWithImpl<$Res>
    extends _$DerivedKeyPasswordCopyWithImpl<$Res, _$ByAccountIdImpl>
    implements _$$ByAccountIdImplCopyWith<$Res> {
  __$$ByAccountIdImplCopyWithImpl(
      _$ByAccountIdImpl _value, $Res Function(_$ByAccountIdImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ByAccountIdImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyPasswordByAccountId,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyPasswordByAccountIdCopyWith<$Res> get data {
    return $DerivedKeyPasswordByAccountIdCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ByAccountIdImpl implements _ByAccountId {
  const _$ByAccountIdImpl(this.data, {final String? $type})
      : $type = $type ?? 'by_account_id';

  factory _$ByAccountIdImpl.fromJson(Map<String, dynamic> json) =>
      _$$ByAccountIdImplFromJson(json);

  @override
  final DerivedKeyPasswordByAccountId data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DerivedKeyPassword.byAccountId(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ByAccountIdImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ByAccountIdImplCopyWith<_$ByAccountIdImpl> get copyWith =>
      __$$ByAccountIdImplCopyWithImpl<_$ByAccountIdImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeyPasswordByAccountId data) byAccountId,
    required TResult Function(DerivedKeyPasswordByPublicKey data) byPublicKey,
  }) {
    return byAccountId(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeyPasswordByAccountId data)? byAccountId,
    TResult? Function(DerivedKeyPasswordByPublicKey data)? byPublicKey,
  }) {
    return byAccountId?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeyPasswordByAccountId data)? byAccountId,
    TResult Function(DerivedKeyPasswordByPublicKey data)? byPublicKey,
    required TResult orElse(),
  }) {
    if (byAccountId != null) {
      return byAccountId(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ByAccountId value) byAccountId,
    required TResult Function(_ByPublicKey value) byPublicKey,
  }) {
    return byAccountId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ByAccountId value)? byAccountId,
    TResult? Function(_ByPublicKey value)? byPublicKey,
  }) {
    return byAccountId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ByAccountId value)? byAccountId,
    TResult Function(_ByPublicKey value)? byPublicKey,
    required TResult orElse(),
  }) {
    if (byAccountId != null) {
      return byAccountId(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ByAccountIdImplToJson(
      this,
    );
  }
}

abstract class _ByAccountId implements DerivedKeyPassword {
  const factory _ByAccountId(final DerivedKeyPasswordByAccountId data) =
      _$ByAccountIdImpl;

  factory _ByAccountId.fromJson(Map<String, dynamic> json) =
      _$ByAccountIdImpl.fromJson;

  @override
  DerivedKeyPasswordByAccountId get data;
  @JsonKey(ignore: true)
  _$$ByAccountIdImplCopyWith<_$ByAccountIdImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ByPublicKeyImplCopyWith<$Res> {
  factory _$$ByPublicKeyImplCopyWith(
          _$ByPublicKeyImpl value, $Res Function(_$ByPublicKeyImpl) then) =
      __$$ByPublicKeyImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DerivedKeyPasswordByPublicKey data});

  $DerivedKeyPasswordByPublicKeyCopyWith<$Res> get data;
}

/// @nodoc
class __$$ByPublicKeyImplCopyWithImpl<$Res>
    extends _$DerivedKeyPasswordCopyWithImpl<$Res, _$ByPublicKeyImpl>
    implements _$$ByPublicKeyImplCopyWith<$Res> {
  __$$ByPublicKeyImplCopyWithImpl(
      _$ByPublicKeyImpl _value, $Res Function(_$ByPublicKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ByPublicKeyImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyPasswordByPublicKey,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyPasswordByPublicKeyCopyWith<$Res> get data {
    return $DerivedKeyPasswordByPublicKeyCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ByPublicKeyImpl implements _ByPublicKey {
  const _$ByPublicKeyImpl(this.data, {final String? $type})
      : $type = $type ?? 'by_public_key';

  factory _$ByPublicKeyImpl.fromJson(Map<String, dynamic> json) =>
      _$$ByPublicKeyImplFromJson(json);

  @override
  final DerivedKeyPasswordByPublicKey data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DerivedKeyPassword.byPublicKey(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ByPublicKeyImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ByPublicKeyImplCopyWith<_$ByPublicKeyImpl> get copyWith =>
      __$$ByPublicKeyImplCopyWithImpl<_$ByPublicKeyImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeyPasswordByAccountId data) byAccountId,
    required TResult Function(DerivedKeyPasswordByPublicKey data) byPublicKey,
  }) {
    return byPublicKey(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeyPasswordByAccountId data)? byAccountId,
    TResult? Function(DerivedKeyPasswordByPublicKey data)? byPublicKey,
  }) {
    return byPublicKey?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeyPasswordByAccountId data)? byAccountId,
    TResult Function(DerivedKeyPasswordByPublicKey data)? byPublicKey,
    required TResult orElse(),
  }) {
    if (byPublicKey != null) {
      return byPublicKey(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_ByAccountId value) byAccountId,
    required TResult Function(_ByPublicKey value) byPublicKey,
  }) {
    return byPublicKey(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_ByAccountId value)? byAccountId,
    TResult? Function(_ByPublicKey value)? byPublicKey,
  }) {
    return byPublicKey?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_ByAccountId value)? byAccountId,
    TResult Function(_ByPublicKey value)? byPublicKey,
    required TResult orElse(),
  }) {
    if (byPublicKey != null) {
      return byPublicKey(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ByPublicKeyImplToJson(
      this,
    );
  }
}

abstract class _ByPublicKey implements DerivedKeyPassword {
  const factory _ByPublicKey(final DerivedKeyPasswordByPublicKey data) =
      _$ByPublicKeyImpl;

  factory _ByPublicKey.fromJson(Map<String, dynamic> json) =
      _$ByPublicKeyImpl.fromJson;

  @override
  DerivedKeyPasswordByPublicKey get data;
  @JsonKey(ignore: true)
  _$$ByPublicKeyImplCopyWith<_$ByPublicKeyImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
