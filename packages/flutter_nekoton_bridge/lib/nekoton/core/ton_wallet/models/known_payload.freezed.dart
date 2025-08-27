// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'known_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
KnownPayload _$KnownPayloadFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'comment':
      return KnownPayloadComment.fromJson(json);
    case 'token_outgoing_transfer':
      return KnownPayloadTokenOutgoingTransfer.fromJson(json);
    case 'jetton_outgoing_transfer':
      return KnownPayloadJettonOutgoingTransfer.fromJson(json);
    case 'token_swap_back':
      return KnownPayloadTokenSwapBack.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'KnownPayload',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$KnownPayload {
  Object get data;

  /// Serializes this KnownPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KnownPayload &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'KnownPayload(data: $data)';
  }
}

/// @nodoc
class $KnownPayloadCopyWith<$Res> {
  $KnownPayloadCopyWith(KnownPayload _, $Res Function(KnownPayload) __);
}

/// Adds pattern-matching-related methods to [KnownPayload].
extension KnownPayloadPatterns on KnownPayload {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(KnownPayloadComment value)? comment,
    TResult Function(KnownPayloadTokenOutgoingTransfer value)?
        tokenOutgoingTransfer,
    TResult Function(KnownPayloadJettonOutgoingTransfer value)?
        jettonOutgoingTransfer,
    TResult Function(KnownPayloadTokenSwapBack value)? tokenSwapBack,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case KnownPayloadComment() when comment != null:
        return comment(_that);
      case KnownPayloadTokenOutgoingTransfer()
          when tokenOutgoingTransfer != null:
        return tokenOutgoingTransfer(_that);
      case KnownPayloadJettonOutgoingTransfer()
          when jettonOutgoingTransfer != null:
        return jettonOutgoingTransfer(_that);
      case KnownPayloadTokenSwapBack() when tokenSwapBack != null:
        return tokenSwapBack(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(KnownPayloadComment value) comment,
    required TResult Function(KnownPayloadTokenOutgoingTransfer value)
        tokenOutgoingTransfer,
    required TResult Function(KnownPayloadJettonOutgoingTransfer value)
        jettonOutgoingTransfer,
    required TResult Function(KnownPayloadTokenSwapBack value) tokenSwapBack,
  }) {
    final _that = this;
    switch (_that) {
      case KnownPayloadComment():
        return comment(_that);
      case KnownPayloadTokenOutgoingTransfer():
        return tokenOutgoingTransfer(_that);
      case KnownPayloadJettonOutgoingTransfer():
        return jettonOutgoingTransfer(_that);
      case KnownPayloadTokenSwapBack():
        return tokenSwapBack(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(KnownPayloadComment value)? comment,
    TResult? Function(KnownPayloadTokenOutgoingTransfer value)?
        tokenOutgoingTransfer,
    TResult? Function(KnownPayloadJettonOutgoingTransfer value)?
        jettonOutgoingTransfer,
    TResult? Function(KnownPayloadTokenSwapBack value)? tokenSwapBack,
  }) {
    final _that = this;
    switch (_that) {
      case KnownPayloadComment() when comment != null:
        return comment(_that);
      case KnownPayloadTokenOutgoingTransfer()
          when tokenOutgoingTransfer != null:
        return tokenOutgoingTransfer(_that);
      case KnownPayloadJettonOutgoingTransfer()
          when jettonOutgoingTransfer != null:
        return jettonOutgoingTransfer(_that);
      case KnownPayloadTokenSwapBack() when tokenSwapBack != null:
        return tokenSwapBack(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(TokenOutgoingTransfer data)? tokenOutgoingTransfer,
    TResult Function(JettonOutgoingTransfer data)? jettonOutgoingTransfer,
    TResult Function(TokenSwapBack data)? tokenSwapBack,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case KnownPayloadComment() when comment != null:
        return comment(_that.data);
      case KnownPayloadTokenOutgoingTransfer()
          when tokenOutgoingTransfer != null:
        return tokenOutgoingTransfer(_that.data);
      case KnownPayloadJettonOutgoingTransfer()
          when jettonOutgoingTransfer != null:
        return jettonOutgoingTransfer(_that.data);
      case KnownPayloadTokenSwapBack() when tokenSwapBack != null:
        return tokenSwapBack(_that.data);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(TokenOutgoingTransfer data) tokenOutgoingTransfer,
    required TResult Function(JettonOutgoingTransfer data)
        jettonOutgoingTransfer,
    required TResult Function(TokenSwapBack data) tokenSwapBack,
  }) {
    final _that = this;
    switch (_that) {
      case KnownPayloadComment():
        return comment(_that.data);
      case KnownPayloadTokenOutgoingTransfer():
        return tokenOutgoingTransfer(_that.data);
      case KnownPayloadJettonOutgoingTransfer():
        return jettonOutgoingTransfer(_that.data);
      case KnownPayloadTokenSwapBack():
        return tokenSwapBack(_that.data);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(TokenOutgoingTransfer data)? tokenOutgoingTransfer,
    TResult? Function(JettonOutgoingTransfer data)? jettonOutgoingTransfer,
    TResult? Function(TokenSwapBack data)? tokenSwapBack,
  }) {
    final _that = this;
    switch (_that) {
      case KnownPayloadComment() when comment != null:
        return comment(_that.data);
      case KnownPayloadTokenOutgoingTransfer()
          when tokenOutgoingTransfer != null:
        return tokenOutgoingTransfer(_that.data);
      case KnownPayloadJettonOutgoingTransfer()
          when jettonOutgoingTransfer != null:
        return jettonOutgoingTransfer(_that.data);
      case KnownPayloadTokenSwapBack() when tokenSwapBack != null:
        return tokenSwapBack(_that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class KnownPayloadComment implements KnownPayload {
  const KnownPayloadComment(this.data, {final String? $type})
      : $type = $type ?? 'comment';
  factory KnownPayloadComment.fromJson(Map<String, dynamic> json) =>
      _$KnownPayloadCommentFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KnownPayloadCommentCopyWith<KnownPayloadComment> get copyWith =>
      _$KnownPayloadCommentCopyWithImpl<KnownPayloadComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KnownPayloadCommentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KnownPayloadComment &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'KnownPayload.comment(data: $data)';
  }
}

/// @nodoc
abstract mixin class $KnownPayloadCommentCopyWith<$Res>
    implements $KnownPayloadCopyWith<$Res> {
  factory $KnownPayloadCommentCopyWith(
          KnownPayloadComment value, $Res Function(KnownPayloadComment) _then) =
      _$KnownPayloadCommentCopyWithImpl;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$KnownPayloadCommentCopyWithImpl<$Res>
    implements $KnownPayloadCommentCopyWith<$Res> {
  _$KnownPayloadCommentCopyWithImpl(this._self, this._then);

  final KnownPayloadComment _self;
  final $Res Function(KnownPayloadComment) _then;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(KnownPayloadComment(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class KnownPayloadTokenOutgoingTransfer implements KnownPayload {
  const KnownPayloadTokenOutgoingTransfer(this.data, {final String? $type})
      : $type = $type ?? 'token_outgoing_transfer';
  factory KnownPayloadTokenOutgoingTransfer.fromJson(
          Map<String, dynamic> json) =>
      _$KnownPayloadTokenOutgoingTransferFromJson(json);

  @override
  final TokenOutgoingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KnownPayloadTokenOutgoingTransferCopyWith<KnownPayloadTokenOutgoingTransfer>
      get copyWith => _$KnownPayloadTokenOutgoingTransferCopyWithImpl<
          KnownPayloadTokenOutgoingTransfer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KnownPayloadTokenOutgoingTransferToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KnownPayloadTokenOutgoingTransfer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'KnownPayload.tokenOutgoingTransfer(data: $data)';
  }
}

/// @nodoc
abstract mixin class $KnownPayloadTokenOutgoingTransferCopyWith<$Res>
    implements $KnownPayloadCopyWith<$Res> {
  factory $KnownPayloadTokenOutgoingTransferCopyWith(
          KnownPayloadTokenOutgoingTransfer value,
          $Res Function(KnownPayloadTokenOutgoingTransfer) _then) =
      _$KnownPayloadTokenOutgoingTransferCopyWithImpl;
  @useResult
  $Res call({TokenOutgoingTransfer data});

  $TokenOutgoingTransferCopyWith<$Res> get data;
}

/// @nodoc
class _$KnownPayloadTokenOutgoingTransferCopyWithImpl<$Res>
    implements $KnownPayloadTokenOutgoingTransferCopyWith<$Res> {
  _$KnownPayloadTokenOutgoingTransferCopyWithImpl(this._self, this._then);

  final KnownPayloadTokenOutgoingTransfer _self;
  final $Res Function(KnownPayloadTokenOutgoingTransfer) _then;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(KnownPayloadTokenOutgoingTransfer(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenOutgoingTransfer,
    ));
  }

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenOutgoingTransferCopyWith<$Res> get data {
    return $TokenOutgoingTransferCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class KnownPayloadJettonOutgoingTransfer implements KnownPayload {
  const KnownPayloadJettonOutgoingTransfer(this.data, {final String? $type})
      : $type = $type ?? 'jetton_outgoing_transfer';
  factory KnownPayloadJettonOutgoingTransfer.fromJson(
          Map<String, dynamic> json) =>
      _$KnownPayloadJettonOutgoingTransferFromJson(json);

  @override
  final JettonOutgoingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KnownPayloadJettonOutgoingTransferCopyWith<
          KnownPayloadJettonOutgoingTransfer>
      get copyWith => _$KnownPayloadJettonOutgoingTransferCopyWithImpl<
          KnownPayloadJettonOutgoingTransfer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KnownPayloadJettonOutgoingTransferToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KnownPayloadJettonOutgoingTransfer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'KnownPayload.jettonOutgoingTransfer(data: $data)';
  }
}

/// @nodoc
abstract mixin class $KnownPayloadJettonOutgoingTransferCopyWith<$Res>
    implements $KnownPayloadCopyWith<$Res> {
  factory $KnownPayloadJettonOutgoingTransferCopyWith(
          KnownPayloadJettonOutgoingTransfer value,
          $Res Function(KnownPayloadJettonOutgoingTransfer) _then) =
      _$KnownPayloadJettonOutgoingTransferCopyWithImpl;
  @useResult
  $Res call({JettonOutgoingTransfer data});

  $JettonOutgoingTransferCopyWith<$Res> get data;
}

/// @nodoc
class _$KnownPayloadJettonOutgoingTransferCopyWithImpl<$Res>
    implements $KnownPayloadJettonOutgoingTransferCopyWith<$Res> {
  _$KnownPayloadJettonOutgoingTransferCopyWithImpl(this._self, this._then);

  final KnownPayloadJettonOutgoingTransfer _self;
  final $Res Function(KnownPayloadJettonOutgoingTransfer) _then;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(KnownPayloadJettonOutgoingTransfer(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as JettonOutgoingTransfer,
    ));
  }

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JettonOutgoingTransferCopyWith<$Res> get data {
    return $JettonOutgoingTransferCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class KnownPayloadTokenSwapBack implements KnownPayload {
  const KnownPayloadTokenSwapBack(this.data, {final String? $type})
      : $type = $type ?? 'token_swap_back';
  factory KnownPayloadTokenSwapBack.fromJson(Map<String, dynamic> json) =>
      _$KnownPayloadTokenSwapBackFromJson(json);

  @override
  final TokenSwapBack data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KnownPayloadTokenSwapBackCopyWith<KnownPayloadTokenSwapBack> get copyWith =>
      _$KnownPayloadTokenSwapBackCopyWithImpl<KnownPayloadTokenSwapBack>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KnownPayloadTokenSwapBackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KnownPayloadTokenSwapBack &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'KnownPayload.tokenSwapBack(data: $data)';
  }
}

/// @nodoc
abstract mixin class $KnownPayloadTokenSwapBackCopyWith<$Res>
    implements $KnownPayloadCopyWith<$Res> {
  factory $KnownPayloadTokenSwapBackCopyWith(KnownPayloadTokenSwapBack value,
          $Res Function(KnownPayloadTokenSwapBack) _then) =
      _$KnownPayloadTokenSwapBackCopyWithImpl;
  @useResult
  $Res call({TokenSwapBack data});

  $TokenSwapBackCopyWith<$Res> get data;
}

/// @nodoc
class _$KnownPayloadTokenSwapBackCopyWithImpl<$Res>
    implements $KnownPayloadTokenSwapBackCopyWith<$Res> {
  _$KnownPayloadTokenSwapBackCopyWithImpl(this._self, this._then);

  final KnownPayloadTokenSwapBack _self;
  final $Res Function(KnownPayloadTokenSwapBack) _then;

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(KnownPayloadTokenSwapBack(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenSwapBack,
    ));
  }

  /// Create a copy of KnownPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenSwapBackCopyWith<$Res> get data {
    return $TokenSwapBackCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
