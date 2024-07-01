// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_swap_back.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TokenSwapBack _$TokenSwapBackFromJson(Map<String, dynamic> json) {
  return _TokenSwapBack.fromJson(json);
}

/// @nodoc
mixin _$TokenSwapBack {
  @amountJsonConverter
  BigInt get tokens => throw _privateConstructorUsedError;
  Address get callbackAddress => throw _privateConstructorUsedError;
  String get callbackPayload => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenSwapBackCopyWith<TokenSwapBack> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenSwapBackCopyWith<$Res> {
  factory $TokenSwapBackCopyWith(
          TokenSwapBack value, $Res Function(TokenSwapBack) then) =
      _$TokenSwapBackCopyWithImpl<$Res, TokenSwapBack>;
  @useResult
  $Res call(
      {@amountJsonConverter BigInt tokens,
      Address callbackAddress,
      String callbackPayload});

  $AddressCopyWith<$Res> get callbackAddress;
}

/// @nodoc
class _$TokenSwapBackCopyWithImpl<$Res, $Val extends TokenSwapBack>
    implements $TokenSwapBackCopyWith<$Res> {
  _$TokenSwapBackCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? callbackAddress = null,
    Object? callbackPayload = null,
  }) {
    return _then(_value.copyWith(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
      callbackAddress: null == callbackAddress
          ? _value.callbackAddress
          : callbackAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      callbackPayload: null == callbackPayload
          ? _value.callbackPayload
          : callbackPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get callbackAddress {
    return $AddressCopyWith<$Res>(_value.callbackAddress, (value) {
      return _then(_value.copyWith(callbackAddress: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TokenSwapBackImplCopyWith<$Res>
    implements $TokenSwapBackCopyWith<$Res> {
  factory _$$TokenSwapBackImplCopyWith(
          _$TokenSwapBackImpl value, $Res Function(_$TokenSwapBackImpl) then) =
      __$$TokenSwapBackImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@amountJsonConverter BigInt tokens,
      Address callbackAddress,
      String callbackPayload});

  @override
  $AddressCopyWith<$Res> get callbackAddress;
}

/// @nodoc
class __$$TokenSwapBackImplCopyWithImpl<$Res>
    extends _$TokenSwapBackCopyWithImpl<$Res, _$TokenSwapBackImpl>
    implements _$$TokenSwapBackImplCopyWith<$Res> {
  __$$TokenSwapBackImplCopyWithImpl(
      _$TokenSwapBackImpl _value, $Res Function(_$TokenSwapBackImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? callbackAddress = null,
    Object? callbackPayload = null,
  }) {
    return _then(_$TokenSwapBackImpl(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
      callbackAddress: null == callbackAddress
          ? _value.callbackAddress
          : callbackAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      callbackPayload: null == callbackPayload
          ? _value.callbackPayload
          : callbackPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$TokenSwapBackImpl implements _TokenSwapBack {
  const _$TokenSwapBackImpl(
      {@amountJsonConverter required this.tokens,
      required this.callbackAddress,
      required this.callbackPayload});

  factory _$TokenSwapBackImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenSwapBackImplFromJson(json);

  @override
  @amountJsonConverter
  final BigInt tokens;
  @override
  final Address callbackAddress;
  @override
  final String callbackPayload;

  @override
  String toString() {
    return 'TokenSwapBack(tokens: $tokens, callbackAddress: $callbackAddress, callbackPayload: $callbackPayload)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenSwapBackImpl &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.callbackAddress, callbackAddress) ||
                other.callbackAddress == callbackAddress) &&
            (identical(other.callbackPayload, callbackPayload) ||
                other.callbackPayload == callbackPayload));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tokens, callbackAddress, callbackPayload);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenSwapBackImplCopyWith<_$TokenSwapBackImpl> get copyWith =>
      __$$TokenSwapBackImplCopyWithImpl<_$TokenSwapBackImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenSwapBackImplToJson(
      this,
    );
  }
}

abstract class _TokenSwapBack implements TokenSwapBack {
  const factory _TokenSwapBack(
      {@amountJsonConverter required final BigInt tokens,
      required final Address callbackAddress,
      required final String callbackPayload}) = _$TokenSwapBackImpl;

  factory _TokenSwapBack.fromJson(Map<String, dynamic> json) =
      _$TokenSwapBackImpl.fromJson;

  @override
  @amountJsonConverter
  BigInt get tokens;
  @override
  Address get callbackAddress;
  @override
  String get callbackPayload;
  @override
  @JsonKey(ignore: true)
  _$$TokenSwapBackImplCopyWith<_$TokenSwapBackImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
