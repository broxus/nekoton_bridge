// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$PublicKey {
  String get publicKey => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PublicKeyCopyWith<PublicKey> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PublicKeyCopyWith<$Res> {
  factory $PublicKeyCopyWith(PublicKey value, $Res Function(PublicKey) then) =
      _$PublicKeyCopyWithImpl<$Res, PublicKey>;
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class _$PublicKeyCopyWithImpl<$Res, $Val extends PublicKey>
    implements $PublicKeyCopyWith<$Res> {
  _$PublicKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FromStringImplCopyWith<$Res>
    implements $PublicKeyCopyWith<$Res> {
  factory _$$FromStringImplCopyWith(
          _$FromStringImpl value, $Res Function(_$FromStringImpl) then) =
      __$$FromStringImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class __$$FromStringImplCopyWithImpl<$Res>
    extends _$PublicKeyCopyWithImpl<$Res, _$FromStringImpl>
    implements _$$FromStringImplCopyWith<$Res> {
  __$$FromStringImplCopyWithImpl(
      _$FromStringImpl _value, $Res Function(_$FromStringImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_$FromStringImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$FromStringImpl extends _FromString {
  const _$FromStringImpl({required this.publicKey}) : super._();

  @override
  final String publicKey;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FromStringImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicKey);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FromStringImplCopyWith<_$FromStringImpl> get copyWith =>
      __$$FromStringImplCopyWithImpl<_$FromStringImpl>(this, _$identity);
}

abstract class _FromString extends PublicKey {
  const factory _FromString({required final String publicKey}) =
      _$FromStringImpl;
  const _FromString._() : super._();

  @override
  String get publicKey;
  @override
  @JsonKey(ignore: true)
  _$$FromStringImplCopyWith<_$FromStringImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
