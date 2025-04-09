// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_wallet_deployed_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenWalletDeployedNotification {
  Address get rootTokenContract;

  /// Create a copy of TokenWalletDeployedNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenWalletDeployedNotificationCopyWith<TokenWalletDeployedNotification>
      get copyWith => _$TokenWalletDeployedNotificationCopyWithImpl<
              TokenWalletDeployedNotification>(
          this as TokenWalletDeployedNotification, _$identity);

  /// Serializes this TokenWalletDeployedNotification to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenWalletDeployedNotification &&
            (identical(other.rootTokenContract, rootTokenContract) ||
                other.rootTokenContract == rootTokenContract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rootTokenContract);

  @override
  String toString() {
    return 'TokenWalletDeployedNotification(rootTokenContract: $rootTokenContract)';
  }
}

/// @nodoc
abstract mixin class $TokenWalletDeployedNotificationCopyWith<$Res> {
  factory $TokenWalletDeployedNotificationCopyWith(
          TokenWalletDeployedNotification value,
          $Res Function(TokenWalletDeployedNotification) _then) =
      _$TokenWalletDeployedNotificationCopyWithImpl;
  @useResult
  $Res call({Address rootTokenContract});

  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class _$TokenWalletDeployedNotificationCopyWithImpl<$Res>
    implements $TokenWalletDeployedNotificationCopyWith<$Res> {
  _$TokenWalletDeployedNotificationCopyWithImpl(this._self, this._then);

  final TokenWalletDeployedNotification _self;
  final $Res Function(TokenWalletDeployedNotification) _then;

  /// Create a copy of TokenWalletDeployedNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootTokenContract = null,
  }) {
    return _then(_self.copyWith(
      rootTokenContract: null == rootTokenContract
          ? _self.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of TokenWalletDeployedNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootTokenContract {
    return $AddressCopyWith<$Res>(_self.rootTokenContract, (value) {
      return _then(_self.copyWith(rootTokenContract: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _TokenWalletDeployedNotification
    implements TokenWalletDeployedNotification {
  const _TokenWalletDeployedNotification({required this.rootTokenContract});
  factory _TokenWalletDeployedNotification.fromJson(
          Map<String, dynamic> json) =>
      _$TokenWalletDeployedNotificationFromJson(json);

  @override
  final Address rootTokenContract;

  /// Create a copy of TokenWalletDeployedNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TokenWalletDeployedNotificationCopyWith<_TokenWalletDeployedNotification>
      get copyWith => __$TokenWalletDeployedNotificationCopyWithImpl<
          _TokenWalletDeployedNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenWalletDeployedNotificationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenWalletDeployedNotification &&
            (identical(other.rootTokenContract, rootTokenContract) ||
                other.rootTokenContract == rootTokenContract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rootTokenContract);

  @override
  String toString() {
    return 'TokenWalletDeployedNotification(rootTokenContract: $rootTokenContract)';
  }
}

/// @nodoc
abstract mixin class _$TokenWalletDeployedNotificationCopyWith<$Res>
    implements $TokenWalletDeployedNotificationCopyWith<$Res> {
  factory _$TokenWalletDeployedNotificationCopyWith(
          _TokenWalletDeployedNotification value,
          $Res Function(_TokenWalletDeployedNotification) _then) =
      __$TokenWalletDeployedNotificationCopyWithImpl;
  @override
  @useResult
  $Res call({Address rootTokenContract});

  @override
  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class __$TokenWalletDeployedNotificationCopyWithImpl<$Res>
    implements _$TokenWalletDeployedNotificationCopyWith<$Res> {
  __$TokenWalletDeployedNotificationCopyWithImpl(this._self, this._then);

  final _TokenWalletDeployedNotification _self;
  final $Res Function(_TokenWalletDeployedNotification) _then;

  /// Create a copy of TokenWalletDeployedNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? rootTokenContract = null,
  }) {
    return _then(_TokenWalletDeployedNotification(
      rootTokenContract: null == rootTokenContract
          ? _self.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of TokenWalletDeployedNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootTokenContract {
    return $AddressCopyWith<$Res>(_self.rootTokenContract, (value) {
      return _then(_self.copyWith(rootTokenContract: value));
    });
  }
}

// dart format on
