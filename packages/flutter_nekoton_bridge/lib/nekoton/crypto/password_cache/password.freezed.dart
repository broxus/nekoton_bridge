// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Password _$PasswordFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'explicit':
      return _Explicit.fromJson(json);
    case 'from_cache':
      return _FromCache.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Password', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Password {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordExplicit data) explicit,
    required TResult Function() fromCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordExplicit data)? explicit,
    TResult? Function()? fromCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordExplicit data)? explicit,
    TResult Function()? fromCache,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Explicit value) explicit,
    required TResult Function(_FromCache value) fromCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Explicit value)? explicit,
    TResult? Function(_FromCache value)? fromCache,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Explicit value)? explicit,
    TResult Function(_FromCache value)? fromCache,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Password to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCopyWith<$Res> {
  factory $PasswordCopyWith(Password value, $Res Function(Password) then) =
      _$PasswordCopyWithImpl<$Res, Password>;
}

/// @nodoc
class _$PasswordCopyWithImpl<$Res, $Val extends Password>
    implements $PasswordCopyWith<$Res> {
  _$PasswordCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$ExplicitImplCopyWith<$Res> {
  factory _$$ExplicitImplCopyWith(
          _$ExplicitImpl value, $Res Function(_$ExplicitImpl) then) =
      __$$ExplicitImplCopyWithImpl<$Res>;
  @useResult
  $Res call({PasswordExplicit data});

  $PasswordExplicitCopyWith<$Res> get data;
}

/// @nodoc
class __$$ExplicitImplCopyWithImpl<$Res>
    extends _$PasswordCopyWithImpl<$Res, _$ExplicitImpl>
    implements _$$ExplicitImplCopyWith<$Res> {
  __$$ExplicitImplCopyWithImpl(
      _$ExplicitImpl _value, $Res Function(_$ExplicitImpl) _then)
      : super(_value, _then);

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$ExplicitImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PasswordExplicit,
    ));
  }

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordExplicitCopyWith<$Res> get data {
    return $PasswordExplicitCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$ExplicitImpl implements _Explicit {
  const _$ExplicitImpl(this.data, {final String? $type})
      : $type = $type ?? 'explicit';

  factory _$ExplicitImpl.fromJson(Map<String, dynamic> json) =>
      _$$ExplicitImplFromJson(json);

  @override
  final PasswordExplicit data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Password.explicit(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ExplicitImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ExplicitImplCopyWith<_$ExplicitImpl> get copyWith =>
      __$$ExplicitImplCopyWithImpl<_$ExplicitImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordExplicit data) explicit,
    required TResult Function() fromCache,
  }) {
    return explicit(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordExplicit data)? explicit,
    TResult? Function()? fromCache,
  }) {
    return explicit?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordExplicit data)? explicit,
    TResult Function()? fromCache,
    required TResult orElse(),
  }) {
    if (explicit != null) {
      return explicit(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Explicit value) explicit,
    required TResult Function(_FromCache value) fromCache,
  }) {
    return explicit(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Explicit value)? explicit,
    TResult? Function(_FromCache value)? fromCache,
  }) {
    return explicit?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Explicit value)? explicit,
    TResult Function(_FromCache value)? fromCache,
    required TResult orElse(),
  }) {
    if (explicit != null) {
      return explicit(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$ExplicitImplToJson(
      this,
    );
  }
}

abstract class _Explicit implements Password {
  const factory _Explicit(final PasswordExplicit data) = _$ExplicitImpl;

  factory _Explicit.fromJson(Map<String, dynamic> json) =
      _$ExplicitImpl.fromJson;

  PasswordExplicit get data;

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ExplicitImplCopyWith<_$ExplicitImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$FromCacheImplCopyWith<$Res> {
  factory _$$FromCacheImplCopyWith(
          _$FromCacheImpl value, $Res Function(_$FromCacheImpl) then) =
      __$$FromCacheImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FromCacheImplCopyWithImpl<$Res>
    extends _$PasswordCopyWithImpl<$Res, _$FromCacheImpl>
    implements _$$FromCacheImplCopyWith<$Res> {
  __$$FromCacheImplCopyWithImpl(
      _$FromCacheImpl _value, $Res Function(_$FromCacheImpl) _then)
      : super(_value, _then);

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$FromCacheImpl implements _FromCache {
  const _$FromCacheImpl({final String? $type}) : $type = $type ?? 'from_cache';

  factory _$FromCacheImpl.fromJson(Map<String, dynamic> json) =>
      _$$FromCacheImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Password.fromCache()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FromCacheImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(PasswordExplicit data) explicit,
    required TResult Function() fromCache,
  }) {
    return fromCache();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(PasswordExplicit data)? explicit,
    TResult? Function()? fromCache,
  }) {
    return fromCache?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(PasswordExplicit data)? explicit,
    TResult Function()? fromCache,
    required TResult orElse(),
  }) {
    if (fromCache != null) {
      return fromCache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Explicit value) explicit,
    required TResult Function(_FromCache value) fromCache,
  }) {
    return fromCache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Explicit value)? explicit,
    TResult? Function(_FromCache value)? fromCache,
  }) {
    return fromCache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Explicit value)? explicit,
    TResult Function(_FromCache value)? fromCache,
    required TResult orElse(),
  }) {
    if (fromCache != null) {
      return fromCache(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$FromCacheImplToJson(
      this,
    );
  }
}

abstract class _FromCache implements Password {
  const factory _FromCache() = _$FromCacheImpl;

  factory _FromCache.fromJson(Map<String, dynamic> json) =
      _$FromCacheImpl.fromJson;
}
