// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_balance_changed_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnBalanceChangedPayload _$OnBalanceChangedPayloadFromJson(
    Map<String, dynamic> json) {
  return _OnBalanceChangedPayload.fromJson(json);
}

/// @nodoc
mixin _$OnBalanceChangedPayload {
  @amountJsonConverter
  BigInt get balance => throw _privateConstructorUsedError;

  /// Serializes this OnBalanceChangedPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnBalanceChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnBalanceChangedPayloadCopyWith<OnBalanceChangedPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBalanceChangedPayloadCopyWith<$Res> {
  factory $OnBalanceChangedPayloadCopyWith(OnBalanceChangedPayload value,
          $Res Function(OnBalanceChangedPayload) then) =
      _$OnBalanceChangedPayloadCopyWithImpl<$Res, OnBalanceChangedPayload>;
  @useResult
  $Res call({@amountJsonConverter BigInt balance});
}

/// @nodoc
class _$OnBalanceChangedPayloadCopyWithImpl<$Res,
        $Val extends OnBalanceChangedPayload>
    implements $OnBalanceChangedPayloadCopyWith<$Res> {
  _$OnBalanceChangedPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnBalanceChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OnBalanceChangedPayloadImplCopyWith<$Res>
    implements $OnBalanceChangedPayloadCopyWith<$Res> {
  factory _$$OnBalanceChangedPayloadImplCopyWith(
          _$OnBalanceChangedPayloadImpl value,
          $Res Function(_$OnBalanceChangedPayloadImpl) then) =
      __$$OnBalanceChangedPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@amountJsonConverter BigInt balance});
}

/// @nodoc
class __$$OnBalanceChangedPayloadImplCopyWithImpl<$Res>
    extends _$OnBalanceChangedPayloadCopyWithImpl<$Res,
        _$OnBalanceChangedPayloadImpl>
    implements _$$OnBalanceChangedPayloadImplCopyWith<$Res> {
  __$$OnBalanceChangedPayloadImplCopyWithImpl(
      _$OnBalanceChangedPayloadImpl _value,
      $Res Function(_$OnBalanceChangedPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnBalanceChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$OnBalanceChangedPayloadImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OnBalanceChangedPayloadImpl implements _OnBalanceChangedPayload {
  const _$OnBalanceChangedPayloadImpl(
      {@amountJsonConverter required this.balance});

  factory _$OnBalanceChangedPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnBalanceChangedPayloadImplFromJson(json);

  @override
  @amountJsonConverter
  final BigInt balance;

  @override
  String toString() {
    return 'OnBalanceChangedPayload(balance: $balance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBalanceChangedPayloadImpl &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance);

  /// Create a copy of OnBalanceChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBalanceChangedPayloadImplCopyWith<_$OnBalanceChangedPayloadImpl>
      get copyWith => __$$OnBalanceChangedPayloadImplCopyWithImpl<
          _$OnBalanceChangedPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnBalanceChangedPayloadImplToJson(
      this,
    );
  }
}

abstract class _OnBalanceChangedPayload implements OnBalanceChangedPayload {
  const factory _OnBalanceChangedPayload(
          {@amountJsonConverter required final BigInt balance}) =
      _$OnBalanceChangedPayloadImpl;

  factory _OnBalanceChangedPayload.fromJson(Map<String, dynamic> json) =
      _$OnBalanceChangedPayloadImpl.fromJson;

  @override
  @amountJsonConverter
  BigInt get balance;

  /// Create a copy of OnBalanceChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnBalanceChangedPayloadImplCopyWith<_$OnBalanceChangedPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}
