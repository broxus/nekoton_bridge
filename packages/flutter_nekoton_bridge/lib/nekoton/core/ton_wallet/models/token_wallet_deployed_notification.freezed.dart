// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
  Address get rootTokenContract => throw _privateConstructorUsedError;

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
      _$TokenWalletDeployedNotificationCopyWithImpl<$Res,
          TokenWalletDeployedNotification>;
  @useResult
  $Res call({Address rootTokenContract});

  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class _$TokenWalletDeployedNotificationCopyWithImpl<$Res,
        $Val extends TokenWalletDeployedNotification>
    implements $TokenWalletDeployedNotificationCopyWith<$Res> {
  _$TokenWalletDeployedNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootTokenContract = null,
  }) {
    return _then(_value.copyWith(
      rootTokenContract: null == rootTokenContract
          ? _value.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootTokenContract {
    return $AddressCopyWith<$Res>(_value.rootTokenContract, (value) {
      return _then(_value.copyWith(rootTokenContract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenWalletDeployedNotificationImplCopyWith<$Res>
    implements $TokenWalletDeployedNotificationCopyWith<$Res> {
  factory _$$TokenWalletDeployedNotificationImplCopyWith(
          _$TokenWalletDeployedNotificationImpl value,
          $Res Function(_$TokenWalletDeployedNotificationImpl) then) =
      __$$TokenWalletDeployedNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address rootTokenContract});

  @override
  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class __$$TokenWalletDeployedNotificationImplCopyWithImpl<$Res>
    extends _$TokenWalletDeployedNotificationCopyWithImpl<$Res,
        _$TokenWalletDeployedNotificationImpl>
    implements _$$TokenWalletDeployedNotificationImplCopyWith<$Res> {
  __$$TokenWalletDeployedNotificationImplCopyWithImpl(
      _$TokenWalletDeployedNotificationImpl _value,
      $Res Function(_$TokenWalletDeployedNotificationImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootTokenContract = null,
  }) {
    return _then(_$TokenWalletDeployedNotificationImpl(
      rootTokenContract: null == rootTokenContract
          ? _value.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenWalletDeployedNotificationImpl
    implements _TokenWalletDeployedNotification {
  const _$TokenWalletDeployedNotificationImpl(
      {required this.rootTokenContract});

  factory _$TokenWalletDeployedNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TokenWalletDeployedNotificationImplFromJson(json);

  @override
  final Address rootTokenContract;

  @override
  String toString() {
    return 'TokenWalletDeployedNotification(rootTokenContract: $rootTokenContract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenWalletDeployedNotificationImpl &&
            (identical(other.rootTokenContract, rootTokenContract) ||
                other.rootTokenContract == rootTokenContract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, rootTokenContract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenWalletDeployedNotificationImplCopyWith<
          _$TokenWalletDeployedNotificationImpl>
      get copyWith => __$$TokenWalletDeployedNotificationImplCopyWithImpl<
          _$TokenWalletDeployedNotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenWalletDeployedNotificationImplToJson(
      this,
    );
  }
}

abstract class _TokenWalletDeployedNotification
    implements TokenWalletDeployedNotification {
  const factory _TokenWalletDeployedNotification(
          {required final Address rootTokenContract}) =
      _$TokenWalletDeployedNotificationImpl;

  factory _TokenWalletDeployedNotification.fromJson(Map<String, dynamic> json) =
      _$TokenWalletDeployedNotificationImpl.fromJson;

  @override
  Address get rootTokenContract;
  @override
  @JsonKey(ignore: true)
  _$$TokenWalletDeployedNotificationImplCopyWith<
          _$TokenWalletDeployedNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
