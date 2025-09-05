// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'de_pool_on_round_complete_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DePoolOnRoundCompleteNotification {
  String get roundId;
  BigInt get reward;
  BigInt get ordinaryStake;
  BigInt get vestingStake;
  BigInt get lockStake;
  bool get reinvest;
  int get reason;

  /// Create a copy of DePoolOnRoundCompleteNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DePoolOnRoundCompleteNotificationCopyWith<DePoolOnRoundCompleteNotification>
      get copyWith => _$DePoolOnRoundCompleteNotificationCopyWithImpl<
              DePoolOnRoundCompleteNotification>(
          this as DePoolOnRoundCompleteNotification, _$identity);

  /// Serializes this DePoolOnRoundCompleteNotification to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DePoolOnRoundCompleteNotification &&
            (identical(other.roundId, roundId) || other.roundId == roundId) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.ordinaryStake, ordinaryStake) ||
                other.ordinaryStake == ordinaryStake) &&
            (identical(other.vestingStake, vestingStake) ||
                other.vestingStake == vestingStake) &&
            (identical(other.lockStake, lockStake) ||
                other.lockStake == lockStake) &&
            (identical(other.reinvest, reinvest) ||
                other.reinvest == reinvest) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roundId, reward, ordinaryStake,
      vestingStake, lockStake, reinvest, reason);

  @override
  String toString() {
    return 'DePoolOnRoundCompleteNotification(roundId: $roundId, reward: $reward, ordinaryStake: $ordinaryStake, vestingStake: $vestingStake, lockStake: $lockStake, reinvest: $reinvest, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class $DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  factory $DePoolOnRoundCompleteNotificationCopyWith(
          DePoolOnRoundCompleteNotification value,
          $Res Function(DePoolOnRoundCompleteNotification) _then) =
      _$DePoolOnRoundCompleteNotificationCopyWithImpl;
  @useResult
  $Res call(
      {String roundId,
      BigInt reward,
      BigInt ordinaryStake,
      BigInt vestingStake,
      BigInt lockStake,
      bool reinvest,
      int reason});
}

/// @nodoc
class _$DePoolOnRoundCompleteNotificationCopyWithImpl<$Res>
    implements $DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  _$DePoolOnRoundCompleteNotificationCopyWithImpl(this._self, this._then);

  final DePoolOnRoundCompleteNotification _self;
  final $Res Function(DePoolOnRoundCompleteNotification) _then;

  /// Create a copy of DePoolOnRoundCompleteNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? roundId = null,
    Object? reward = null,
    Object? ordinaryStake = null,
    Object? vestingStake = null,
    Object? lockStake = null,
    Object? reinvest = null,
    Object? reason = null,
  }) {
    return _then(_self.copyWith(
      roundId: null == roundId
          ? _self.roundId
          : roundId // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _self.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as BigInt,
      ordinaryStake: null == ordinaryStake
          ? _self.ordinaryStake
          : ordinaryStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      vestingStake: null == vestingStake
          ? _self.vestingStake
          : vestingStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lockStake: null == lockStake
          ? _self.lockStake
          : lockStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      reinvest: null == reinvest
          ? _self.reinvest
          : reinvest // ignore: cast_nullable_to_non_nullable
              as bool,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _DePoolOnRoundCompleteNotification
    implements DePoolOnRoundCompleteNotification {
  const _DePoolOnRoundCompleteNotification(
      {required this.roundId,
      required this.reward,
      required this.ordinaryStake,
      required this.vestingStake,
      required this.lockStake,
      required this.reinvest,
      required this.reason});
  factory _DePoolOnRoundCompleteNotification.fromJson(
          Map<String, dynamic> json) =>
      _$DePoolOnRoundCompleteNotificationFromJson(json);

  @override
  final String roundId;
  @override
  final BigInt reward;
  @override
  final BigInt ordinaryStake;
  @override
  final BigInt vestingStake;
  @override
  final BigInt lockStake;
  @override
  final bool reinvest;
  @override
  final int reason;

  /// Create a copy of DePoolOnRoundCompleteNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DePoolOnRoundCompleteNotificationCopyWith<
          _DePoolOnRoundCompleteNotification>
      get copyWith => __$DePoolOnRoundCompleteNotificationCopyWithImpl<
          _DePoolOnRoundCompleteNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DePoolOnRoundCompleteNotificationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DePoolOnRoundCompleteNotification &&
            (identical(other.roundId, roundId) || other.roundId == roundId) &&
            (identical(other.reward, reward) || other.reward == reward) &&
            (identical(other.ordinaryStake, ordinaryStake) ||
                other.ordinaryStake == ordinaryStake) &&
            (identical(other.vestingStake, vestingStake) ||
                other.vestingStake == vestingStake) &&
            (identical(other.lockStake, lockStake) ||
                other.lockStake == lockStake) &&
            (identical(other.reinvest, reinvest) ||
                other.reinvest == reinvest) &&
            (identical(other.reason, reason) || other.reason == reason));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, roundId, reward, ordinaryStake,
      vestingStake, lockStake, reinvest, reason);

  @override
  String toString() {
    return 'DePoolOnRoundCompleteNotification(roundId: $roundId, reward: $reward, ordinaryStake: $ordinaryStake, vestingStake: $vestingStake, lockStake: $lockStake, reinvest: $reinvest, reason: $reason)';
  }
}

/// @nodoc
abstract mixin class _$DePoolOnRoundCompleteNotificationCopyWith<$Res>
    implements $DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  factory _$DePoolOnRoundCompleteNotificationCopyWith(
          _DePoolOnRoundCompleteNotification value,
          $Res Function(_DePoolOnRoundCompleteNotification) _then) =
      __$DePoolOnRoundCompleteNotificationCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String roundId,
      BigInt reward,
      BigInt ordinaryStake,
      BigInt vestingStake,
      BigInt lockStake,
      bool reinvest,
      int reason});
}

/// @nodoc
class __$DePoolOnRoundCompleteNotificationCopyWithImpl<$Res>
    implements _$DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  __$DePoolOnRoundCompleteNotificationCopyWithImpl(this._self, this._then);

  final _DePoolOnRoundCompleteNotification _self;
  final $Res Function(_DePoolOnRoundCompleteNotification) _then;

  /// Create a copy of DePoolOnRoundCompleteNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? roundId = null,
    Object? reward = null,
    Object? ordinaryStake = null,
    Object? vestingStake = null,
    Object? lockStake = null,
    Object? reinvest = null,
    Object? reason = null,
  }) {
    return _then(_DePoolOnRoundCompleteNotification(
      roundId: null == roundId
          ? _self.roundId
          : roundId // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _self.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as BigInt,
      ordinaryStake: null == ordinaryStake
          ? _self.ordinaryStake
          : ordinaryStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      vestingStake: null == vestingStake
          ? _self.vestingStake
          : vestingStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lockStake: null == lockStake
          ? _self.lockStake
          : lockStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      reinvest: null == reinvest
          ? _self.reinvest
          : reinvest // ignore: cast_nullable_to_non_nullable
              as bool,
      reason: null == reason
          ? _self.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
