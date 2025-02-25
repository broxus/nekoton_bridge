// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_wallet_transfer_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TonWalletTransferParams _$TonWalletTransferParamsFromJson(
    Map<String, dynamic> json) {
  return _TonWalletTransferParams.fromJson(json);
}

/// @nodoc
mixin _$TonWalletTransferParams {
  Address get destination => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get amount => throw _privateConstructorUsedError;
  bool get bounce => throw _privateConstructorUsedError;
  String? get body => throw _privateConstructorUsedError;
  String? get stateInit => throw _privateConstructorUsedError;

  /// Serializes this TonWalletTransferParams to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TonWalletTransferParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TonWalletTransferParamsCopyWith<TonWalletTransferParams> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonWalletTransferParamsCopyWith<$Res> {
  factory $TonWalletTransferParamsCopyWith(TonWalletTransferParams value,
          $Res Function(TonWalletTransferParams) then) =
      _$TonWalletTransferParamsCopyWithImpl<$Res, TonWalletTransferParams>;
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
class _$TonWalletTransferParamsCopyWithImpl<$Res,
        $Val extends TonWalletTransferParams>
    implements $TonWalletTransferParamsCopyWith<$Res> {
  _$TonWalletTransferParamsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      stateInit: freezed == stateInit
          ? _value.stateInit
          : stateInit // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  /// Create a copy of TonWalletTransferParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get destination {
    return $AddressCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TonWalletTransferParamsImplCopyWith<$Res>
    implements $TonWalletTransferParamsCopyWith<$Res> {
  factory _$$TonWalletTransferParamsImplCopyWith(
          _$TonWalletTransferParamsImpl value,
          $Res Function(_$TonWalletTransferParamsImpl) then) =
      __$$TonWalletTransferParamsImplCopyWithImpl<$Res>;
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
class __$$TonWalletTransferParamsImplCopyWithImpl<$Res>
    extends _$TonWalletTransferParamsCopyWithImpl<$Res,
        _$TonWalletTransferParamsImpl>
    implements _$$TonWalletTransferParamsImplCopyWith<$Res> {
  __$$TonWalletTransferParamsImplCopyWithImpl(
      _$TonWalletTransferParamsImpl _value,
      $Res Function(_$TonWalletTransferParamsImpl) _then)
      : super(_value, _then);

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
    return _then(_$TonWalletTransferParamsImpl(
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      body: freezed == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String?,
      stateInit: freezed == stateInit
          ? _value.stateInit
          : stateInit // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TonWalletTransferParamsImpl implements _TonWalletTransferParams {
  _$TonWalletTransferParamsImpl(
      {required this.destination,
      @amountJsonConverter required this.amount,
      required this.bounce,
      this.body,
      this.stateInit});

  factory _$TonWalletTransferParamsImpl.fromJson(Map<String, dynamic> json) =>
      _$$TonWalletTransferParamsImplFromJson(json);

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

  @override
  String toString() {
    return 'TonWalletTransferParams(destination: $destination, amount: $amount, bounce: $bounce, body: $body, stateInit: $stateInit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TonWalletTransferParamsImpl &&
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

  /// Create a copy of TonWalletTransferParams
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TonWalletTransferParamsImplCopyWith<_$TonWalletTransferParamsImpl>
      get copyWith => __$$TonWalletTransferParamsImplCopyWithImpl<
          _$TonWalletTransferParamsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TonWalletTransferParamsImplToJson(
      this,
    );
  }
}

abstract class _TonWalletTransferParams implements TonWalletTransferParams {
  factory _TonWalletTransferParams(
      {required final Address destination,
      @amountJsonConverter required final BigInt amount,
      required final bool bounce,
      final String? body,
      final String? stateInit}) = _$TonWalletTransferParamsImpl;

  factory _TonWalletTransferParams.fromJson(Map<String, dynamic> json) =
      _$TonWalletTransferParamsImpl.fromJson;

  @override
  Address get destination;
  @override
  @amountJsonConverter
  BigInt get amount;
  @override
  bool get bounce;
  @override
  String? get body;
  @override
  String? get stateInit;

  /// Create a copy of TonWalletTransferParams
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TonWalletTransferParamsImplCopyWith<_$TonWalletTransferParamsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
