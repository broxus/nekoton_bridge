// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ton_wallet_details.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TonWalletDetails _$TonWalletDetailsFromJson(Map<String, dynamic> json) {
  return _TonWalletDetails.fromJson(json);
}

/// @nodoc
mixin _$TonWalletDetails {
  bool get requiresSeparateDeploy => throw _privateConstructorUsedError;
  String get minAmount => throw _privateConstructorUsedError;
  bool get supportsPayload => throw _privateConstructorUsedError;
  bool get supportsMultipleOwners => throw _privateConstructorUsedError;
  int get expirationTime => throw _privateConstructorUsedError;
  int? get requiredConfirmations => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TonWalletDetailsCopyWith<TonWalletDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TonWalletDetailsCopyWith<$Res> {
  factory $TonWalletDetailsCopyWith(
          TonWalletDetails value, $Res Function(TonWalletDetails) then) =
      _$TonWalletDetailsCopyWithImpl<$Res, TonWalletDetails>;
  @useResult
  $Res call(
      {bool requiresSeparateDeploy,
      String minAmount,
      bool supportsPayload,
      bool supportsMultipleOwners,
      int expirationTime,
      int? requiredConfirmations});
}

/// @nodoc
class _$TonWalletDetailsCopyWithImpl<$Res, $Val extends TonWalletDetails>
    implements $TonWalletDetailsCopyWith<$Res> {
  _$TonWalletDetailsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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
    return _then(_value.copyWith(
      requiresSeparateDeploy: null == requiresSeparateDeploy
          ? _value.requiresSeparateDeploy
          : requiresSeparateDeploy // ignore: cast_nullable_to_non_nullable
              as bool,
      minAmount: null == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as String,
      supportsPayload: null == supportsPayload
          ? _value.supportsPayload
          : supportsPayload // ignore: cast_nullable_to_non_nullable
              as bool,
      supportsMultipleOwners: null == supportsMultipleOwners
          ? _value.supportsMultipleOwners
          : supportsMultipleOwners // ignore: cast_nullable_to_non_nullable
              as bool,
      expirationTime: null == expirationTime
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as int,
      requiredConfirmations: freezed == requiredConfirmations
          ? _value.requiredConfirmations
          : requiredConfirmations // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TonWalletDetailsCopyWith<$Res>
    implements $TonWalletDetailsCopyWith<$Res> {
  factory _$$_TonWalletDetailsCopyWith(
          _$_TonWalletDetails value, $Res Function(_$_TonWalletDetails) then) =
      __$$_TonWalletDetailsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool requiresSeparateDeploy,
      String minAmount,
      bool supportsPayload,
      bool supportsMultipleOwners,
      int expirationTime,
      int? requiredConfirmations});
}

/// @nodoc
class __$$_TonWalletDetailsCopyWithImpl<$Res>
    extends _$TonWalletDetailsCopyWithImpl<$Res, _$_TonWalletDetails>
    implements _$$_TonWalletDetailsCopyWith<$Res> {
  __$$_TonWalletDetailsCopyWithImpl(
      _$_TonWalletDetails _value, $Res Function(_$_TonWalletDetails) _then)
      : super(_value, _then);

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
    return _then(_$_TonWalletDetails(
      requiresSeparateDeploy: null == requiresSeparateDeploy
          ? _value.requiresSeparateDeploy
          : requiresSeparateDeploy // ignore: cast_nullable_to_non_nullable
              as bool,
      minAmount: null == minAmount
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as String,
      supportsPayload: null == supportsPayload
          ? _value.supportsPayload
          : supportsPayload // ignore: cast_nullable_to_non_nullable
              as bool,
      supportsMultipleOwners: null == supportsMultipleOwners
          ? _value.supportsMultipleOwners
          : supportsMultipleOwners // ignore: cast_nullable_to_non_nullable
              as bool,
      expirationTime: null == expirationTime
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as int,
      requiredConfirmations: freezed == requiredConfirmations
          ? _value.requiredConfirmations
          : requiredConfirmations // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_TonWalletDetails implements _TonWalletDetails {
  const _$_TonWalletDetails(
      {required this.requiresSeparateDeploy,
      required this.minAmount,
      required this.supportsPayload,
      required this.supportsMultipleOwners,
      required this.expirationTime,
      required this.requiredConfirmations});

  factory _$_TonWalletDetails.fromJson(Map<String, dynamic> json) =>
      _$$_TonWalletDetailsFromJson(json);

  @override
  final bool requiresSeparateDeploy;
  @override
  final String minAmount;
  @override
  final bool supportsPayload;
  @override
  final bool supportsMultipleOwners;
  @override
  final int expirationTime;
  @override
  final int? requiredConfirmations;

  @override
  String toString() {
    return 'TonWalletDetails(requiresSeparateDeploy: $requiresSeparateDeploy, minAmount: $minAmount, supportsPayload: $supportsPayload, supportsMultipleOwners: $supportsMultipleOwners, expirationTime: $expirationTime, requiredConfirmations: $requiredConfirmations)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TonWalletDetails &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      requiresSeparateDeploy,
      minAmount,
      supportsPayload,
      supportsMultipleOwners,
      expirationTime,
      requiredConfirmations);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TonWalletDetailsCopyWith<_$_TonWalletDetails> get copyWith =>
      __$$_TonWalletDetailsCopyWithImpl<_$_TonWalletDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TonWalletDetailsToJson(
      this,
    );
  }
}

abstract class _TonWalletDetails implements TonWalletDetails {
  const factory _TonWalletDetails(
      {required final bool requiresSeparateDeploy,
      required final String minAmount,
      required final bool supportsPayload,
      required final bool supportsMultipleOwners,
      required final int expirationTime,
      required final int? requiredConfirmations}) = _$_TonWalletDetails;

  factory _TonWalletDetails.fromJson(Map<String, dynamic> json) =
      _$_TonWalletDetails.fromJson;

  @override
  bool get requiresSeparateDeploy;
  @override
  String get minAmount;
  @override
  bool get supportsPayload;
  @override
  bool get supportsMultipleOwners;
  @override
  int get expirationTime;
  @override
  int? get requiredConfirmations;
  @override
  @JsonKey(ignore: true)
  _$$_TonWalletDetailsCopyWith<_$_TonWalletDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
