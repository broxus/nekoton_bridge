// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'de_pool_on_round_complete_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DePoolOnRoundCompleteNotification _$DePoolOnRoundCompleteNotificationFromJson(
    Map<String, dynamic> json) {
  return _DePoolOnRoundCompleteNotification.fromJson(json);
}

/// @nodoc
mixin _$DePoolOnRoundCompleteNotification {
  String get roundId => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get reward => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get ordinaryStake => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get vestingStake => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get lockStake => throw _privateConstructorUsedError;
  bool get reinvest => throw _privateConstructorUsedError;
  int get reason => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DePoolOnRoundCompleteNotificationCopyWith<DePoolOnRoundCompleteNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  factory $DePoolOnRoundCompleteNotificationCopyWith(
          DePoolOnRoundCompleteNotification value,
          $Res Function(DePoolOnRoundCompleteNotification) then) =
      _$DePoolOnRoundCompleteNotificationCopyWithImpl<$Res,
          DePoolOnRoundCompleteNotification>;
  @useResult
  $Res call(
      {String roundId,
      @amountJsonConverter BigInt reward,
      @amountJsonConverter BigInt ordinaryStake,
      @amountJsonConverter BigInt vestingStake,
      @amountJsonConverter BigInt lockStake,
      bool reinvest,
      int reason});
}

/// @nodoc
class _$DePoolOnRoundCompleteNotificationCopyWithImpl<$Res,
        $Val extends DePoolOnRoundCompleteNotification>
    implements $DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  _$DePoolOnRoundCompleteNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      roundId: null == roundId
          ? _value.roundId
          : roundId // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as BigInt,
      ordinaryStake: null == ordinaryStake
          ? _value.ordinaryStake
          : ordinaryStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      vestingStake: null == vestingStake
          ? _value.vestingStake
          : vestingStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lockStake: null == lockStake
          ? _value.lockStake
          : lockStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      reinvest: null == reinvest
          ? _value.reinvest
          : reinvest // ignore: cast_nullable_to_non_nullable
              as bool,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DePoolOnRoundCompleteNotificationImplCopyWith<$Res>
    implements $DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  factory _$$DePoolOnRoundCompleteNotificationImplCopyWith(
          _$DePoolOnRoundCompleteNotificationImpl value,
          $Res Function(_$DePoolOnRoundCompleteNotificationImpl) then) =
      __$$DePoolOnRoundCompleteNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String roundId,
      @amountJsonConverter BigInt reward,
      @amountJsonConverter BigInt ordinaryStake,
      @amountJsonConverter BigInt vestingStake,
      @amountJsonConverter BigInt lockStake,
      bool reinvest,
      int reason});
}

/// @nodoc
class __$$DePoolOnRoundCompleteNotificationImplCopyWithImpl<$Res>
    extends _$DePoolOnRoundCompleteNotificationCopyWithImpl<$Res,
        _$DePoolOnRoundCompleteNotificationImpl>
    implements _$$DePoolOnRoundCompleteNotificationImplCopyWith<$Res> {
  __$$DePoolOnRoundCompleteNotificationImplCopyWithImpl(
      _$DePoolOnRoundCompleteNotificationImpl _value,
      $Res Function(_$DePoolOnRoundCompleteNotificationImpl) _then)
      : super(_value, _then);

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
    return _then(_$DePoolOnRoundCompleteNotificationImpl(
      roundId: null == roundId
          ? _value.roundId
          : roundId // ignore: cast_nullable_to_non_nullable
              as String,
      reward: null == reward
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as BigInt,
      ordinaryStake: null == ordinaryStake
          ? _value.ordinaryStake
          : ordinaryStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      vestingStake: null == vestingStake
          ? _value.vestingStake
          : vestingStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      lockStake: null == lockStake
          ? _value.lockStake
          : lockStake // ignore: cast_nullable_to_non_nullable
              as BigInt,
      reinvest: null == reinvest
          ? _value.reinvest
          : reinvest // ignore: cast_nullable_to_non_nullable
              as bool,
      reason: null == reason
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DePoolOnRoundCompleteNotificationImpl
    implements _DePoolOnRoundCompleteNotification {
  const _$DePoolOnRoundCompleteNotificationImpl(
      {required this.roundId,
      @amountJsonConverter required this.reward,
      @amountJsonConverter required this.ordinaryStake,
      @amountJsonConverter required this.vestingStake,
      @amountJsonConverter required this.lockStake,
      required this.reinvest,
      required this.reason});

  factory _$DePoolOnRoundCompleteNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DePoolOnRoundCompleteNotificationImplFromJson(json);

  @override
  final String roundId;
  @override
  @amountJsonConverter
  final BigInt reward;
  @override
  @amountJsonConverter
  final BigInt ordinaryStake;
  @override
  @amountJsonConverter
  final BigInt vestingStake;
  @override
  @amountJsonConverter
  final BigInt lockStake;
  @override
  final bool reinvest;
  @override
  final int reason;

  @override
  String toString() {
    return 'DePoolOnRoundCompleteNotification(roundId: $roundId, reward: $reward, ordinaryStake: $ordinaryStake, vestingStake: $vestingStake, lockStake: $lockStake, reinvest: $reinvest, reason: $reason)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DePoolOnRoundCompleteNotificationImpl &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, roundId, reward, ordinaryStake,
      vestingStake, lockStake, reinvest, reason);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DePoolOnRoundCompleteNotificationImplCopyWith<
          _$DePoolOnRoundCompleteNotificationImpl>
      get copyWith => __$$DePoolOnRoundCompleteNotificationImplCopyWithImpl<
          _$DePoolOnRoundCompleteNotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DePoolOnRoundCompleteNotificationImplToJson(
      this,
    );
  }
}

abstract class _DePoolOnRoundCompleteNotification
    implements DePoolOnRoundCompleteNotification {
  const factory _DePoolOnRoundCompleteNotification(
      {required final String roundId,
      @amountJsonConverter required final BigInt reward,
      @amountJsonConverter required final BigInt ordinaryStake,
      @amountJsonConverter required final BigInt vestingStake,
      @amountJsonConverter required final BigInt lockStake,
      required final bool reinvest,
      required final int reason}) = _$DePoolOnRoundCompleteNotificationImpl;

  factory _DePoolOnRoundCompleteNotification.fromJson(
          Map<String, dynamic> json) =
      _$DePoolOnRoundCompleteNotificationImpl.fromJson;

  @override
  String get roundId;
  @override
  @amountJsonConverter
  BigInt get reward;
  @override
  @amountJsonConverter
  BigInt get ordinaryStake;
  @override
  @amountJsonConverter
  BigInt get vestingStake;
  @override
  @amountJsonConverter
  BigInt get lockStake;
  @override
  bool get reinvest;
  @override
  int get reason;
  @override
  @JsonKey(ignore: true)
  _$$DePoolOnRoundCompleteNotificationImplCopyWith<
          _$DePoolOnRoundCompleteNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
