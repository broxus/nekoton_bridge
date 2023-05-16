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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DePoolAsset _$DePoolAssetFromJson(Map<String, dynamic> json) {
  return _DePoolAsset.fromJson(json);
}

/// @nodoc
mixin _$DePoolAsset {
  String get address => throw _privateConstructorUsedError;

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
  $Res call({String address});
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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DePoolAssetCopyWith<$Res>
    implements $DePoolAssetCopyWith<$Res> {
  factory _$$_DePoolAssetCopyWith(
          _$_DePoolAsset value, $Res Function(_$_DePoolAsset) then) =
      __$$_DePoolAssetCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$_DePoolAssetCopyWithImpl<$Res>
    extends _$DePoolAssetCopyWithImpl<$Res, _$_DePoolAsset>
    implements _$$_DePoolAssetCopyWith<$Res> {
  __$$_DePoolAssetCopyWithImpl(
      _$_DePoolAsset _value, $Res Function(_$_DePoolAsset) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$_DePoolAsset(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DePoolAsset implements _DePoolAsset {
  const _$_DePoolAsset({required this.address});

  factory _$_DePoolAsset.fromJson(Map<String, dynamic> json) =>
      _$$_DePoolAssetFromJson(json);

  @override
  final String address;

  @override
  String toString() {
    return 'DePoolAsset(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DePoolAsset &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DePoolAssetCopyWith<_$_DePoolAsset> get copyWith =>
      __$$_DePoolAssetCopyWithImpl<_$_DePoolAsset>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DePoolAssetToJson(
      this,
    );
  }
}

abstract class _DePoolAsset implements DePoolAsset {
  const factory _DePoolAsset({required final String address}) = _$_DePoolAsset;

  factory _DePoolAsset.fromJson(Map<String, dynamic> json) =
      _$_DePoolAsset.fromJson;

  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_DePoolAssetCopyWith<_$_DePoolAsset> get copyWith =>
      throw _privateConstructorUsedError;
}
