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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$KnownPayloadCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Comment(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment implements _Comment {
  const _$_Comment(this.data, {final String? $type})
      : $type = $type ?? 'comment';

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'KnownPayload.comment(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

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
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment implements KnownPayload {
  const factory _Comment(final String data) = _$_Comment;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  String get data;
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TokenOutgoingTransferCopyWith<$Res> {
  factory _$$_TokenOutgoingTransferCopyWith(_$_TokenOutgoingTransfer value,
          $Res Function(_$_TokenOutgoingTransfer) then) =
      __$$_TokenOutgoingTransferCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenOutgoingTransfer data});

  $TokenOutgoingTransferCopyWith<$Res> get data;
}

/// @nodoc
class __$$_TokenOutgoingTransferCopyWithImpl<$Res>
    extends _$KnownPayloadCopyWithImpl<$Res, _$_TokenOutgoingTransfer>
    implements _$$_TokenOutgoingTransferCopyWith<$Res> {
  __$$_TokenOutgoingTransferCopyWithImpl(_$_TokenOutgoingTransfer _value,
      $Res Function(_$_TokenOutgoingTransfer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_TokenOutgoingTransfer(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenOutgoingTransfer,
    ));
  }

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
class _$_TokenOutgoingTransfer implements _TokenOutgoingTransfer {
  const _$_TokenOutgoingTransfer(this.data, {final String? $type})
      : $type = $type ?? 'token_outgoing_transfer';

  factory _$_TokenOutgoingTransfer.fromJson(Map<String, dynamic> json) =>
      _$$_TokenOutgoingTransferFromJson(json);

  @override
  final TokenOutgoingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'KnownPayload.tokenOutgoingTransfer(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenOutgoingTransfer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenOutgoingTransferCopyWith<_$_TokenOutgoingTransfer> get copyWith =>
      __$$_TokenOutgoingTransferCopyWithImpl<_$_TokenOutgoingTransfer>(
          this, _$identity);

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
    return _$$_TokenOutgoingTransferToJson(
      this,
    );
  }
}

abstract class _TokenOutgoingTransfer implements KnownPayload {
  const factory _TokenOutgoingTransfer(final TokenOutgoingTransfer data) =
      _$_TokenOutgoingTransfer;

  factory _TokenOutgoingTransfer.fromJson(Map<String, dynamic> json) =
      _$_TokenOutgoingTransfer.fromJson;

  @override
  TokenOutgoingTransfer get data;
  @JsonKey(ignore: true)
  _$$_TokenOutgoingTransferCopyWith<_$_TokenOutgoingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TokenSwapBackCopyWith<$Res> {
  factory _$$_TokenSwapBackCopyWith(
          _$_TokenSwapBack value, $Res Function(_$_TokenSwapBack) then) =
      __$$_TokenSwapBackCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenSwapBack data});

  $TokenSwapBackCopyWith<$Res> get data;
}

/// @nodoc
class __$$_TokenSwapBackCopyWithImpl<$Res>
    extends _$KnownPayloadCopyWithImpl<$Res, _$_TokenSwapBack>
    implements _$$_TokenSwapBackCopyWith<$Res> {
  __$$_TokenSwapBackCopyWithImpl(
      _$_TokenSwapBack _value, $Res Function(_$_TokenSwapBack) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_TokenSwapBack(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenSwapBack,
    ));
  }

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
class _$_TokenSwapBack implements _TokenSwapBack {
  const _$_TokenSwapBack(this.data, {final String? $type})
      : $type = $type ?? 'token_swap_back';

  factory _$_TokenSwapBack.fromJson(Map<String, dynamic> json) =>
      _$$_TokenSwapBackFromJson(json);

  @override
  final TokenSwapBack data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'KnownPayload.tokenSwapBack(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenSwapBack &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenSwapBackCopyWith<_$_TokenSwapBack> get copyWith =>
      __$$_TokenSwapBackCopyWithImpl<_$_TokenSwapBack>(this, _$identity);

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
    return _$$_TokenSwapBackToJson(
      this,
    );
  }
}

abstract class _TokenSwapBack implements KnownPayload {
  const factory _TokenSwapBack(final TokenSwapBack data) = _$_TokenSwapBack;

  factory _TokenSwapBack.fromJson(Map<String, dynamic> json) =
      _$_TokenSwapBack.fromJson;

  @override
  TokenSwapBack get data;
  @JsonKey(ignore: true)
  _$$_TokenSwapBackCopyWith<_$_TokenSwapBack> get copyWith =>
      throw _privateConstructorUsedError;
}
