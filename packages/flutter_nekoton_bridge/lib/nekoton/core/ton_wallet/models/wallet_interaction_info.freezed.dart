// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String? get recipient => throw _privateConstructorUsedError;
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
      _$WalletInteractionInfoCopyWithImpl<$Res>;
  $Res call(
      {@JsonKey(includeIfNull: false) String? recipient,
      @JsonKey(includeIfNull: false) KnownPayload? knownPayload,
      WalletInteractionMethod method});

  $KnownPayloadCopyWith<$Res>? get knownPayload;
  $WalletInteractionMethodCopyWith<$Res> get method;
}

/// @nodoc
class _$WalletInteractionInfoCopyWithImpl<$Res>
    implements $WalletInteractionInfoCopyWith<$Res> {
  _$WalletInteractionInfoCopyWithImpl(this._value, this._then);

  final WalletInteractionInfo _value;
  // ignore: unused_field
  final $Res Function(WalletInteractionInfo) _then;

  @override
  $Res call({
    Object? recipient = freezed,
    Object? knownPayload = freezed,
    Object? method = freezed,
  }) {
    return _then(_value.copyWith(
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      knownPayload: knownPayload == freezed
          ? _value.knownPayload
          : knownPayload // ignore: cast_nullable_to_non_nullable
              as KnownPayload?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as WalletInteractionMethod,
    ));
  }

  @override
  $KnownPayloadCopyWith<$Res>? get knownPayload {
    if (_value.knownPayload == null) {
      return null;
    }

    return $KnownPayloadCopyWith<$Res>(_value.knownPayload!, (value) {
      return _then(_value.copyWith(knownPayload: value));
    });
  }

  @override
  $WalletInteractionMethodCopyWith<$Res> get method {
    return $WalletInteractionMethodCopyWith<$Res>(_value.method, (value) {
      return _then(_value.copyWith(method: value));
    });
  }
}

/// @nodoc
abstract class _$$_WalletInteractionInfoCopyWith<$Res>
    implements $WalletInteractionInfoCopyWith<$Res> {
  factory _$$_WalletInteractionInfoCopyWith(_$_WalletInteractionInfo value,
          $Res Function(_$_WalletInteractionInfo) then) =
      __$$_WalletInteractionInfoCopyWithImpl<$Res>;
  @override
  $Res call(
      {@JsonKey(includeIfNull: false) String? recipient,
      @JsonKey(includeIfNull: false) KnownPayload? knownPayload,
      WalletInteractionMethod method});

  @override
  $KnownPayloadCopyWith<$Res>? get knownPayload;
  @override
  $WalletInteractionMethodCopyWith<$Res> get method;
}

/// @nodoc
class __$$_WalletInteractionInfoCopyWithImpl<$Res>
    extends _$WalletInteractionInfoCopyWithImpl<$Res>
    implements _$$_WalletInteractionInfoCopyWith<$Res> {
  __$$_WalletInteractionInfoCopyWithImpl(_$_WalletInteractionInfo _value,
      $Res Function(_$_WalletInteractionInfo) _then)
      : super(_value, (v) => _then(v as _$_WalletInteractionInfo));

  @override
  _$_WalletInteractionInfo get _value =>
      super._value as _$_WalletInteractionInfo;

  @override
  $Res call({
    Object? recipient = freezed,
    Object? knownPayload = freezed,
    Object? method = freezed,
  }) {
    return _then(_$_WalletInteractionInfo(
      recipient: recipient == freezed
          ? _value.recipient
          : recipient // ignore: cast_nullable_to_non_nullable
              as String?,
      knownPayload: knownPayload == freezed
          ? _value.knownPayload
          : knownPayload // ignore: cast_nullable_to_non_nullable
              as KnownPayload?,
      method: method == freezed
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as WalletInteractionMethod,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletInteractionInfo implements _WalletInteractionInfo {
  const _$_WalletInteractionInfo(
      {@JsonKey(includeIfNull: false) this.recipient,
      @JsonKey(includeIfNull: false) this.knownPayload,
      required this.method});

  factory _$_WalletInteractionInfo.fromJson(Map<String, dynamic> json) =>
      _$$_WalletInteractionInfoFromJson(json);

  @override
  @JsonKey(includeIfNull: false)
  final String? recipient;
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
            other is _$_WalletInteractionInfo &&
            const DeepCollectionEquality().equals(other.recipient, recipient) &&
            const DeepCollectionEquality()
                .equals(other.knownPayload, knownPayload) &&
            const DeepCollectionEquality().equals(other.method, method));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(recipient),
      const DeepCollectionEquality().hash(knownPayload),
      const DeepCollectionEquality().hash(method));

  @JsonKey(ignore: true)
  @override
  _$$_WalletInteractionInfoCopyWith<_$_WalletInteractionInfo> get copyWith =>
      __$$_WalletInteractionInfoCopyWithImpl<_$_WalletInteractionInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletInteractionInfoToJson(
      this,
    );
  }
}

abstract class _WalletInteractionInfo implements WalletInteractionInfo {
  const factory _WalletInteractionInfo(
          {@JsonKey(includeIfNull: false) final String? recipient,
          @JsonKey(includeIfNull: false) final KnownPayload? knownPayload,
          required final WalletInteractionMethod method}) =
      _$_WalletInteractionInfo;

  factory _WalletInteractionInfo.fromJson(Map<String, dynamic> json) =
      _$_WalletInteractionInfo.fromJson;

  @override
  @JsonKey(includeIfNull: false)
  String? get recipient;
  @override
  @JsonKey(includeIfNull: false)
  KnownPayload? get knownPayload;
  @override
  WalletInteractionMethod get method;
  @override
  @JsonKey(ignore: true)
  _$$_WalletInteractionInfoCopyWith<_$_WalletInteractionInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
