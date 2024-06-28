// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'keypair.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Keypair _$KeypairFromJson(Map<String, dynamic> json) {
  return _Keypair.fromJson(json);
}

/// @nodoc
mixin _$Keypair {
  PublicKey get public => throw _privateConstructorUsedError;
  PublicKey get secret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeypairCopyWith<Keypair> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeypairCopyWith<$Res> {
  factory $KeypairCopyWith(Keypair value, $Res Function(Keypair) then) =
      _$KeypairCopyWithImpl<$Res, Keypair>;
  @useResult
  $Res call({PublicKey public, PublicKey secret});

  $PublicKeyCopyWith<$Res> get public;
  $PublicKeyCopyWith<$Res> get secret;
}

/// @nodoc
class _$KeypairCopyWithImpl<$Res, $Val extends Keypair>
    implements $KeypairCopyWith<$Res> {
  _$KeypairCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? public = null,
    Object? secret = null,
  }) {
    return _then(_value.copyWith(
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as PublicKey,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get public {
    return $PublicKeyCopyWith<$Res>(_value.public, (value) {
      return _then(_value.copyWith(public: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get secret {
    return $PublicKeyCopyWith<$Res>(_value.secret, (value) {
      return _then(_value.copyWith(secret: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$KeypairImplCopyWith<$Res> implements $KeypairCopyWith<$Res> {
  factory _$$KeypairImplCopyWith(
          _$KeypairImpl value, $Res Function(_$KeypairImpl) then) =
      __$$KeypairImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PublicKey public, PublicKey secret});

  @override
  $PublicKeyCopyWith<$Res> get public;
  @override
  $PublicKeyCopyWith<$Res> get secret;
}

/// @nodoc
class __$$KeypairImplCopyWithImpl<$Res>
    extends _$KeypairCopyWithImpl<$Res, _$KeypairImpl>
    implements _$$KeypairImplCopyWith<$Res> {
  __$$KeypairImplCopyWithImpl(
      _$KeypairImpl _value, $Res Function(_$KeypairImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? public = null,
    Object? secret = null,
  }) {
    return _then(_$KeypairImpl(
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as PublicKey,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$KeypairImpl implements _Keypair {
  const _$KeypairImpl({required this.public, required this.secret});

  factory _$KeypairImpl.fromJson(Map<String, dynamic> json) =>
      _$$KeypairImplFromJson(json);

  @override
  final PublicKey public;
  @override
  final PublicKey secret;

  @override
  String toString() {
    return 'Keypair(public: $public, secret: $secret)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$KeypairImpl &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, public, secret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$KeypairImplCopyWith<_$KeypairImpl> get copyWith =>
      __$$KeypairImplCopyWithImpl<_$KeypairImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$KeypairImplToJson(
      this,
    );
  }
}

abstract class _Keypair implements Keypair {
  const factory _Keypair(
      {required final PublicKey public,
      required final PublicKey secret}) = _$KeypairImpl;

  factory _Keypair.fromJson(Map<String, dynamic> json) = _$KeypairImpl.fromJson;

  @override
  PublicKey get public;
  @override
  PublicKey get secret;
  @override
  @JsonKey(ignore: true)
  _$$KeypairImplCopyWith<_$KeypairImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
