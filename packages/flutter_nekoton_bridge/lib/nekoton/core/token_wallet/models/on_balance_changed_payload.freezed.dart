// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_balance_changed_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnBalanceChangedPayload {
  @amountJsonConverter
  BigInt get balance;

  /// Create a copy of OnBalanceChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnBalanceChangedPayloadCopyWith<OnBalanceChangedPayload> get copyWith =>
      _$OnBalanceChangedPayloadCopyWithImpl<OnBalanceChangedPayload>(
          this as OnBalanceChangedPayload, _$identity);

  /// Serializes this OnBalanceChangedPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnBalanceChangedPayload &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance);

  @override
  String toString() {
    return 'OnBalanceChangedPayload(balance: $balance)';
  }
}

/// @nodoc
abstract mixin class $OnBalanceChangedPayloadCopyWith<$Res> {
  factory $OnBalanceChangedPayloadCopyWith(OnBalanceChangedPayload value,
          $Res Function(OnBalanceChangedPayload) _then) =
      _$OnBalanceChangedPayloadCopyWithImpl;
  @useResult
  $Res call({@amountJsonConverter BigInt balance});
}

/// @nodoc
class _$OnBalanceChangedPayloadCopyWithImpl<$Res>
    implements $OnBalanceChangedPayloadCopyWith<$Res> {
  _$OnBalanceChangedPayloadCopyWithImpl(this._self, this._then);

  final OnBalanceChangedPayload _self;
  final $Res Function(OnBalanceChangedPayload) _then;

  /// Create a copy of OnBalanceChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_self.copyWith(
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _OnBalanceChangedPayload implements OnBalanceChangedPayload {
  const _OnBalanceChangedPayload({@amountJsonConverter required this.balance});
  factory _OnBalanceChangedPayload.fromJson(Map<String, dynamic> json) =>
      _$OnBalanceChangedPayloadFromJson(json);

  @override
  @amountJsonConverter
  final BigInt balance;

  /// Create a copy of OnBalanceChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnBalanceChangedPayloadCopyWith<_OnBalanceChangedPayload> get copyWith =>
      __$OnBalanceChangedPayloadCopyWithImpl<_OnBalanceChangedPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OnBalanceChangedPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnBalanceChangedPayload &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance);

  @override
  String toString() {
    return 'OnBalanceChangedPayload(balance: $balance)';
  }
}

/// @nodoc
abstract mixin class _$OnBalanceChangedPayloadCopyWith<$Res>
    implements $OnBalanceChangedPayloadCopyWith<$Res> {
  factory _$OnBalanceChangedPayloadCopyWith(_OnBalanceChangedPayload value,
          $Res Function(_OnBalanceChangedPayload) _then) =
      __$OnBalanceChangedPayloadCopyWithImpl;
  @override
  @useResult
  $Res call({@amountJsonConverter BigInt balance});
}

/// @nodoc
class __$OnBalanceChangedPayloadCopyWithImpl<$Res>
    implements _$OnBalanceChangedPayloadCopyWith<$Res> {
  __$OnBalanceChangedPayloadCopyWithImpl(this._self, this._then);

  final _OnBalanceChangedPayload _self;
  final $Res Function(_OnBalanceChangedPayload) _then;

  /// Create a copy of OnBalanceChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? balance = null,
  }) {
    return _then(_OnBalanceChangedPayload(
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

// dart format on
