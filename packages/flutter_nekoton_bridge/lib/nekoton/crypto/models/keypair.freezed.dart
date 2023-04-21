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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Keypair _$KeypairFromJson(Map<String, dynamic> json) {
  return _Keypair.fromJson(json);
}

/// @nodoc
mixin _$Keypair {
  String get public => throw _privateConstructorUsedError;
  String get secret => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeypairCopyWith<Keypair> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeypairCopyWith<$Res> {
  factory $KeypairCopyWith(Keypair value, $Res Function(Keypair) then) =
      _$KeypairCopyWithImpl<$Res, Keypair>;
  @useResult
  $Res call({String public, String secret});
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
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KeypairCopyWith<$Res> implements $KeypairCopyWith<$Res> {
  factory _$$_KeypairCopyWith(
          _$_Keypair value, $Res Function(_$_Keypair) then) =
      __$$_KeypairCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String public, String secret});
}

/// @nodoc
class __$$_KeypairCopyWithImpl<$Res>
    extends _$KeypairCopyWithImpl<$Res, _$_Keypair>
    implements _$$_KeypairCopyWith<$Res> {
  __$$_KeypairCopyWithImpl(_$_Keypair _value, $Res Function(_$_Keypair) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? public = null,
    Object? secret = null,
  }) {
    return _then(_$_Keypair(
      public: null == public
          ? _value.public
          : public // ignore: cast_nullable_to_non_nullable
              as String,
      secret: null == secret
          ? _value.secret
          : secret // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Keypair implements _Keypair {
  const _$_Keypair({required this.public, required this.secret});

  factory _$_Keypair.fromJson(Map<String, dynamic> json) =>
      _$$_KeypairFromJson(json);

  @override
  final String public;
  @override
  final String secret;

  @override
  String toString() {
    return 'Keypair(public: $public, secret: $secret)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Keypair &&
            (identical(other.public, public) || other.public == public) &&
            (identical(other.secret, secret) || other.secret == secret));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, public, secret);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeypairCopyWith<_$_Keypair> get copyWith =>
      __$$_KeypairCopyWithImpl<_$_Keypair>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeypairToJson(
      this,
    );
  }
}

abstract class _Keypair implements Keypair {
  const factory _Keypair(
      {required final String public,
      required final String secret}) = _$_Keypair;

  factory _Keypair.fromJson(Map<String, dynamic> json) = _$_Keypair.fromJson;

  @override
  String get public;
  @override
  String get secret;
  @override
  @JsonKey(ignore: true)
  _$$_KeypairCopyWith<_$_Keypair> get copyWith =>
      throw _privateConstructorUsedError;
}
