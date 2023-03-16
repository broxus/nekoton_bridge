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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$_ExplicitCopyWith<$Res> {
  factory _$$_ExplicitCopyWith(
          _$_Explicit value, $Res Function(_$_Explicit) then) =
      __$$_ExplicitCopyWithImpl<$Res>;
  @useResult
  $Res call({PasswordExplicit data});

  $PasswordExplicitCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ExplicitCopyWithImpl<$Res>
    extends _$PasswordCopyWithImpl<$Res, _$_Explicit>
    implements _$$_ExplicitCopyWith<$Res> {
  __$$_ExplicitCopyWithImpl(
      _$_Explicit _value, $Res Function(_$_Explicit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Explicit(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as PasswordExplicit,
    ));
  }

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
class _$_Explicit implements _Explicit {
  const _$_Explicit(this.data, {final String? $type})
      : $type = $type ?? 'explicit';

  factory _$_Explicit.fromJson(Map<String, dynamic> json) =>
      _$$_ExplicitFromJson(json);

  @override
  final PasswordExplicit data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Password.explicit(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Explicit &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExplicitCopyWith<_$_Explicit> get copyWith =>
      __$$_ExplicitCopyWithImpl<_$_Explicit>(this, _$identity);

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
    return _$$_ExplicitToJson(
      this,
    );
  }
}

abstract class _Explicit implements Password {
  const factory _Explicit(final PasswordExplicit data) = _$_Explicit;

  factory _Explicit.fromJson(Map<String, dynamic> json) = _$_Explicit.fromJson;

  PasswordExplicit get data;
  @JsonKey(ignore: true)
  _$$_ExplicitCopyWith<_$_Explicit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_FromCacheCopyWith<$Res> {
  factory _$$_FromCacheCopyWith(
          _$_FromCache value, $Res Function(_$_FromCache) then) =
      __$$_FromCacheCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FromCacheCopyWithImpl<$Res>
    extends _$PasswordCopyWithImpl<$Res, _$_FromCache>
    implements _$$_FromCacheCopyWith<$Res> {
  __$$_FromCacheCopyWithImpl(
      _$_FromCache _value, $Res Function(_$_FromCache) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_FromCache implements _FromCache {
  const _$_FromCache({final String? $type}) : $type = $type ?? 'from_cache';

  factory _$_FromCache.fromJson(Map<String, dynamic> json) =>
      _$$_FromCacheFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Password.fromCache()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_FromCache);
  }

  @JsonKey(ignore: true)
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
    return _$$_FromCacheToJson(
      this,
    );
  }
}

abstract class _FromCache implements Password {
  const factory _FromCache() = _$_FromCache;

  factory _FromCache.fromJson(Map<String, dynamic> json) =
      _$_FromCache.fromJson;
}
