// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_wallet_deployed_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenWalletDeployedNotification _$TokenWalletDeployedNotificationFromJson(
    Map<String, dynamic> json) {
  return _TokenWalletDeployedNotification.fromJson(json);
}

/// @nodoc
mixin _$TokenWalletDeployedNotification {
  String get rootTokenContract => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenWalletDeployedNotificationCopyWith<TokenWalletDeployedNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenWalletDeployedNotificationCopyWith<$Res> {
  factory $TokenWalletDeployedNotificationCopyWith(
          TokenWalletDeployedNotification value,
          $Res Function(TokenWalletDeployedNotification) then) =
      _$TokenWalletDeployedNotificationCopyWithImpl<$Res>;
  $Res call({String rootTokenContract});
}

/// @nodoc
class _$TokenWalletDeployedNotificationCopyWithImpl<$Res>
    implements $TokenWalletDeployedNotificationCopyWith<$Res> {
  _$TokenWalletDeployedNotificationCopyWithImpl(this._value, this._then);

  final TokenWalletDeployedNotification _value;
  // ignore: unused_field
  final $Res Function(TokenWalletDeployedNotification) _then;

  @override
  $Res call({
    Object? rootTokenContract = freezed,
  }) {
    return _then(_value.copyWith(
      rootTokenContract: rootTokenContract == freezed
          ? _value.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TokenWalletDeployedNotificationCopyWith<$Res>
    implements $TokenWalletDeployedNotificationCopyWith<$Res> {
  factory _$$_TokenWalletDeployedNotificationCopyWith(
          _$_TokenWalletDeployedNotification value,
          $Res Function(_$_TokenWalletDeployedNotification) then) =
      __$$_TokenWalletDeployedNotificationCopyWithImpl<$Res>;
  @override
  $Res call({String rootTokenContract});
}

/// @nodoc
class __$$_TokenWalletDeployedNotificationCopyWithImpl<$Res>
    extends _$TokenWalletDeployedNotificationCopyWithImpl<$Res>
    implements _$$_TokenWalletDeployedNotificationCopyWith<$Res> {
  __$$_TokenWalletDeployedNotificationCopyWithImpl(
      _$_TokenWalletDeployedNotification _value,
      $Res Function(_$_TokenWalletDeployedNotification) _then)
      : super(_value, (v) => _then(v as _$_TokenWalletDeployedNotification));

  @override
  _$_TokenWalletDeployedNotification get _value =>
      super._value as _$_TokenWalletDeployedNotification;

  @override
  $Res call({
    Object? rootTokenContract = freezed,
  }) {
    return _then(_$_TokenWalletDeployedNotification(
      rootTokenContract: rootTokenContract == freezed
          ? _value.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenWalletDeployedNotification
    implements _TokenWalletDeployedNotification {
  const _$_TokenWalletDeployedNotification({required this.rootTokenContract});

  factory _$_TokenWalletDeployedNotification.fromJson(
          Map<String, dynamic> json) =>
      _$$_TokenWalletDeployedNotificationFromJson(json);

  @override
  final String rootTokenContract;

  @override
  String toString() {
    return 'TokenWalletDeployedNotification(rootTokenContract: $rootTokenContract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenWalletDeployedNotification &&
            const DeepCollectionEquality()
                .equals(other.rootTokenContract, rootTokenContract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(rootTokenContract));

  @JsonKey(ignore: true)
  @override
  _$$_TokenWalletDeployedNotificationCopyWith<
          _$_TokenWalletDeployedNotification>
      get copyWith => __$$_TokenWalletDeployedNotificationCopyWithImpl<
          _$_TokenWalletDeployedNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenWalletDeployedNotificationToJson(
      this,
    );
  }
}

abstract class _TokenWalletDeployedNotification
    implements TokenWalletDeployedNotification {
  const factory _TokenWalletDeployedNotification(
          {required final String rootTokenContract}) =
      _$_TokenWalletDeployedNotification;

  factory _TokenWalletDeployedNotification.fromJson(Map<String, dynamic> json) =
      _$_TokenWalletDeployedNotification.fromJson;

  @override
  String get rootTokenContract;
  @override
  @JsonKey(ignore: true)
  _$$_TokenWalletDeployedNotificationCopyWith<
          _$_TokenWalletDeployedNotification>
      get copyWith => throw _privateConstructorUsedError;
}
