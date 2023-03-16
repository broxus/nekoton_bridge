// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'de_pool_on_round_complete_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DePoolOnRoundCompleteNotification _$DePoolOnRoundCompleteNotificationFromJson(
    Map<String, dynamic> json) {
  return _DePoolOnRoundCompleteNotification.fromJson(json);
}

/// @nodoc
mixin _$DePoolOnRoundCompleteNotification {
  String get roundId => throw _privateConstructorUsedError;
  String get reward => throw _privateConstructorUsedError;
  String get ordinaryStake => throw _privateConstructorUsedError;
  String get vestingStake => throw _privateConstructorUsedError;
  String get lockStake => throw _privateConstructorUsedError;
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
      _$DePoolOnRoundCompleteNotificationCopyWithImpl<$Res>;
  $Res call(
      {String roundId,
      String reward,
      String ordinaryStake,
      String vestingStake,
      String lockStake,
      bool reinvest,
      int reason});
}

/// @nodoc
class _$DePoolOnRoundCompleteNotificationCopyWithImpl<$Res>
    implements $DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  _$DePoolOnRoundCompleteNotificationCopyWithImpl(this._value, this._then);

  final DePoolOnRoundCompleteNotification _value;
  // ignore: unused_field
  final $Res Function(DePoolOnRoundCompleteNotification) _then;

  @override
  $Res call({
    Object? roundId = freezed,
    Object? reward = freezed,
    Object? ordinaryStake = freezed,
    Object? vestingStake = freezed,
    Object? lockStake = freezed,
    Object? reinvest = freezed,
    Object? reason = freezed,
  }) {
    return _then(_value.copyWith(
      roundId: roundId == freezed
          ? _value.roundId
          : roundId // ignore: cast_nullable_to_non_nullable
              as String,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as String,
      ordinaryStake: ordinaryStake == freezed
          ? _value.ordinaryStake
          : ordinaryStake // ignore: cast_nullable_to_non_nullable
              as String,
      vestingStake: vestingStake == freezed
          ? _value.vestingStake
          : vestingStake // ignore: cast_nullable_to_non_nullable
              as String,
      lockStake: lockStake == freezed
          ? _value.lockStake
          : lockStake // ignore: cast_nullable_to_non_nullable
              as String,
      reinvest: reinvest == freezed
          ? _value.reinvest
          : reinvest // ignore: cast_nullable_to_non_nullable
              as bool,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_DePoolOnRoundCompleteNotificationCopyWith<$Res>
    implements $DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  factory _$$_DePoolOnRoundCompleteNotificationCopyWith(
          _$_DePoolOnRoundCompleteNotification value,
          $Res Function(_$_DePoolOnRoundCompleteNotification) then) =
      __$$_DePoolOnRoundCompleteNotificationCopyWithImpl<$Res>;
  @override
  $Res call(
      {String roundId,
      String reward,
      String ordinaryStake,
      String vestingStake,
      String lockStake,
      bool reinvest,
      int reason});
}

/// @nodoc
class __$$_DePoolOnRoundCompleteNotificationCopyWithImpl<$Res>
    extends _$DePoolOnRoundCompleteNotificationCopyWithImpl<$Res>
    implements _$$_DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  __$$_DePoolOnRoundCompleteNotificationCopyWithImpl(
      _$_DePoolOnRoundCompleteNotification _value,
      $Res Function(_$_DePoolOnRoundCompleteNotification) _then)
      : super(_value, (v) => _then(v as _$_DePoolOnRoundCompleteNotification));

  @override
  _$_DePoolOnRoundCompleteNotification get _value =>
      super._value as _$_DePoolOnRoundCompleteNotification;

  @override
  $Res call({
    Object? roundId = freezed,
    Object? reward = freezed,
    Object? ordinaryStake = freezed,
    Object? vestingStake = freezed,
    Object? lockStake = freezed,
    Object? reinvest = freezed,
    Object? reason = freezed,
  }) {
    return _then(_$_DePoolOnRoundCompleteNotification(
      roundId: roundId == freezed
          ? _value.roundId
          : roundId // ignore: cast_nullable_to_non_nullable
              as String,
      reward: reward == freezed
          ? _value.reward
          : reward // ignore: cast_nullable_to_non_nullable
              as String,
      ordinaryStake: ordinaryStake == freezed
          ? _value.ordinaryStake
          : ordinaryStake // ignore: cast_nullable_to_non_nullable
              as String,
      vestingStake: vestingStake == freezed
          ? _value.vestingStake
          : vestingStake // ignore: cast_nullable_to_non_nullable
              as String,
      lockStake: lockStake == freezed
          ? _value.lockStake
          : lockStake // ignore: cast_nullable_to_non_nullable
              as String,
      reinvest: reinvest == freezed
          ? _value.reinvest
          : reinvest // ignore: cast_nullable_to_non_nullable
              as bool,
      reason: reason == freezed
          ? _value.reason
          : reason // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DePoolOnRoundCompleteNotification
    implements _DePoolOnRoundCompleteNotification {
  const _$_DePoolOnRoundCompleteNotification(
      {required this.roundId,
      required this.reward,
      required this.ordinaryStake,
      required this.vestingStake,
      required this.lockStake,
      required this.reinvest,
      required this.reason});

  factory _$_DePoolOnRoundCompleteNotification.fromJson(
          Map<String, dynamic> json) =>
      _$$_DePoolOnRoundCompleteNotificationFromJson(json);

  @override
  final String roundId;
  @override
  final String reward;
  @override
  final String ordinaryStake;
  @override
  final String vestingStake;
  @override
  final String lockStake;
  @override
  final bool reinvest;
  @override
  final int reason;

  @override
  String toString() {
    return 'DePoolOnRoundCompleteNotification(roundId: $roundId, reward: $reward, ordinaryStake: $ordinaryStake, vestingStake: $vestingStake, lockStake: $lockStake, reinvest: $reinvest, reason: $reason)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DePoolOnRoundCompleteNotification &&
            const DeepCollectionEquality().equals(other.roundId, roundId) &&
            const DeepCollectionEquality().equals(other.reward, reward) &&
            const DeepCollectionEquality()
                .equals(other.ordinaryStake, ordinaryStake) &&
            const DeepCollectionEquality()
                .equals(other.vestingStake, vestingStake) &&
            const DeepCollectionEquality().equals(other.lockStake, lockStake) &&
            const DeepCollectionEquality().equals(other.reinvest, reinvest) &&
            const DeepCollectionEquality().equals(other.reason, reason));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(roundId),
      const DeepCollectionEquality().hash(reward),
      const DeepCollectionEquality().hash(ordinaryStake),
      const DeepCollectionEquality().hash(vestingStake),
      const DeepCollectionEquality().hash(lockStake),
      const DeepCollectionEquality().hash(reinvest),
      const DeepCollectionEquality().hash(reason));

  @JsonKey(ignore: true)
  @override
  _$$_DePoolOnRoundCompleteNotificationCopyWith<
          _$_DePoolOnRoundCompleteNotification>
      get copyWith => __$$_DePoolOnRoundCompleteNotificationCopyWithImpl<
          _$_DePoolOnRoundCompleteNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DePoolOnRoundCompleteNotificationToJson(
      this,
    );
  }
}

abstract class _DePoolOnRoundCompleteNotification
    implements DePoolOnRoundCompleteNotification {
  const factory _DePoolOnRoundCompleteNotification(
      {required final String roundId,
      required final String reward,
      required final String ordinaryStake,
      required final String vestingStake,
      required final String lockStake,
      required final bool reinvest,
      required final int reason}) = _$_DePoolOnRoundCompleteNotification;

  factory _DePoolOnRoundCompleteNotification.fromJson(
          Map<String, dynamic> json) =
      _$_DePoolOnRoundCompleteNotification.fromJson;

  @override
  String get roundId;
  @override
  String get reward;
  @override
  String get ordinaryStake;
  @override
  String get vestingStake;
  @override
  String get lockStake;
  @override
  bool get reinvest;
  @override
  int get reason;
  @override
  @JsonKey(ignore: true)
  _$$_DePoolOnRoundCompleteNotificationCopyWith<
          _$_DePoolOnRoundCompleteNotification>
      get copyWith => throw _privateConstructorUsedError;
}
