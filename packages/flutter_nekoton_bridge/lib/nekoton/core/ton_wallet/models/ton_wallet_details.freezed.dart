// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_wallet_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TonWalletDetails {
  bool get requiresSeparateDeploy;
  BigInt get minAmount;
  bool get supportsPayload;
  bool get supportsMultipleOwners; // expirationTime in seconds
  int get expirationTime;
  int? get requiredConfirmations;

  /// Create a copy of TonWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TonWalletDetailsCopyWith<TonWalletDetails> get copyWith =>
      _$TonWalletDetailsCopyWithImpl<TonWalletDetails>(
          this as TonWalletDetails, _$identity);

  /// Serializes this TonWalletDetails to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TonWalletDetails &&
            (identical(other.requiresSeparateDeploy, requiresSeparateDeploy) ||
                other.requiresSeparateDeploy == requiresSeparateDeploy) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.supportsPayload, supportsPayload) ||
                other.supportsPayload == supportsPayload) &&
            (identical(other.supportsMultipleOwners, supportsMultipleOwners) ||
                other.supportsMultipleOwners == supportsMultipleOwners) &&
            (identical(other.expirationTime, expirationTime) ||
                other.expirationTime == expirationTime) &&
            (identical(other.requiredConfirmations, requiredConfirmations) ||
                other.requiredConfirmations == requiredConfirmations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requiresSeparateDeploy,
      minAmount,
      supportsPayload,
      supportsMultipleOwners,
      expirationTime,
      requiredConfirmations);

  @override
  String toString() {
    return 'TonWalletDetails(requiresSeparateDeploy: $requiresSeparateDeploy, minAmount: $minAmount, supportsPayload: $supportsPayload, supportsMultipleOwners: $supportsMultipleOwners, expirationTime: $expirationTime, requiredConfirmations: $requiredConfirmations)';
  }
}

/// @nodoc
abstract mixin class $TonWalletDetailsCopyWith<$Res> {
  factory $TonWalletDetailsCopyWith(
          TonWalletDetails value, $Res Function(TonWalletDetails) _then) =
      _$TonWalletDetailsCopyWithImpl;
  @useResult
  $Res call(
      {bool requiresSeparateDeploy,
      BigInt minAmount,
      bool supportsPayload,
      bool supportsMultipleOwners,
      int expirationTime,
      int? requiredConfirmations});
}

/// @nodoc
class _$TonWalletDetailsCopyWithImpl<$Res>
    implements $TonWalletDetailsCopyWith<$Res> {
  _$TonWalletDetailsCopyWithImpl(this._self, this._then);

  final TonWalletDetails _self;
  final $Res Function(TonWalletDetails) _then;

  /// Create a copy of TonWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requiresSeparateDeploy = null,
    Object? minAmount = null,
    Object? supportsPayload = null,
    Object? supportsMultipleOwners = null,
    Object? expirationTime = null,
    Object? requiredConfirmations = freezed,
  }) {
    return _then(_self.copyWith(
      requiresSeparateDeploy: null == requiresSeparateDeploy
          ? _self.requiresSeparateDeploy
          : requiresSeparateDeploy // ignore: cast_nullable_to_non_nullable
              as bool,
      minAmount: null == minAmount
          ? _self.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      supportsPayload: null == supportsPayload
          ? _self.supportsPayload
          : supportsPayload // ignore: cast_nullable_to_non_nullable
              as bool,
      supportsMultipleOwners: null == supportsMultipleOwners
          ? _self.supportsMultipleOwners
          : supportsMultipleOwners // ignore: cast_nullable_to_non_nullable
              as bool,
      expirationTime: null == expirationTime
          ? _self.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as int,
      requiredConfirmations: freezed == requiredConfirmations
          ? _self.requiredConfirmations
          : requiredConfirmations // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TonWalletDetails implements TonWalletDetails {
  const _TonWalletDetails(
      {required this.requiresSeparateDeploy,
      required this.minAmount,
      required this.supportsPayload,
      required this.supportsMultipleOwners,
      required this.expirationTime,
      required this.requiredConfirmations});
  factory _TonWalletDetails.fromJson(Map<String, dynamic> json) =>
      _$TonWalletDetailsFromJson(json);

  @override
  final bool requiresSeparateDeploy;
  @override
  final BigInt minAmount;
  @override
  final bool supportsPayload;
  @override
  final bool supportsMultipleOwners;
// expirationTime in seconds
  @override
  final int expirationTime;
  @override
  final int? requiredConfirmations;

  /// Create a copy of TonWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TonWalletDetailsCopyWith<_TonWalletDetails> get copyWith =>
      __$TonWalletDetailsCopyWithImpl<_TonWalletDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TonWalletDetailsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TonWalletDetails &&
            (identical(other.requiresSeparateDeploy, requiresSeparateDeploy) ||
                other.requiresSeparateDeploy == requiresSeparateDeploy) &&
            (identical(other.minAmount, minAmount) ||
                other.minAmount == minAmount) &&
            (identical(other.supportsPayload, supportsPayload) ||
                other.supportsPayload == supportsPayload) &&
            (identical(other.supportsMultipleOwners, supportsMultipleOwners) ||
                other.supportsMultipleOwners == supportsMultipleOwners) &&
            (identical(other.expirationTime, expirationTime) ||
                other.expirationTime == expirationTime) &&
            (identical(other.requiredConfirmations, requiredConfirmations) ||
                other.requiredConfirmations == requiredConfirmations));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requiresSeparateDeploy,
      minAmount,
      supportsPayload,
      supportsMultipleOwners,
      expirationTime,
      requiredConfirmations);

  @override
  String toString() {
    return 'TonWalletDetails(requiresSeparateDeploy: $requiresSeparateDeploy, minAmount: $minAmount, supportsPayload: $supportsPayload, supportsMultipleOwners: $supportsMultipleOwners, expirationTime: $expirationTime, requiredConfirmations: $requiredConfirmations)';
  }
}

/// @nodoc
abstract mixin class _$TonWalletDetailsCopyWith<$Res>
    implements $TonWalletDetailsCopyWith<$Res> {
  factory _$TonWalletDetailsCopyWith(
          _TonWalletDetails value, $Res Function(_TonWalletDetails) _then) =
      __$TonWalletDetailsCopyWithImpl;
  @override
  @useResult
  $Res call(
      {bool requiresSeparateDeploy,
      BigInt minAmount,
      bool supportsPayload,
      bool supportsMultipleOwners,
      int expirationTime,
      int? requiredConfirmations});
}

/// @nodoc
class __$TonWalletDetailsCopyWithImpl<$Res>
    implements _$TonWalletDetailsCopyWith<$Res> {
  __$TonWalletDetailsCopyWithImpl(this._self, this._then);

  final _TonWalletDetails _self;
  final $Res Function(_TonWalletDetails) _then;

  /// Create a copy of TonWalletDetails
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? requiresSeparateDeploy = null,
    Object? minAmount = null,
    Object? supportsPayload = null,
    Object? supportsMultipleOwners = null,
    Object? expirationTime = null,
    Object? requiredConfirmations = freezed,
  }) {
    return _then(_TonWalletDetails(
      requiresSeparateDeploy: null == requiresSeparateDeploy
          ? _self.requiresSeparateDeploy
          : requiresSeparateDeploy // ignore: cast_nullable_to_non_nullable
              as bool,
      minAmount: null == minAmount
          ? _self.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      supportsPayload: null == supportsPayload
          ? _self.supportsPayload
          : supportsPayload // ignore: cast_nullable_to_non_nullable
              as bool,
      supportsMultipleOwners: null == supportsMultipleOwners
          ? _self.supportsMultipleOwners
          : supportsMultipleOwners // ignore: cast_nullable_to_non_nullable
              as bool,
      expirationTime: null == expirationTime
          ? _self.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as int,
      requiredConfirmations: freezed == requiredConfirmations
          ? _self.requiredConfirmations
          : requiredConfirmations // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

// dart format on
