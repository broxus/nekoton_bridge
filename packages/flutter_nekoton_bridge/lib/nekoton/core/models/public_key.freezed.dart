// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'public_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PublicKey {
  String get publicKey;

  /// Create a copy of PublicKey
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<PublicKey> get copyWith =>
      _$PublicKeyCopyWithImpl<PublicKey>(this as PublicKey, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is PublicKey &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicKey);
}

/// @nodoc
abstract mixin class $PublicKeyCopyWith<$Res> {
  factory $PublicKeyCopyWith(PublicKey value, $Res Function(PublicKey) _then) =
      _$PublicKeyCopyWithImpl;
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class _$PublicKeyCopyWithImpl<$Res> implements $PublicKeyCopyWith<$Res> {
  _$PublicKeyCopyWithImpl(this._self, this._then);

  final PublicKey _self;
  final $Res Function(PublicKey) _then;

  /// Create a copy of PublicKey
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_self.copyWith(
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _FromString extends PublicKey {
  const _FromString({required this.publicKey}) : super._();

  @override
  final String publicKey;

  /// Create a copy of PublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FromStringCopyWith<_FromString> get copyWith =>
      __$FromStringCopyWithImpl<_FromString>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FromString &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey));
  }

  @override
  int get hashCode => Object.hash(runtimeType, publicKey);
}

/// @nodoc
abstract mixin class _$FromStringCopyWith<$Res>
    implements $PublicKeyCopyWith<$Res> {
  factory _$FromStringCopyWith(
          _FromString value, $Res Function(_FromString) _then) =
      __$FromStringCopyWithImpl;
  @override
  @useResult
  $Res call({String publicKey});
}

/// @nodoc
class __$FromStringCopyWithImpl<$Res> implements _$FromStringCopyWith<$Res> {
  __$FromStringCopyWithImpl(this._self, this._then);

  final _FromString _self;
  final $Res Function(_FromString) _then;

  /// Create a copy of PublicKey
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicKey = null,
  }) {
    return _then(_FromString(
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
