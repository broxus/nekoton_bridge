// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'known_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

KnownPayload _$KnownPayloadFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'comment':
      return _Comment.fromJson(json);
    case 'token_outgoing_transfer':
      return _TokenOutgoingTransfer.fromJson(json);
    case 'token_swap_back':
      return _TokenSwapBack.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'KnownPayload',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$KnownPayload {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(TokenOutgoingTransfer data) tokenOutgoingTransfer,
    required TResult Function(TokenSwapBack data) tokenSwapBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(TokenOutgoingTransfer data)? tokenOutgoingTransfer,
    TResult? Function(TokenSwapBack data)? tokenSwapBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(TokenOutgoingTransfer data)? tokenOutgoingTransfer,
    TResult Function(TokenSwapBack data)? tokenSwapBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_TokenOutgoingTransfer value)
        tokenOutgoingTransfer,
    required TResult Function(_TokenSwapBack value) tokenSwapBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_TokenOutgoingTransfer value)? tokenOutgoingTransfer,
    TResult? Function(_TokenSwapBack value)? tokenSwapBack,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_TokenOutgoingTransfer value)? tokenOutgoingTransfer,
    TResult Function(_TokenSwapBack value)? tokenSwapBack,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this KnownPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KnownPayloadCopyWith<$Res> {
  factory $KnownPayloadCopyWith(
          KnownPayload value, $Res Function(KnownPayload) then) =
      _$KnownPayloadCopyWithImpl<$Res, KnownPayload>;
}

/// @nodoc
class _$KnownPayloadCopyWithImpl<$Res, $Val extends KnownPayload>
    implements $KnownPayloadCopyWith<$Res> {
  _$KnownPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$CommentImplCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$KnownPayloadCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CommentImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(this.data, {final String? $type})
      : $type = $type ?? 'comment';

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'KnownPayload.comment(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(TokenOutgoingTransfer data) tokenOutgoingTransfer,
    required TResult Function(TokenSwapBack data) tokenSwapBack,
  }) {
    return comment(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(TokenOutgoingTransfer data)? tokenOutgoingTransfer,
    TResult? Function(TokenSwapBack data)? tokenSwapBack,
  }) {
    return comment?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(TokenOutgoingTransfer data)? tokenOutgoingTransfer,
    TResult Function(TokenSwapBack data)? tokenSwapBack,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_TokenOutgoingTransfer value)
        tokenOutgoingTransfer,
    required TResult Function(_TokenSwapBack value) tokenSwapBack,
  }) {
    return comment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_TokenOutgoingTransfer value)? tokenOutgoingTransfer,
    TResult? Function(_TokenSwapBack value)? tokenSwapBack,
  }) {
    return comment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_TokenOutgoingTransfer value)? tokenOutgoingTransfer,
    TResult Function(_TokenSwapBack value)? tokenSwapBack,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements KnownPayload {
  const factory _Comment(final String data) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  String get data;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenOutgoingTransferImplCopyWith<$Res> {
  factory _$$TokenOutgoingTransferImplCopyWith(
          _$TokenOutgoingTransferImpl value,
          $Res Function(_$TokenOutgoingTransferImpl) then) =
      __$$TokenOutgoingTransferImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenOutgoingTransfer data});

  $TokenOutgoingTransferCopyWith<$Res> get data;
}

/// @nodoc
class __$$TokenOutgoingTransferImplCopyWithImpl<$Res>
    extends _$KnownPayloadCopyWithImpl<$Res, _$TokenOutgoingTransferImpl>
    implements _$$TokenOutgoingTransferImplCopyWith<$Res> {
  __$$TokenOutgoingTransferImplCopyWithImpl(_$TokenOutgoingTransferImpl _value,
      $Res Function(_$TokenOutgoingTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TokenOutgoingTransferImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenOutgoingTransfer,
    ));
  }

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenOutgoingTransferCopyWith<$Res> get data {
    return $TokenOutgoingTransferCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenOutgoingTransferImpl implements _TokenOutgoingTransfer {
  const _$TokenOutgoingTransferImpl(this.data, {final String? $type})
      : $type = $type ?? 'token_outgoing_transfer';

  factory _$TokenOutgoingTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenOutgoingTransferImplFromJson(json);

  @override
  final TokenOutgoingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'KnownPayload.tokenOutgoingTransfer(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenOutgoingTransferImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenOutgoingTransferImplCopyWith<_$TokenOutgoingTransferImpl>
      get copyWith => __$$TokenOutgoingTransferImplCopyWithImpl<
          _$TokenOutgoingTransferImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(TokenOutgoingTransfer data) tokenOutgoingTransfer,
    required TResult Function(TokenSwapBack data) tokenSwapBack,
  }) {
    return tokenOutgoingTransfer(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(TokenOutgoingTransfer data)? tokenOutgoingTransfer,
    TResult? Function(TokenSwapBack data)? tokenSwapBack,
  }) {
    return tokenOutgoingTransfer?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(TokenOutgoingTransfer data)? tokenOutgoingTransfer,
    TResult Function(TokenSwapBack data)? tokenSwapBack,
    required TResult orElse(),
  }) {
    if (tokenOutgoingTransfer != null) {
      return tokenOutgoingTransfer(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_TokenOutgoingTransfer value)
        tokenOutgoingTransfer,
    required TResult Function(_TokenSwapBack value) tokenSwapBack,
  }) {
    return tokenOutgoingTransfer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_TokenOutgoingTransfer value)? tokenOutgoingTransfer,
    TResult? Function(_TokenSwapBack value)? tokenSwapBack,
  }) {
    return tokenOutgoingTransfer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_TokenOutgoingTransfer value)? tokenOutgoingTransfer,
    TResult Function(_TokenSwapBack value)? tokenSwapBack,
    required TResult orElse(),
  }) {
    if (tokenOutgoingTransfer != null) {
      return tokenOutgoingTransfer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenOutgoingTransferImplToJson(
      this,
    );
  }
}

abstract class _TokenOutgoingTransfer implements KnownPayload {
  const factory _TokenOutgoingTransfer(final TokenOutgoingTransfer data) =
      _$TokenOutgoingTransferImpl;

  factory _TokenOutgoingTransfer.fromJson(Map<String, dynamic> json) =
      _$TokenOutgoingTransferImpl.fromJson;

  @override
  TokenOutgoingTransfer get data;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenOutgoingTransferImplCopyWith<_$TokenOutgoingTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenSwapBackImplCopyWith<$Res> {
  factory _$$TokenSwapBackImplCopyWith(
          _$TokenSwapBackImpl value, $Res Function(_$TokenSwapBackImpl) then) =
      __$$TokenSwapBackImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenSwapBack data});

  $TokenSwapBackCopyWith<$Res> get data;
}

/// @nodoc
class __$$TokenSwapBackImplCopyWithImpl<$Res>
    extends _$KnownPayloadCopyWithImpl<$Res, _$TokenSwapBackImpl>
    implements _$$TokenSwapBackImplCopyWith<$Res> {
  __$$TokenSwapBackImplCopyWithImpl(
      _$TokenSwapBackImpl _value, $Res Function(_$TokenSwapBackImpl) _then)
      : super(_value, _then);

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TokenSwapBackImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenSwapBack,
    ));
  }

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenSwapBackCopyWith<$Res> get data {
    return $TokenSwapBackCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenSwapBackImpl implements _TokenSwapBack {
  const _$TokenSwapBackImpl(this.data, {final String? $type})
      : $type = $type ?? 'token_swap_back';

  factory _$TokenSwapBackImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenSwapBackImplFromJson(json);

  @override
  final TokenSwapBack data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'KnownPayload.tokenSwapBack(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenSwapBackImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenSwapBackImplCopyWith<_$TokenSwapBackImpl> get copyWith =>
      __$$TokenSwapBackImplCopyWithImpl<_$TokenSwapBackImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(TokenOutgoingTransfer data) tokenOutgoingTransfer,
    required TResult Function(TokenSwapBack data) tokenSwapBack,
  }) {
    return tokenSwapBack(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(TokenOutgoingTransfer data)? tokenOutgoingTransfer,
    TResult? Function(TokenSwapBack data)? tokenSwapBack,
  }) {
    return tokenSwapBack?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(TokenOutgoingTransfer data)? tokenOutgoingTransfer,
    TResult Function(TokenSwapBack data)? tokenSwapBack,
    required TResult orElse(),
  }) {
    if (tokenSwapBack != null) {
      return tokenSwapBack(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_TokenOutgoingTransfer value)
        tokenOutgoingTransfer,
    required TResult Function(_TokenSwapBack value) tokenSwapBack,
  }) {
    return tokenSwapBack(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_TokenOutgoingTransfer value)? tokenOutgoingTransfer,
    TResult? Function(_TokenSwapBack value)? tokenSwapBack,
  }) {
    return tokenSwapBack?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_TokenOutgoingTransfer value)? tokenOutgoingTransfer,
    TResult Function(_TokenSwapBack value)? tokenSwapBack,
    required TResult orElse(),
  }) {
    if (tokenSwapBack != null) {
      return tokenSwapBack(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenSwapBackImplToJson(
      this,
    );
  }
}

abstract class _TokenSwapBack implements KnownPayload {
  const factory _TokenSwapBack(final TokenSwapBack data) = _$TokenSwapBackImpl;

  factory _TokenSwapBack.fromJson(Map<String, dynamic> json) =
      _$TokenSwapBackImpl.fromJson;

  @override
  TokenSwapBack get data;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenSwapBackImplCopyWith<_$TokenSwapBackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
