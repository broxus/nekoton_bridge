// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_wallet_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenWalletAsset _$TokenWalletAssetFromJson(Map<String, dynamic> json) {
  return _TokenWalletAsset.fromJson(json);
}

/// @nodoc
mixin _$TokenWalletAsset {
  String get rootTokenContract => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenWalletAssetCopyWith<TokenWalletAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenWalletAssetCopyWith<$Res> {
  factory $TokenWalletAssetCopyWith(
          TokenWalletAsset value, $Res Function(TokenWalletAsset) then) =
      _$TokenWalletAssetCopyWithImpl<$Res>;
  $Res call({String rootTokenContract});
}

/// @nodoc
class _$TokenWalletAssetCopyWithImpl<$Res>
    implements $TokenWalletAssetCopyWith<$Res> {
  _$TokenWalletAssetCopyWithImpl(this._value, this._then);

  final TokenWalletAsset _value;
  // ignore: unused_field
  final $Res Function(TokenWalletAsset) _then;

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
abstract class _$$_TokenWalletAssetCopyWith<$Res>
    implements $TokenWalletAssetCopyWith<$Res> {
  factory _$$_TokenWalletAssetCopyWith(
          _$_TokenWalletAsset value, $Res Function(_$_TokenWalletAsset) then) =
      __$$_TokenWalletAssetCopyWithImpl<$Res>;
  @override
  $Res call({String rootTokenContract});
}

/// @nodoc
class __$$_TokenWalletAssetCopyWithImpl<$Res>
    extends _$TokenWalletAssetCopyWithImpl<$Res>
    implements _$$_TokenWalletAssetCopyWith<$Res> {
  __$$_TokenWalletAssetCopyWithImpl(
      _$_TokenWalletAsset _value, $Res Function(_$_TokenWalletAsset) _then)
      : super(_value, (v) => _then(v as _$_TokenWalletAsset));

  @override
  _$_TokenWalletAsset get _value => super._value as _$_TokenWalletAsset;

  @override
  $Res call({
    Object? rootTokenContract = freezed,
  }) {
    return _then(_$_TokenWalletAsset(
      rootTokenContract: rootTokenContract == freezed
          ? _value.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_TokenWalletAsset implements _TokenWalletAsset {
  const _$_TokenWalletAsset({required this.rootTokenContract});

  factory _$_TokenWalletAsset.fromJson(Map<String, dynamic> json) =>
      _$$_TokenWalletAssetFromJson(json);

  @override
  final String rootTokenContract;

  @override
  String toString() {
    return 'TokenWalletAsset(rootTokenContract: $rootTokenContract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenWalletAsset &&
            const DeepCollectionEquality()
                .equals(other.rootTokenContract, rootTokenContract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(rootTokenContract));

  @JsonKey(ignore: true)
  @override
  _$$_TokenWalletAssetCopyWith<_$_TokenWalletAsset> get copyWith =>
      __$$_TokenWalletAssetCopyWithImpl<_$_TokenWalletAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenWalletAssetToJson(
      this,
    );
  }
}

abstract class _TokenWalletAsset implements TokenWalletAsset {
  const factory _TokenWalletAsset({required final String rootTokenContract}) =
      _$_TokenWalletAsset;

  factory _TokenWalletAsset.fromJson(Map<String, dynamic> json) =
      _$_TokenWalletAsset.fromJson;

  @override
  String get rootTokenContract;
  @override
  @JsonKey(ignore: true)
  _$$_TokenWalletAssetCopyWith<_$_TokenWalletAsset> get copyWith =>
      throw _privateConstructorUsedError;
}
