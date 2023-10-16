// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'wallet_interaction_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

WalletInteractionInfo _$WalletInteractionInfoFromJson(
    Map<String, dynamic> json) {
  return _WalletInteractionInfo.fromJson(json);
}

/// @nodoc
mixin _$WalletInteractionInfo {
  @JsonKey(includeIfNull: false)
  @amountJsonConverter
  Address? get recipient => throw _privateConstructorUsedError;
  @JsonKey(includeIfNull: false)
  KnownPayload? get knownPayload => throw _privateConstructorUsedError;
  WalletInteractionMethod get method => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $WalletInteractionInfoCopyWith<WalletInteractionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $WalletInteractionInfoCopyWith<$Res> {
  factory $WalletInteractionInfoCopyWith(WalletInteractionInfo value,
          $Res Function(WalletInteractionInfo) then) =
      _$WalletInteractionInfoCopyWithImpl<$Res, WalletInteractionInfo>;
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) @amountJsonConverter Address? recipient,
      @JsonKey(includeIfNull: false) KnownPayload? knownPayload,
      WalletInteractionMethod method});

  $AddressCopyWith<$Res>? get recipient;
  $KnownPayloadCopyWith<$Res>? get knownPayload;
  $WalletInteractionMethodCopyWith<$Res> get method;
}

/// @nodoc
class _$WalletInteractionInfoCopyWithImpl<$Res,
        $Val extends WalletInteractionInfo>
    implements $WalletInteractionInfoCopyWith<$Res> {
  _$WalletInteractionInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipient = freezed,
    Object? knownPayload = freezed,
    Object? method = null,
  }) {
    return _then(_value.copyWith(
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Address?,
      knownPayload: freezed == knownPayload
          ? _value.knownPayload
          : knownPayload // ignore: cast_nullable_to_non_nullable
              as KnownPayload?,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as WalletInteractionMethod,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get recipient {
    if (_value.recipient == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.recipient!, (value) {
      return _then(_value.copyWith(recipient: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $KnownPayloadCopyWith<$Res>? get knownPayload {
    if (_value.knownPayload == null) {
      return null;
    }

    return $KnownPayloadCopyWith<$Res>(_value.knownPayload!, (value) {
      return _then(_value.copyWith(knownPayload: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletInteractionMethodCopyWith<$Res> get method {
    return $WalletInteractionMethodCopyWith<$Res>(_value.method, (value) {
      return _then(_value.copyWith(method: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$WalletInteractionInfoImplCopyWith<$Res>
    implements $WalletInteractionInfoCopyWith<$Res> {
  factory _$$WalletInteractionInfoImplCopyWith(
          _$WalletInteractionInfoImpl value,
          $Res Function(_$WalletInteractionInfoImpl) then) =
      __$$WalletInteractionInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(includeIfNull: false) @amountJsonConverter Address? recipient,
      @JsonKey(includeIfNull: false) KnownPayload? knownPayload,
      WalletInteractionMethod method});

  @override
  $AddressCopyWith<$Res>? get recipient;
  @override
  $KnownPayloadCopyWith<$Res>? get knownPayload;
  @override
  $WalletInteractionMethodCopyWith<$Res> get method;
}

/// @nodoc
class __$$WalletInteractionInfoImplCopyWithImpl<$Res>
    extends _$WalletInteractionInfoCopyWithImpl<$Res,
        _$WalletInteractionInfoImpl>
    implements _$$WalletInteractionInfoImplCopyWith<$Res> {
  __$$WalletInteractionInfoImplCopyWithImpl(_$WalletInteractionInfoImpl _value,
      $Res Function(_$WalletInteractionInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? recipient = freezed,
    Object? knownPayload = freezed,
    Object? method = null,
  }) {
    return _then(_$WalletInteractionInfoImpl(
      recipient: freezed == recipient
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as Address?,
      knownPayload: freezed == knownPayload
          ? _value.knownPayload
          : knownPayload // ignore: cast_nullable_to_non_nullable
              as KnownPayload?,
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as WalletInteractionMethod,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$WalletInteractionInfoImpl implements _WalletInteractionInfo {
  const _$WalletInteractionInfoImpl(
      {@JsonKey(includeIfNull: false) @amountJsonConverter this.recipient,
      @JsonKey(includeIfNull: false) this.knownPayload,
      required this.method});

  factory _$WalletInteractionInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletInteractionInfoImplFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  @amountJsonConverter
  final Address? recipient;
  @override
  @JsonKey(includeIfNull: false)
  final KnownPayload? knownPayload;
  @override
  final WalletInteractionMethod method;

  @override
  String toString() {
    return 'WalletInteractionInfo(recipient: $recipient, knownPayload: $knownPayload, method: $method)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletInteractionInfoImpl &&
            (identical(other.recipient, recipient) ||
                other.recipient == recipient) &&
            (identical(other.knownPayload, knownPayload) ||
                other.knownPayload == knownPayload) &&
            (identical(other.method, method) || other.method == method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, recipient, knownPayload, method);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletInteractionInfoImplCopyWith<_$WalletInteractionInfoImpl>
      get copyWith => __$$WalletInteractionInfoImplCopyWithImpl<
          _$WalletInteractionInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$WalletInteractionInfoImplToJson(
      this,
    );
  }
}

abstract class _WalletInteractionInfo implements WalletInteractionInfo {
  const factory _WalletInteractionInfo(
          {@JsonKey(includeIfNull: false)
          @amountJsonConverter
          final Address? recipient,
          @JsonKey(includeIfNull: false) final KnownPayload? knownPayload,
          required final WalletInteractionMethod method}) =
      _$WalletInteractionInfoImpl;

  factory _WalletInteractionInfo.fromJson(Map<String, dynamic> json) =
      _$WalletInteractionInfoImpl.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  @amountJsonConverter
  Address? get recipient;
  @override
  @JsonKey(includeIfNull: false)
  KnownPayload? get knownPayload;
  @override
  WalletInteractionMethod get method;
  @override
  @JsonKey(ignore: true)
  _$$WalletInteractionInfoImplCopyWith<_$WalletInteractionInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
