// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_wallet_transfer_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TonWalletTransferParams {
  Address get destination;
  @amountJsonConverter
  BigInt get amount;
  bool get bounce;
  String? get body;
  String? get stateInit;

  /// Create a copy of TonWalletTransferParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TonWalletTransferParamsCopyWith<TonWalletTransferParams> get copyWith =>
      _$TonWalletTransferParamsCopyWithImpl<TonWalletTransferParams>(
          this as TonWalletTransferParams, _$identity);

  /// Serializes this TonWalletTransferParams to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TonWalletTransferParams &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.stateInit, stateInit) ||
                other.stateInit == stateInit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, destination, amount, bounce, body, stateInit);

  @override
  String toString() {
    return 'TonWalletTransferParams(destination: $destination, amount: $amount, bounce: $bounce, body: $body, stateInit: $stateInit)';
  }
}

/// @nodoc
abstract mixin class $TonWalletTransferParamsCopyWith<$Res> {
  factory $TonWalletTransferParamsCopyWith(TonWalletTransferParams value,
          $Res Function(TonWalletTransferParams) _then) =
      _$TonWalletTransferParamsCopyWithImpl;
  @useResult
  $Res call(
      {Address destination,
      @amountJsonConverter BigInt amount,
      bool bounce,
      String? body,
      String? stateInit});

  $AddressCopyWith<$Res> get destination;
}

/// @nodoc
class _$TonWalletTransferParamsCopyWithImpl<$Res>
    implements $TonWalletTransferParamsCopyWith<$Res> {
  _$TonWalletTransferParamsCopyWithImpl(this._self, this._then);

  final TonWalletTransferParams _self;
  final $Res Function(TonWalletTransferParams) _then;

  /// Create a copy of TonWalletTransferParams
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? bounce = null,
    Object? body = freezed,
    Object? stateInit = freezed,
  }) {
    return _then(_self.copyWith(
      destination: null == destination
          ? _self.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _self.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      stateInit: freezed == stateInit
          ? _self.stateInit
          : stateInit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TonWalletTransferParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get destination {
    return $AddressCopyWith<$Res>(_self.destination, (value) {
      return _then(_self.copyWith(destination: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _TonWalletTransferParams implements TonWalletTransferParams {
  _TonWalletTransferParams(
      {required this.destination,
      @amountJsonConverter required this.amount,
      required this.bounce,
      this.body,
      this.stateInit});
  factory _TonWalletTransferParams.fromJson(Map<String, dynamic> json) =>
      _$TonWalletTransferParamsFromJson(json);

  @override
  final Address destination;
  @override
  @amountJsonConverter
  final BigInt amount;
  @override
  final bool bounce;
  @override
  final String? body;
  @override
  final String? stateInit;

  /// Create a copy of TonWalletTransferParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TonWalletTransferParamsCopyWith<_TonWalletTransferParams> get copyWith =>
      __$TonWalletTransferParamsCopyWithImpl<_TonWalletTransferParams>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TonWalletTransferParamsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TonWalletTransferParams &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.body, body) || other.body == body) &&
            (identical(other.stateInit, stateInit) ||
                other.stateInit == stateInit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, destination, amount, bounce, body, stateInit);

  @override
  String toString() {
    return 'TonWalletTransferParams(destination: $destination, amount: $amount, bounce: $bounce, body: $body, stateInit: $stateInit)';
  }
}

/// @nodoc
abstract mixin class _$TonWalletTransferParamsCopyWith<$Res>
    implements $TonWalletTransferParamsCopyWith<$Res> {
  factory _$TonWalletTransferParamsCopyWith(_TonWalletTransferParams value,
          $Res Function(_TonWalletTransferParams) _then) =
      __$TonWalletTransferParamsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {Address destination,
      @amountJsonConverter BigInt amount,
      bool bounce,
      String? body,
      String? stateInit});

  @override
  $AddressCopyWith<$Res> get destination;
}

/// @nodoc
class __$TonWalletTransferParamsCopyWithImpl<$Res>
    implements _$TonWalletTransferParamsCopyWith<$Res> {
  __$TonWalletTransferParamsCopyWithImpl(this._self, this._then);

  final _TonWalletTransferParams _self;
  final $Res Function(_TonWalletTransferParams) _then;

  /// Create a copy of TonWalletTransferParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? destination = null,
    Object? amount = null,
    Object? bounce = null,
    Object? body = freezed,
    Object? stateInit = freezed,
  }) {
    return _then(_TonWalletTransferParams(
      destination: null == destination
          ? _self.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: null == amount
          ? _self.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _self.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      body: freezed == body
          ? _self.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      stateInit: freezed == stateInit
          ? _self.stateInit
          : stateInit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of TonWalletTransferParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get destination {
    return $AddressCopyWith<$Res>(_self.destination, (value) {
      return _then(_self.copyWith(destination: value));
    });
  }
}

// dart format on
