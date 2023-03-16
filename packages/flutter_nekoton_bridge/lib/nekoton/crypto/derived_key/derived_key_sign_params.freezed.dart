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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeySignParams _$DerivedKeySignParamsFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'by_account_id':
      return _ByAccountId.fromJson(json);
    case 'by_public_key':
      return _ByPublicKey.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'DerivedKeySignParams',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$DerivedKeySignParams {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeySignParamsByAccountId data) byAccountId,
    required TResult Function(DerivedKeySignParamsByPublicKey data) byPublicKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeySignParamsByAccountId data)? byAccountId,
    TResult? Function(DerivedKeySignParamsByPublicKey data)? byPublicKey,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeySignParamsByAccountId data)? byAccountId,
    TResult Function(DerivedKeySignParamsByPublicKey data)? byPublicKey,
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
abstract class $DerivedKeySignParamsCopyWith<$Res> {
  factory $DerivedKeySignParamsCopyWith(DerivedKeySignParams value,
          $Res Function(DerivedKeySignParams) then) =
      _$DerivedKeySignParamsCopyWithImpl<$Res, DerivedKeySignParams>;
}

/// @nodoc
class _$DerivedKeySignParamsCopyWithImpl<$Res,
        $Val extends DerivedKeySignParams>
    implements $DerivedKeySignParamsCopyWith<$Res> {
  _$DerivedKeySignParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ByAccountIdCopyWith<$Res> {
  factory _$$_ByAccountIdCopyWith(
          _$_ByAccountId value, $Res Function(_$_ByAccountId) then) =
      __$$_ByAccountIdCopyWithImpl<$Res>;
  @useResult
  $Res call({DerivedKeySignParamsByAccountId data});

  $DerivedKeySignParamsByAccountIdCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ByAccountIdCopyWithImpl<$Res>
    extends _$DerivedKeySignParamsCopyWithImpl<$Res, _$_ByAccountId>
    implements _$$_ByAccountIdCopyWith<$Res> {
  __$$_ByAccountIdCopyWithImpl(
      _$_ByAccountId _value, $Res Function(_$_ByAccountId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ByAccountId(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeySignParamsByAccountId,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DerivedKeySignParamsByAccountIdCopyWith<$Res> get data {
    return $DerivedKeySignParamsByAccountIdCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_ByAccountId implements _ByAccountId {
  const _$_ByAccountId(this.data, {final String? $type})
      : $type = $type ?? 'by_account_id';

  factory _$_ByAccountId.fromJson(Map<String, dynamic> json) =>
      _$$_ByAccountIdFromJson(json);

  @override
  final DerivedKeySignParamsByAccountId data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DerivedKeySignParams.byAccountId(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ByAccountId &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ByAccountIdCopyWith<_$_ByAccountId> get copyWith =>
      __$$_ByAccountIdCopyWithImpl<_$_ByAccountId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeySignParamsByAccountId data) byAccountId,
    required TResult Function(DerivedKeySignParamsByPublicKey data) byPublicKey,
  }) {
    return byAccountId(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeySignParamsByAccountId data)? byAccountId,
    TResult? Function(DerivedKeySignParamsByPublicKey data)? byPublicKey,
  }) {
    return byAccountId?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeySignParamsByAccountId data)? byAccountId,
    TResult Function(DerivedKeySignParamsByPublicKey data)? byPublicKey,
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
    return _$$_ByAccountIdToJson(
      this,
    );
  }
}

abstract class _ByAccountId implements DerivedKeySignParams {
  const factory _ByAccountId(final DerivedKeySignParamsByAccountId data) =
      _$_ByAccountId;

  factory _ByAccountId.fromJson(Map<String, dynamic> json) =
      _$_ByAccountId.fromJson;

  @override
  DerivedKeySignParamsByAccountId get data;
  @JsonKey(ignore: true)
  _$$_ByAccountIdCopyWith<_$_ByAccountId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_ByPublicKeyCopyWith<$Res> {
  factory _$$_ByPublicKeyCopyWith(
          _$_ByPublicKey value, $Res Function(_$_ByPublicKey) then) =
      __$$_ByPublicKeyCopyWithImpl<$Res>;
  @useResult
  $Res call({DerivedKeySignParamsByPublicKey data});

  $DerivedKeySignParamsByPublicKeyCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ByPublicKeyCopyWithImpl<$Res>
    extends _$DerivedKeySignParamsCopyWithImpl<$Res, _$_ByPublicKey>
    implements _$$_ByPublicKeyCopyWith<$Res> {
  __$$_ByPublicKeyCopyWithImpl(
      _$_ByPublicKey _value, $Res Function(_$_ByPublicKey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_ByPublicKey(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeySignParamsByPublicKey,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DerivedKeySignParamsByPublicKeyCopyWith<$Res> get data {
    return $DerivedKeySignParamsByPublicKeyCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_ByPublicKey implements _ByPublicKey {
  const _$_ByPublicKey(this.data, {final String? $type})
      : $type = $type ?? 'by_public_key';

  factory _$_ByPublicKey.fromJson(Map<String, dynamic> json) =>
      _$$_ByPublicKeyFromJson(json);

  @override
  final DerivedKeySignParamsByPublicKey data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DerivedKeySignParams.byPublicKey(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ByPublicKey &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ByPublicKeyCopyWith<_$_ByPublicKey> get copyWith =>
      __$$_ByPublicKeyCopyWithImpl<_$_ByPublicKey>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeySignParamsByAccountId data) byAccountId,
    required TResult Function(DerivedKeySignParamsByPublicKey data) byPublicKey,
  }) {
    return byPublicKey(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeySignParamsByAccountId data)? byAccountId,
    TResult? Function(DerivedKeySignParamsByPublicKey data)? byPublicKey,
  }) {
    return byPublicKey?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeySignParamsByAccountId data)? byAccountId,
    TResult Function(DerivedKeySignParamsByPublicKey data)? byPublicKey,
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
    return _$$_ByPublicKeyToJson(
      this,
    );
  }
}

abstract class _ByPublicKey implements DerivedKeySignParams {
  const factory _ByPublicKey(final DerivedKeySignParamsByPublicKey data) =
      _$_ByPublicKey;

  factory _ByPublicKey.fromJson(Map<String, dynamic> json) =
      _$_ByPublicKey.fromJson;

  @override
  DerivedKeySignParamsByPublicKey get data;
  @JsonKey(ignore: true)
  _$$_ByPublicKeyCopyWith<_$_ByPublicKey> get copyWith =>
      throw _privateConstructorUsedError;
}
