// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
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
