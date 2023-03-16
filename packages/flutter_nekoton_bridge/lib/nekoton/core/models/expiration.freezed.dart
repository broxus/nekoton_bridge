// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expiration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Expiration _$ExpirationFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'never':
      return _Never.fromJson(json);
    case 'timeout':
      return _Timeout.fromJson(json);
    case 'timestamp':
      return _Timestamp.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Expiration', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Expiration {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() never,
    required TResult Function(int data) timeout,
    required TResult Function(int data) timestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? never,
    TResult? Function(int data)? timeout,
    TResult? Function(int data)? timestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? never,
    TResult Function(int data)? timeout,
    TResult Function(int data)? timestamp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Never value) never,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Timestamp value) timestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Never value)? never,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Timestamp value)? timestamp,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Never value)? never,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Timestamp value)? timestamp,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExpirationCopyWith<$Res> {
  factory $ExpirationCopyWith(
          Expiration value, $Res Function(Expiration) then) =
      _$ExpirationCopyWithImpl<$Res, Expiration>;
}

/// @nodoc
class _$ExpirationCopyWithImpl<$Res, $Val extends Expiration>
    implements $ExpirationCopyWith<$Res> {
  _$ExpirationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NeverCopyWith<$Res> {
  factory _$$_NeverCopyWith(_$_Never value, $Res Function(_$_Never) then) =
      __$$_NeverCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NeverCopyWithImpl<$Res>
    extends _$ExpirationCopyWithImpl<$Res, _$_Never>
    implements _$$_NeverCopyWith<$Res> {
  __$$_NeverCopyWithImpl(_$_Never _value, $Res Function(_$_Never) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Never implements _Never {
  const _$_Never({final String? $type}) : $type = $type ?? 'never';

  factory _$_Never.fromJson(Map<String, dynamic> json) =>
      _$$_NeverFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Expiration.never()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Never);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() never,
    required TResult Function(int data) timeout,
    required TResult Function(int data) timestamp,
  }) {
    return never();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? never,
    TResult? Function(int data)? timeout,
    TResult? Function(int data)? timestamp,
  }) {
    return never?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? never,
    TResult Function(int data)? timeout,
    TResult Function(int data)? timestamp,
    required TResult orElse(),
  }) {
    if (never != null) {
      return never();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Never value) never,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Timestamp value) timestamp,
  }) {
    return never(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Never value)? never,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Timestamp value)? timestamp,
  }) {
    return never?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Never value)? never,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Timestamp value)? timestamp,
    required TResult orElse(),
  }) {
    if (never != null) {
      return never(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NeverToJson(
      this,
    );
  }
}

abstract class _Never implements Expiration {
  const factory _Never() = _$_Never;

  factory _Never.fromJson(Map<String, dynamic> json) = _$_Never.fromJson;
}

/// @nodoc
abstract class _$$_TimeoutCopyWith<$Res> {
  factory _$$_TimeoutCopyWith(
          _$_Timeout value, $Res Function(_$_Timeout) then) =
      __$$_TimeoutCopyWithImpl<$Res>;
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$$_TimeoutCopyWithImpl<$Res>
    extends _$ExpirationCopyWithImpl<$Res, _$_Timeout>
    implements _$$_TimeoutCopyWith<$Res> {
  __$$_TimeoutCopyWithImpl(_$_Timeout _value, $Res Function(_$_Timeout) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Timeout(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Timeout implements _Timeout {
  const _$_Timeout(this.data, {final String? $type})
      : $type = $type ?? 'timeout';

  factory _$_Timeout.fromJson(Map<String, dynamic> json) =>
      _$$_TimeoutFromJson(json);

  @override
  final int data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Expiration.timeout(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Timeout &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimeoutCopyWith<_$_Timeout> get copyWith =>
      __$$_TimeoutCopyWithImpl<_$_Timeout>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() never,
    required TResult Function(int data) timeout,
    required TResult Function(int data) timestamp,
  }) {
    return timeout(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? never,
    TResult? Function(int data)? timeout,
    TResult? Function(int data)? timestamp,
  }) {
    return timeout?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? never,
    TResult Function(int data)? timeout,
    TResult Function(int data)? timestamp,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Never value) never,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Timestamp value) timestamp,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Never value)? never,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Timestamp value)? timestamp,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Never value)? never,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Timestamp value)? timestamp,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimeoutToJson(
      this,
    );
  }
}

abstract class _Timeout implements Expiration {
  const factory _Timeout(final int data) = _$_Timeout;

  factory _Timeout.fromJson(Map<String, dynamic> json) = _$_Timeout.fromJson;

  int get data;
  @JsonKey(ignore: true)
  _$$_TimeoutCopyWith<_$_Timeout> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TimestampCopyWith<$Res> {
  factory _$$_TimestampCopyWith(
          _$_Timestamp value, $Res Function(_$_Timestamp) then) =
      __$$_TimestampCopyWithImpl<$Res>;
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$$_TimestampCopyWithImpl<$Res>
    extends _$ExpirationCopyWithImpl<$Res, _$_Timestamp>
    implements _$$_TimestampCopyWith<$Res> {
  __$$_TimestampCopyWithImpl(
      _$_Timestamp _value, $Res Function(_$_Timestamp) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Timestamp(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Timestamp implements _Timestamp {
  const _$_Timestamp(this.data, {final String? $type})
      : $type = $type ?? 'timestamp';

  factory _$_Timestamp.fromJson(Map<String, dynamic> json) =>
      _$$_TimestampFromJson(json);

  @override
  final int data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Expiration.timestamp(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Timestamp &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TimestampCopyWith<_$_Timestamp> get copyWith =>
      __$$_TimestampCopyWithImpl<_$_Timestamp>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() never,
    required TResult Function(int data) timeout,
    required TResult Function(int data) timestamp,
  }) {
    return timestamp(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? never,
    TResult? Function(int data)? timeout,
    TResult? Function(int data)? timestamp,
  }) {
    return timestamp?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? never,
    TResult Function(int data)? timeout,
    TResult Function(int data)? timestamp,
    required TResult orElse(),
  }) {
    if (timestamp != null) {
      return timestamp(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Never value) never,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Timestamp value) timestamp,
  }) {
    return timestamp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Never value)? never,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Timestamp value)? timestamp,
  }) {
    return timestamp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Never value)? never,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Timestamp value)? timestamp,
    required TResult orElse(),
  }) {
    if (timestamp != null) {
      return timestamp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TimestampToJson(
      this,
    );
  }
}

abstract class _Timestamp implements Expiration {
  const factory _Timestamp(final int data) = _$_Timestamp;

  factory _Timestamp.fromJson(Map<String, dynamic> json) =
      _$_Timestamp.fromJson;

  int get data;
  @JsonKey(ignore: true)
  _$$_TimestampCopyWith<_$_Timestamp> get copyWith =>
      throw _privateConstructorUsedError;
}
