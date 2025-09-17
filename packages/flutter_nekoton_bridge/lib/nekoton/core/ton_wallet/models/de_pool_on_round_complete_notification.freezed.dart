// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
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

 String get roundId;@amountJsonConverter BigInt get reward;@amountJsonConverter BigInt get ordinaryStake;@amountJsonConverter BigInt get vestingStake;@amountJsonConverter BigInt get lockStake; bool get reinvest; int get reason;
/// Create a copy of DePoolOnRoundCompleteNotification
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$DePoolOnRoundCompleteNotificationCopyWith<DePoolOnRoundCompleteNotification> get copyWith => _$DePoolOnRoundCompleteNotificationCopyWithImpl<DePoolOnRoundCompleteNotification>(this as DePoolOnRoundCompleteNotification, _$identity);

  /// Serializes this DePoolOnRoundCompleteNotification to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is DePoolOnRoundCompleteNotification&&(identical(other.roundId, roundId) || other.roundId == roundId)&&(identical(other.reward, reward) || other.reward == reward)&&(identical(other.ordinaryStake, ordinaryStake) || other.ordinaryStake == ordinaryStake)&&(identical(other.vestingStake, vestingStake) || other.vestingStake == vestingStake)&&(identical(other.lockStake, lockStake) || other.lockStake == lockStake)&&(identical(other.reinvest, reinvest) || other.reinvest == reinvest)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roundId,reward,ordinaryStake,vestingStake,lockStake,reinvest,reason);

@override
String toString() {
  return 'DePoolOnRoundCompleteNotification(roundId: $roundId, reward: $reward, ordinaryStake: $ordinaryStake, vestingStake: $vestingStake, lockStake: $lockStake, reinvest: $reinvest, reason: $reason)';
}


}

/// @nodoc
abstract mixin class $DePoolOnRoundCompleteNotificationCopyWith<$Res>  {
  factory $DePoolOnRoundCompleteNotificationCopyWith(DePoolOnRoundCompleteNotification value, $Res Function(DePoolOnRoundCompleteNotification) _then) = _$DePoolOnRoundCompleteNotificationCopyWithImpl;
@useResult
$Res call({
 String roundId,@amountJsonConverter BigInt reward,@amountJsonConverter BigInt ordinaryStake,@amountJsonConverter BigInt vestingStake,@amountJsonConverter BigInt lockStake, bool reinvest, int reason
});




}
/// @nodoc
class _$DePoolOnRoundCompleteNotificationCopyWithImpl<$Res>
    implements $DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  _$DePoolOnRoundCompleteNotificationCopyWithImpl(this._self, this._then);

  final DePoolOnRoundCompleteNotification _self;
  final $Res Function(DePoolOnRoundCompleteNotification) _then;

/// Create a copy of DePoolOnRoundCompleteNotification
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? roundId = null,Object? reward = null,Object? ordinaryStake = null,Object? vestingStake = null,Object? lockStake = null,Object? reinvest = null,Object? reason = null,}) {
  return _then(_self.copyWith(
roundId: null == roundId ? _self.roundId : roundId // ignore: cast_nullable_to_non_nullable
as String,reward: null == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as BigInt,ordinaryStake: null == ordinaryStake ? _self.ordinaryStake : ordinaryStake // ignore: cast_nullable_to_non_nullable
as BigInt,vestingStake: null == vestingStake ? _self.vestingStake : vestingStake // ignore: cast_nullable_to_non_nullable
as BigInt,lockStake: null == lockStake ? _self.lockStake : lockStake // ignore: cast_nullable_to_non_nullable
as BigInt,reinvest: null == reinvest ? _self.reinvest : reinvest // ignore: cast_nullable_to_non_nullable
as bool,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [DePoolOnRoundCompleteNotification].
extension DePoolOnRoundCompleteNotificationPatterns on DePoolOnRoundCompleteNotification {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _DePoolOnRoundCompleteNotification value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _DePoolOnRoundCompleteNotification() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _DePoolOnRoundCompleteNotification value)  $default,){
final _that = this;
switch (_that) {
case _DePoolOnRoundCompleteNotification():
return $default(_that);}
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _DePoolOnRoundCompleteNotification value)?  $default,){
final _that = this;
switch (_that) {
case _DePoolOnRoundCompleteNotification() when $default != null:
return $default(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String roundId, @amountJsonConverter  BigInt reward, @amountJsonConverter  BigInt ordinaryStake, @amountJsonConverter  BigInt vestingStake, @amountJsonConverter  BigInt lockStake,  bool reinvest,  int reason)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _DePoolOnRoundCompleteNotification() when $default != null:
return $default(_that.roundId,_that.reward,_that.ordinaryStake,_that.vestingStake,_that.lockStake,_that.reinvest,_that.reason);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String roundId, @amountJsonConverter  BigInt reward, @amountJsonConverter  BigInt ordinaryStake, @amountJsonConverter  BigInt vestingStake, @amountJsonConverter  BigInt lockStake,  bool reinvest,  int reason)  $default,) {final _that = this;
switch (_that) {
case _DePoolOnRoundCompleteNotification():
return $default(_that.roundId,_that.reward,_that.ordinaryStake,_that.vestingStake,_that.lockStake,_that.reinvest,_that.reason);}
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String roundId, @amountJsonConverter  BigInt reward, @amountJsonConverter  BigInt ordinaryStake, @amountJsonConverter  BigInt vestingStake, @amountJsonConverter  BigInt lockStake,  bool reinvest,  int reason)?  $default,) {final _that = this;
switch (_that) {
case _DePoolOnRoundCompleteNotification() when $default != null:
return $default(_that.roundId,_that.reward,_that.ordinaryStake,_that.vestingStake,_that.lockStake,_that.reinvest,_that.reason);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _DePoolOnRoundCompleteNotification implements DePoolOnRoundCompleteNotification {
  const _DePoolOnRoundCompleteNotification({required this.roundId, @amountJsonConverter required this.reward, @amountJsonConverter required this.ordinaryStake, @amountJsonConverter required this.vestingStake, @amountJsonConverter required this.lockStake, required this.reinvest, required this.reason});
  factory _DePoolOnRoundCompleteNotification.fromJson(Map<String, dynamic> json) => _$DePoolOnRoundCompleteNotificationFromJson(json);

@override final  String roundId;
@override@amountJsonConverter final  BigInt reward;
@override@amountJsonConverter final  BigInt ordinaryStake;
@override@amountJsonConverter final  BigInt vestingStake;
@override@amountJsonConverter final  BigInt lockStake;
@override final  bool reinvest;
@override final  int reason;

/// Create a copy of DePoolOnRoundCompleteNotification
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$DePoolOnRoundCompleteNotificationCopyWith<_DePoolOnRoundCompleteNotification> get copyWith => __$DePoolOnRoundCompleteNotificationCopyWithImpl<_DePoolOnRoundCompleteNotification>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$DePoolOnRoundCompleteNotificationToJson(this, );
}

@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _DePoolOnRoundCompleteNotification&&(identical(other.roundId, roundId) || other.roundId == roundId)&&(identical(other.reward, reward) || other.reward == reward)&&(identical(other.ordinaryStake, ordinaryStake) || other.ordinaryStake == ordinaryStake)&&(identical(other.vestingStake, vestingStake) || other.vestingStake == vestingStake)&&(identical(other.lockStake, lockStake) || other.lockStake == lockStake)&&(identical(other.reinvest, reinvest) || other.reinvest == reinvest)&&(identical(other.reason, reason) || other.reason == reason));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode => Object.hash(runtimeType,roundId,reward,ordinaryStake,vestingStake,lockStake,reinvest,reason);

@override
String toString() {
  return 'DePoolOnRoundCompleteNotification(roundId: $roundId, reward: $reward, ordinaryStake: $ordinaryStake, vestingStake: $vestingStake, lockStake: $lockStake, reinvest: $reinvest, reason: $reason)';
}


}

/// @nodoc
abstract mixin class _$DePoolOnRoundCompleteNotificationCopyWith<$Res> implements $DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  factory _$DePoolOnRoundCompleteNotificationCopyWith(_DePoolOnRoundCompleteNotification value, $Res Function(_DePoolOnRoundCompleteNotification) _then) = __$DePoolOnRoundCompleteNotificationCopyWithImpl;
@override @useResult
$Res call({
 String roundId,@amountJsonConverter BigInt reward,@amountJsonConverter BigInt ordinaryStake,@amountJsonConverter BigInt vestingStake,@amountJsonConverter BigInt lockStake, bool reinvest, int reason
});




}
/// @nodoc
class __$DePoolOnRoundCompleteNotificationCopyWithImpl<$Res>
    implements _$DePoolOnRoundCompleteNotificationCopyWith<$Res> {
  __$DePoolOnRoundCompleteNotificationCopyWithImpl(this._self, this._then);

  final _DePoolOnRoundCompleteNotification _self;
  final $Res Function(_DePoolOnRoundCompleteNotification) _then;

/// Create a copy of DePoolOnRoundCompleteNotification
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? roundId = null,Object? reward = null,Object? ordinaryStake = null,Object? vestingStake = null,Object? lockStake = null,Object? reinvest = null,Object? reason = null,}) {
  return _then(_DePoolOnRoundCompleteNotification(
roundId: null == roundId ? _self.roundId : roundId // ignore: cast_nullable_to_non_nullable
as String,reward: null == reward ? _self.reward : reward // ignore: cast_nullable_to_non_nullable
as BigInt,ordinaryStake: null == ordinaryStake ? _self.ordinaryStake : ordinaryStake // ignore: cast_nullable_to_non_nullable
as BigInt,vestingStake: null == vestingStake ? _self.vestingStake : vestingStake // ignore: cast_nullable_to_non_nullable
as BigInt,lockStake: null == lockStake ? _self.lockStake : lockStake // ignore: cast_nullable_to_non_nullable
as BigInt,reinvest: null == reinvest ? _self.reinvest : reinvest // ignore: cast_nullable_to_non_nullable
as bool,reason: null == reason ? _self.reason : reason // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
