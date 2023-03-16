// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$TonWalletDetailsCopyWithImpl<$Res>;
  $Res call(
      {bool requiresSeparateDeploy,
      String minAmount,
      bool supportsPayload,
      bool supportsMultipleOwners,
      int expirationTime,
      int? requiredConfirmations});
}

/// @nodoc
class _$TonWalletDetailsCopyWithImpl<$Res>
    implements $TonWalletDetailsCopyWith<$Res> {
  _$TonWalletDetailsCopyWithImpl(this._value, this._then);

  final TonWalletDetails _value;
  // ignore: unused_field
  final $Res Function(TonWalletDetails) _then;

  @override
  $Res call({
    Object? requiresSeparateDeploy = freezed,
    Object? minAmount = freezed,
    Object? supportsPayload = freezed,
    Object? supportsMultipleOwners = freezed,
    Object? expirationTime = freezed,
    Object? requiredConfirmations = freezed,
  }) {
    return _then(_value.copyWith(
      requiresSeparateDeploy: requiresSeparateDeploy == freezed
          ? _value.requiresSeparateDeploy
          : requiresSeparateDeploy // ignore: cast_nullable_to_non_nullable
              as bool,
      minAmount: minAmount == freezed
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as String,
      supportsPayload: supportsPayload == freezed
          ? _value.supportsPayload
          : supportsPayload // ignore: cast_nullable_to_non_nullable
              as bool,
      supportsMultipleOwners: supportsMultipleOwners == freezed
          ? _value.supportsMultipleOwners
          : supportsMultipleOwners // ignore: cast_nullable_to_non_nullable
              as bool,
      expirationTime: expirationTime == freezed
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as int,
      requiredConfirmations: requiredConfirmations == freezed
          ? _value.requiredConfirmations
          : requiredConfirmations // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
abstract class _$$_TonWalletDetailsCopyWith<$Res>
    implements $TonWalletDetailsCopyWith<$Res> {
  factory _$$_TonWalletDetailsCopyWith(
          _$_TonWalletDetails value, $Res Function(_$_TonWalletDetails) then) =
      __$$_TonWalletDetailsCopyWithImpl<$Res>;
  @override
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
    extends _$TonWalletDetailsCopyWithImpl<$Res>
    implements _$$_TonWalletDetailsCopyWith<$Res> {
  __$$_TonWalletDetailsCopyWithImpl(
      _$_TonWalletDetails _value, $Res Function(_$_TonWalletDetails) _then)
      : super(_value, (v) => _then(v as _$_TonWalletDetails));

  @override
  _$_TonWalletDetails get _value => super._value as _$_TonWalletDetails;

  @override
  $Res call({
    Object? requiresSeparateDeploy = freezed,
    Object? minAmount = freezed,
    Object? supportsPayload = freezed,
    Object? supportsMultipleOwners = freezed,
    Object? expirationTime = freezed,
    Object? requiredConfirmations = freezed,
  }) {
    return _then(_$_TonWalletDetails(
      requiresSeparateDeploy: requiresSeparateDeploy == freezed
          ? _value.requiresSeparateDeploy
          : requiresSeparateDeploy // ignore: cast_nullable_to_non_nullable
              as bool,
      minAmount: minAmount == freezed
          ? _value.minAmount
          : minAmount // ignore: cast_nullable_to_non_nullable
              as String,
      supportsPayload: supportsPayload == freezed
          ? _value.supportsPayload
          : supportsPayload // ignore: cast_nullable_to_non_nullable
              as bool,
      supportsMultipleOwners: supportsMultipleOwners == freezed
          ? _value.supportsMultipleOwners
          : supportsMultipleOwners // ignore: cast_nullable_to_non_nullable
              as bool,
      expirationTime: expirationTime == freezed
          ? _value.expirationTime
          : expirationTime // ignore: cast_nullable_to_non_nullable
              as int,
      requiredConfirmations: requiredConfirmations == freezed
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
            const DeepCollectionEquality()
                .equals(other.requiresSeparateDeploy, requiresSeparateDeploy) &&
            const DeepCollectionEquality().equals(other.minAmount, minAmount) &&
            const DeepCollectionEquality()
                .equals(other.supportsPayload, supportsPayload) &&
            const DeepCollectionEquality()
                .equals(other.supportsMultipleOwners, supportsMultipleOwners) &&
            const DeepCollectionEquality()
                .equals(other.expirationTime, expirationTime) &&
            const DeepCollectionEquality()
                .equals(other.requiredConfirmations, requiredConfirmations));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(requiresSeparateDeploy),
      const DeepCollectionEquality().hash(minAmount),
      const DeepCollectionEquality().hash(supportsPayload),
      const DeepCollectionEquality().hash(supportsMultipleOwners),
      const DeepCollectionEquality().hash(expirationTime),
      const DeepCollectionEquality().hash(requiredConfirmations));

  @JsonKey(ignore: true)
  @override
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
