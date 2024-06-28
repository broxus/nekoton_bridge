// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'depool_asset.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DePoolAsset _$DePoolAssetFromJson(Map<String, dynamic> json) {
  return _DePoolAsset.fromJson(json);
}

/// @nodoc
mixin _$DePoolAsset {
  Address get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DePoolAssetCopyWith<DePoolAsset> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DePoolAssetCopyWith<$Res> {
  factory $DePoolAssetCopyWith(
          DePoolAsset value, $Res Function(DePoolAsset) then) =
      _$DePoolAssetCopyWithImpl<$Res, DePoolAsset>;
  @useResult
  $Res call({Address address});

  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class _$DePoolAssetCopyWithImpl<$Res, $Val extends DePoolAsset>
    implements $DePoolAssetCopyWith<$Res> {
  _$DePoolAssetCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DePoolAssetImplCopyWith<$Res>
    implements $DePoolAssetCopyWith<$Res> {
  factory _$$DePoolAssetImplCopyWith(
          _$DePoolAssetImpl value, $Res Function(_$DePoolAssetImpl) then) =
      __$$DePoolAssetImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address});

  @override
  $AddressCopyWith<$Res> get address;
}

/// @nodoc
class __$$DePoolAssetImplCopyWithImpl<$Res>
    extends _$DePoolAssetCopyWithImpl<$Res, _$DePoolAssetImpl>
    implements _$$DePoolAssetImplCopyWith<$Res> {
  __$$DePoolAssetImplCopyWithImpl(
      _$DePoolAssetImpl _value, $Res Function(_$DePoolAssetImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$DePoolAssetImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DePoolAssetImpl implements _DePoolAsset {
  const _$DePoolAssetImpl({required this.address});

  factory _$DePoolAssetImpl.fromJson(Map<String, dynamic> json) =>
      _$$DePoolAssetImplFromJson(json);

  @override
  final Address address;

  @override
  String toString() {
    return 'DePoolAsset(address: $address)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DePoolAssetImpl &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DePoolAssetImplCopyWith<_$DePoolAssetImpl> get copyWith =>
      __$$DePoolAssetImplCopyWithImpl<_$DePoolAssetImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DePoolAssetImplToJson(
      this,
    );
  }
}

abstract class _DePoolAsset implements DePoolAsset {
  const factory _DePoolAsset({required final Address address}) =
      _$DePoolAssetImpl;

  factory _DePoolAsset.fromJson(Map<String, dynamic> json) =
      _$DePoolAssetImpl.fromJson;

  @override
  Address get address;
  @override
  @JsonKey(ignore: true)
  _$$DePoolAssetImplCopyWith<_$DePoolAssetImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
