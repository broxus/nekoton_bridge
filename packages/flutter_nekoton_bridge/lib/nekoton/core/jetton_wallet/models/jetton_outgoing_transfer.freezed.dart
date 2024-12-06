// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_outgoing_transfer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JettonOutgoingTransfer _$JettonOutgoingTransferFromJson(
    Map<String, dynamic> json) {
  return _JettonOutgoingTransfer.fromJson(json);
}

/// @nodoc
mixin _$JettonOutgoingTransfer {
  @amountJsonConverter
  BigInt get tokens => throw _privateConstructorUsedError;
  Address get to => throw _privateConstructorUsedError;

  /// Serializes this JettonOutgoingTransfer to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JettonOutgoingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JettonOutgoingTransferCopyWith<JettonOutgoingTransfer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JettonOutgoingTransferCopyWith<$Res> {
  factory $JettonOutgoingTransferCopyWith(JettonOutgoingTransfer value,
          $Res Function(JettonOutgoingTransfer) then) =
      _$JettonOutgoingTransferCopyWithImpl<$Res, JettonOutgoingTransfer>;
  @useResult
  $Res call({@amountJsonConverter BigInt tokens, Address to});

  $AddressCopyWith<$Res> get to;
}

/// @nodoc
class _$JettonOutgoingTransferCopyWithImpl<$Res,
        $Val extends JettonOutgoingTransfer>
    implements $JettonOutgoingTransferCopyWith<$Res> {
  _$JettonOutgoingTransferCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JettonOutgoingTransfer
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

  /// Create a copy of JettonOutgoingTransfer
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
abstract class _$$JettonOutgoingTransferImplCopyWith<$Res>
    implements $JettonOutgoingTransferCopyWith<$Res> {
  factory _$$JettonOutgoingTransferImplCopyWith(
          _$JettonOutgoingTransferImpl value,
          $Res Function(_$JettonOutgoingTransferImpl) then) =
      __$$JettonOutgoingTransferImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@amountJsonConverter BigInt tokens, Address to});

  @override
  $AddressCopyWith<$Res> get to;
}

/// @nodoc
class __$$JettonOutgoingTransferImplCopyWithImpl<$Res>
    extends _$JettonOutgoingTransferCopyWithImpl<$Res,
        _$JettonOutgoingTransferImpl>
    implements _$$JettonOutgoingTransferImplCopyWith<$Res> {
  __$$JettonOutgoingTransferImplCopyWithImpl(
      _$JettonOutgoingTransferImpl _value,
      $Res Function(_$JettonOutgoingTransferImpl) _then)
      : super(_value, _then);

  /// Create a copy of JettonOutgoingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? tokens = null,
    Object? to = null,
  }) {
    return _then(_$JettonOutgoingTransferImpl(
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
class _$JettonOutgoingTransferImpl implements _JettonOutgoingTransfer {
  const _$JettonOutgoingTransferImpl(
      {@amountJsonConverter required this.tokens, required this.to});

  factory _$JettonOutgoingTransferImpl.fromJson(Map<String, dynamic> json) =>
      _$$JettonOutgoingTransferImplFromJson(json);

  @override
  @amountJsonConverter
  final BigInt tokens;
  @override
  final Address to;

  @override
  String toString() {
    return 'JettonOutgoingTransfer(tokens: $tokens, to: $to)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JettonOutgoingTransferImpl &&
            (identical(other.tokens, tokens) || other.tokens == tokens) &&
            (identical(other.to, to) || other.to == to));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, tokens, to);

  /// Create a copy of JettonOutgoingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JettonOutgoingTransferImplCopyWith<_$JettonOutgoingTransferImpl>
      get copyWith => __$$JettonOutgoingTransferImplCopyWithImpl<
          _$JettonOutgoingTransferImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JettonOutgoingTransferImplToJson(
      this,
    );
  }
}

abstract class _JettonOutgoingTransfer implements JettonOutgoingTransfer {
  const factory _JettonOutgoingTransfer(
      {@amountJsonConverter required final BigInt tokens,
      required final Address to}) = _$JettonOutgoingTransferImpl;

  factory _JettonOutgoingTransfer.fromJson(Map<String, dynamic> json) =
      _$JettonOutgoingTransferImpl.fromJson;

  @override
  @amountJsonConverter
  BigInt get tokens;
  @override
  Address get to;

  /// Create a copy of JettonOutgoingTransfer
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JettonOutgoingTransferImplCopyWith<_$JettonOutgoingTransferImpl>
      get copyWith => throw _privateConstructorUsedError;
}
