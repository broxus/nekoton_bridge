// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_wallet_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenWalletAsset _$TokenWalletAssetFromJson(Map<String, dynamic> json) {
  return _TokenWalletAsset.fromJson(json);
}

/// @nodoc
mixin _$TokenWalletAsset {
  Address get rootTokenContract => throw _privateConstructorUsedError;

  /// Serializes this TokenWalletAsset to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TokenWalletAssetCopyWith<TokenWalletAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenWalletAssetCopyWith<$Res> {
  factory $TokenWalletAssetCopyWith(
          TokenWalletAsset value, $Res Function(TokenWalletAsset) then) =
      _$TokenWalletAssetCopyWithImpl<$Res, TokenWalletAsset>;
  @useResult
  $Res call({Address rootTokenContract});

  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class _$TokenWalletAssetCopyWithImpl<$Res, $Val extends TokenWalletAsset>
    implements $TokenWalletAssetCopyWith<$Res> {
  _$TokenWalletAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
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

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootTokenContract {
    return $AddressCopyWith<$Res>(_value.rootTokenContract, (value) {
      return _then(_value.copyWith(rootTokenContract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenWalletAssetImplCopyWith<$Res>
    implements $TokenWalletAssetCopyWith<$Res> {
  factory _$$TokenWalletAssetImplCopyWith(_$TokenWalletAssetImpl value,
          $Res Function(_$TokenWalletAssetImpl) then) =
      __$$TokenWalletAssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address rootTokenContract});

  @override
  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class __$$TokenWalletAssetImplCopyWithImpl<$Res>
    extends _$TokenWalletAssetCopyWithImpl<$Res, _$TokenWalletAssetImpl>
    implements _$$TokenWalletAssetImplCopyWith<$Res> {
  __$$TokenWalletAssetImplCopyWithImpl(_$TokenWalletAssetImpl _value,
      $Res Function(_$TokenWalletAssetImpl) _then)
      : super(_value, _then);

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? rootTokenContract = null,
  }) {
    return _then(_$TokenWalletAssetImpl(
      rootTokenContract: null == rootTokenContract
          ? _value.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TokenWalletAssetImpl implements _TokenWalletAsset {
  const _$TokenWalletAssetImpl({required this.rootTokenContract});

  factory _$TokenWalletAssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenWalletAssetImplFromJson(json);

  @override
  final Address rootTokenContract;

  @override
  String toString() {
    return 'TokenWalletAsset(rootTokenContract: $rootTokenContract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenWalletAssetImpl &&
            (identical(other.rootTokenContract, rootTokenContract) ||
                other.rootTokenContract == rootTokenContract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, rootTokenContract);

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenWalletAssetImplCopyWith<_$TokenWalletAssetImpl> get copyWith =>
      __$$TokenWalletAssetImplCopyWithImpl<_$TokenWalletAssetImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenWalletAssetImplToJson(
      this,
    );
  }
}

abstract class _TokenWalletAsset implements TokenWalletAsset {
  const factory _TokenWalletAsset({required final Address rootTokenContract}) =
      _$TokenWalletAssetImpl;

  factory _TokenWalletAsset.fromJson(Map<String, dynamic> json) =
      _$TokenWalletAssetImpl.fromJson;

  @override
  Address get rootTokenContract;

  /// Create a copy of TokenWalletAsset
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenWalletAssetImplCopyWith<_$TokenWalletAssetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
