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
abstract class _$$NeverImplCopyWith<$Res> {
  factory _$$NeverImplCopyWith(
          _$NeverImpl value, $Res Function(_$NeverImpl) then) =
      __$$NeverImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NeverImplCopyWithImpl<$Res>
    extends _$ExpirationCopyWithImpl<$Res, _$NeverImpl>
    implements _$$NeverImplCopyWith<$Res> {
  __$$NeverImplCopyWithImpl(
      _$NeverImpl _value, $Res Function(_$NeverImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NeverImpl implements _Never {
  const _$NeverImpl({final String? $type}) : $type = $type ?? 'never';

  factory _$NeverImpl.fromJson(Map<String, dynamic> json) =>
      _$$NeverImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'Expiration.never()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NeverImpl);
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
    return _$$NeverImplToJson(
      this,
    );
  }
}

abstract class _Never implements Expiration {
  const factory _Never() = _$NeverImpl;

  factory _Never.fromJson(Map<String, dynamic> json) = _$NeverImpl.fromJson;
}

/// @nodoc
abstract class _$$TimeoutImplCopyWith<$Res> {
  factory _$$TimeoutImplCopyWith(
          _$TimeoutImpl value, $Res Function(_$TimeoutImpl) then) =
      __$$TimeoutImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$$TimeoutImplCopyWithImpl<$Res>
    extends _$ExpirationCopyWithImpl<$Res, _$TimeoutImpl>
    implements _$$TimeoutImplCopyWith<$Res> {
  __$$TimeoutImplCopyWithImpl(
      _$TimeoutImpl _value, $Res Function(_$TimeoutImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TimeoutImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimeoutImpl implements _Timeout {
  const _$TimeoutImpl(this.data, {final String? $type})
      : $type = $type ?? 'timeout';

  factory _$TimeoutImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimeoutImplFromJson(json);

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
            other is _$TimeoutImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimeoutImplCopyWith<_$TimeoutImpl> get copyWith =>
      __$$TimeoutImplCopyWithImpl<_$TimeoutImpl>(this, _$identity);

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
    return _$$TimeoutImplToJson(
      this,
    );
  }
}

abstract class _Timeout implements Expiration {
  const factory _Timeout(final int data) = _$TimeoutImpl;

  factory _Timeout.fromJson(Map<String, dynamic> json) = _$TimeoutImpl.fromJson;

  int get data;
  @JsonKey(ignore: true)
  _$$TimeoutImplCopyWith<_$TimeoutImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TimestampImplCopyWith<$Res> {
  factory _$$TimestampImplCopyWith(
          _$TimestampImpl value, $Res Function(_$TimestampImpl) then) =
      __$$TimestampImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$$TimestampImplCopyWithImpl<$Res>
    extends _$ExpirationCopyWithImpl<$Res, _$TimestampImpl>
    implements _$$TimestampImplCopyWith<$Res> {
  __$$TimestampImplCopyWithImpl(
      _$TimestampImpl _value, $Res Function(_$TimestampImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TimestampImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TimestampImpl implements _Timestamp {
  const _$TimestampImpl(this.data, {final String? $type})
      : $type = $type ?? 'timestamp';

  factory _$TimestampImpl.fromJson(Map<String, dynamic> json) =>
      _$$TimestampImplFromJson(json);

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
            other is _$TimestampImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TimestampImplCopyWith<_$TimestampImpl> get copyWith =>
      __$$TimestampImplCopyWithImpl<_$TimestampImpl>(this, _$identity);

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
    return _$$TimestampImplToJson(
      this,
    );
  }
}

abstract class _Timestamp implements Expiration {
  const factory _Timestamp(final int data) = _$TimestampImpl;

  factory _Timestamp.fromJson(Map<String, dynamic> json) =
      _$TimestampImpl.fromJson;

  int get data;
  @JsonKey(ignore: true)
  _$$TimestampImplCopyWith<_$TimestampImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
