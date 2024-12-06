// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_incoming_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JettonIncomingTransfer _$JettonIncomingTransferFromJson(
    Map<String, dynamic> json) {
  return _JettonIncomingTransfer.fromJson(json);
}

/// @nodoc
mixin _$JettonIncomingTransfer {
  @amountJsonConverter
  BigInt get tokens => throw _privateConstructorUsedError;
  Address get to => throw _privateConstructorUsedError;

  /// Serializes this JettonIncomingTransfer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JettonIncomingTransferCopyWith<JettonIncomingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JettonIncomingTransferCopyWith<$Res> {
  factory $JettonIncomingTransferCopyWith(JettonIncomingTransfer value,
          $Res Function(JettonIncomingTransfer) then) =
      _$JettonIncomingTransferCopyWithImpl<$Res, JettonIncomingTransfer>;
  @useResult
  $Res call({@amountJsonConverter BigInt tokens, Address to});

  $AddressCopyWith<$Res> get to;
}

/// @nodoc
class _$JettonIncomingTransferCopyWithImpl<$Res,
        $Val extends JettonIncomingTransfer>
    implements $JettonIncomingTransferCopyWith<$Res> {
  _$JettonIncomingTransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? to = null,
  }) {
    return _then(_value.copyWith(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get to {
    return $AddressCopyWith<$Res>(_value.to, (value) {
      return _then(_value.copyWith(to: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JettonIncomingTransferImplCopyWith<$Res>
    implements $JettonIncomingTransferCopyWith<$Res> {
  factory _$$JettonIncomingTransferImplCopyWith(
          _$JettonIncomingTransferImpl value,
          $Res Function(_$JettonIncomingTransferImpl) then) =
      __$$JettonIncomingTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@amountJsonConverter BigInt tokens, Address to});

  @override
  $AddressCopyWith<$Res> get to;
}

/// @nodoc
class __$$JettonIncomingTransferImplCopyWithImpl<$Res>
    extends _$JettonIncomingTransferCopyWithImpl<$Res,
        _$JettonIncomingTransferImpl>
    implements _$$JettonIncomingTransferImplCopyWith<$Res> {
  __$$JettonIncomingTransferImplCopyWithImpl(
      _$JettonIncomingTransferImpl _value,
      $Res Function(_$JettonIncomingTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? to = null,
  }) {
    return _then(_$JettonIncomingTransferImpl(
      tokens: null == tokens
          ? _value.tokens
          : tokens // ignore: cast_nullable_to_non_nullable
              as BigInt,
      to: null == to
          ? _value.to
          : to // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JettonIncomingTransferImpl implements _JettonIncomingTransfer {
  const _$JettonIncomingTransferImpl(
      {@amountJsonConverter required this.tokens, required this.to});

  factory _$JettonIncomingTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$JettonIncomingTransferImplFromJson(json);

  @override
  @amountJsonConverter
  final BigInt tokens;
  @override
  final Address to;

  @override
  String toString() {
    return 'JettonIncomingTransfer(tokens: $tokens, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JettonIncomingTransferImpl &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tokens, to);

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JettonIncomingTransferImplCopyWith<_$JettonIncomingTransferImpl>
      get copyWith => __$$JettonIncomingTransferImplCopyWithImpl<
          _$JettonIncomingTransferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JettonIncomingTransferImplToJson(
      this,
    );
  }
}

abstract class _JettonIncomingTransfer implements JettonIncomingTransfer {
  const factory _JettonIncomingTransfer(
      {@amountJsonConverter required final BigInt tokens,
      required final Address to}) = _$JettonIncomingTransferImpl;

  factory _JettonIncomingTransfer.fromJson(Map<String, dynamic> json) =
      _$JettonIncomingTransferImpl.fromJson;

  @override
  @amountJsonConverter
  BigInt get tokens;
  @override
  Address get to;

  /// Create a copy of JettonIncomingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JettonIncomingTransferImplCopyWith<_$JettonIncomingTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
}
