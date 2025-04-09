// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'token_swap_back.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TokenSwapBack {
  @amountJsonConverter
  BigInt get tokens;
  Address get callbackAddress;
  String get callbackPayload;

  /// Create a copy of TokenSwapBack
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TokenSwapBackCopyWith<TokenSwapBack> get copyWith =>
      _$TokenSwapBackCopyWithImpl<TokenSwapBack>(
          this as TokenSwapBack, _$identity);

  /// Serializes this TokenSwapBack to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TokenSwapBack &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.callbackAddress, callbackAddress) ||
                other.callbackAddress == callbackAddress) &&
            (identical(other.callbackPayload, callbackPayload) ||
                other.callbackPayload == callbackPayload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tokens, callbackAddress, callbackPayload);

  @override
  String toString() {
    return 'TokenSwapBack(tokens: $tokens, callbackAddress: $callbackAddress, callbackPayload: $callbackPayload)';
  }
}

/// @nodoc
abstract mixin class $TokenSwapBackCopyWith<$Res> {
  factory $TokenSwapBackCopyWith(
          TokenSwapBack value, $Res Function(TokenSwapBack) _then) =
      _$TokenSwapBackCopyWithImpl;
  @useResult
  $Res call(
      {@amountJsonConverter BigInt tokens,
      Address callbackAddress,
      String callbackPayload});

  $AddressCopyWith<$Res> get callbackAddress;
}

/// @nodoc
class _$TokenSwapBackCopyWithImpl<$Res>
    implements $TokenSwapBackCopyWith<$Res> {
  _$TokenSwapBackCopyWithImpl(this._self, this._then);

  final TokenSwapBack _self;
  final $Res Function(TokenSwapBack) _then;

  /// Create a copy of TokenSwapBack
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? callbackAddress = null,
    Object? callbackPayload = null,
  }) {
    return _then(_self.copyWith(
      tokens: null == tokens
          ? _self.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
      callbackAddress: null == callbackAddress
          ? _self.callbackAddress
          : callbackAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      callbackPayload: null == callbackPayload
          ? _self.callbackPayload
          : callbackPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of TokenSwapBack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get callbackAddress {
    return $AddressCopyWith<$Res>(_self.callbackAddress, (value) {
      return _then(_self.copyWith(callbackAddress: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _TokenSwapBack implements TokenSwapBack {
  const _TokenSwapBack(
      {@amountJsonConverter required this.tokens,
      required this.callbackAddress,
      required this.callbackPayload});
  factory _TokenSwapBack.fromJson(Map<String, dynamic> json) =>
      _$TokenSwapBackFromJson(json);

  @override
  @amountJsonConverter
  final BigInt tokens;
  @override
  final Address callbackAddress;
  @override
  final String callbackPayload;

  /// Create a copy of TokenSwapBack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TokenSwapBackCopyWith<_TokenSwapBack> get copyWith =>
      __$TokenSwapBackCopyWithImpl<_TokenSwapBack>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TokenSwapBackToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TokenSwapBack &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.callbackAddress, callbackAddress) ||
                other.callbackAddress == callbackAddress) &&
            (identical(other.callbackPayload, callbackPayload) ||
                other.callbackPayload == callbackPayload));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, tokens, callbackAddress, callbackPayload);

  @override
  String toString() {
    return 'TokenSwapBack(tokens: $tokens, callbackAddress: $callbackAddress, callbackPayload: $callbackPayload)';
  }
}

/// @nodoc
abstract mixin class _$TokenSwapBackCopyWith<$Res>
    implements $TokenSwapBackCopyWith<$Res> {
  factory _$TokenSwapBackCopyWith(
          _TokenSwapBack value, $Res Function(_TokenSwapBack) _then) =
      __$TokenSwapBackCopyWithImpl;
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
class __$TokenSwapBackCopyWithImpl<$Res>
    implements _$TokenSwapBackCopyWith<$Res> {
  __$TokenSwapBackCopyWithImpl(this._self, this._then);

  final _TokenSwapBack _self;
  final $Res Function(_TokenSwapBack) _then;

  /// Create a copy of TokenSwapBack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? tokens = null,
    Object? callbackAddress = null,
    Object? callbackPayload = null,
  }) {
    return _then(_TokenSwapBack(
      tokens: null == tokens
          ? _self.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
      callbackAddress: null == callbackAddress
          ? _self.callbackAddress
          : callbackAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      callbackPayload: null == callbackPayload
          ? _self.callbackPayload
          : callbackPayload // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of TokenSwapBack
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get callbackAddress {
    return $AddressCopyWith<$Res>(_self.callbackAddress, (value) {
      return _then(_self.copyWith(callbackAddress: value));
    });
  }
}

// dart format on
