// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_execution_options.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransactionExecutionOptions _$TransactionExecutionOptionsFromJson(
    Map<String, dynamic> json) {
  return _TransactionExecutionOptions.fromJson(json);
}

/// @nodoc
mixin _$TransactionExecutionOptions {
  bool get disableSignatureCheck => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get overrideBalance => throw _privateConstructorUsedError;

  /// Serializes this TransactionExecutionOptions to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransactionExecutionOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransactionExecutionOptionsCopyWith<TransactionExecutionOptions>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionExecutionOptionsCopyWith<$Res> {
  factory $TransactionExecutionOptionsCopyWith(
          TransactionExecutionOptions value,
          $Res Function(TransactionExecutionOptions) then) =
      _$TransactionExecutionOptionsCopyWithImpl<$Res,
          TransactionExecutionOptions>;
  @useResult
  $Res call(
      {bool disableSignatureCheck,
      @amountJsonConverter BigInt overrideBalance});
}

/// @nodoc
class _$TransactionExecutionOptionsCopyWithImpl<$Res,
        $Val extends TransactionExecutionOptions>
    implements $TransactionExecutionOptionsCopyWith<$Res> {
  _$TransactionExecutionOptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionExecutionOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disableSignatureCheck = null,
    Object? overrideBalance = null,
  }) {
    return _then(_value.copyWith(
      disableSignatureCheck: null == disableSignatureCheck
          ? _value.disableSignatureCheck
          : disableSignatureCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      overrideBalance: null == overrideBalance
          ? _value.overrideBalance
          : overrideBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionExecutionOptionsImplCopyWith<$Res>
    implements $TransactionExecutionOptionsCopyWith<$Res> {
  factory _$$TransactionExecutionOptionsImplCopyWith(
          _$TransactionExecutionOptionsImpl value,
          $Res Function(_$TransactionExecutionOptionsImpl) then) =
      __$$TransactionExecutionOptionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool disableSignatureCheck,
      @amountJsonConverter BigInt overrideBalance});
}

/// @nodoc
class __$$TransactionExecutionOptionsImplCopyWithImpl<$Res>
    extends _$TransactionExecutionOptionsCopyWithImpl<$Res,
        _$TransactionExecutionOptionsImpl>
    implements _$$TransactionExecutionOptionsImplCopyWith<$Res> {
  __$$TransactionExecutionOptionsImplCopyWithImpl(
      _$TransactionExecutionOptionsImpl _value,
      $Res Function(_$TransactionExecutionOptionsImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionExecutionOptions
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disableSignatureCheck = null,
    Object? overrideBalance = null,
  }) {
    return _then(_$TransactionExecutionOptionsImpl(
      disableSignatureCheck: null == disableSignatureCheck
          ? _value.disableSignatureCheck
          : disableSignatureCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      overrideBalance: null == overrideBalance
          ? _value.overrideBalance
          : overrideBalance // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionExecutionOptionsImpl
    implements _TransactionExecutionOptions {
  const _$TransactionExecutionOptionsImpl(
      {required this.disableSignatureCheck,
      @amountJsonConverter required this.overrideBalance});

  factory _$TransactionExecutionOptionsImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$TransactionExecutionOptionsImplFromJson(json);

  @override
  final bool disableSignatureCheck;
  @override
  @amountJsonConverter
  final BigInt overrideBalance;

  @override
  String toString() {
    return 'TransactionExecutionOptions(disableSignatureCheck: $disableSignatureCheck, overrideBalance: $overrideBalance)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionExecutionOptionsImpl &&
            (identical(other.disableSignatureCheck, disableSignatureCheck) ||
                other.disableSignatureCheck == disableSignatureCheck) &&
            (identical(other.overrideBalance, overrideBalance) ||
                other.overrideBalance == overrideBalance));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, disableSignatureCheck, overrideBalance);

  /// Create a copy of TransactionExecutionOptions
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionExecutionOptionsImplCopyWith<_$TransactionExecutionOptionsImpl>
      get copyWith => __$$TransactionExecutionOptionsImplCopyWithImpl<
          _$TransactionExecutionOptionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionExecutionOptionsImplToJson(
      this,
    );
  }
}

abstract class _TransactionExecutionOptions
    implements TransactionExecutionOptions {
  const factory _TransactionExecutionOptions(
          {required final bool disableSignatureCheck,
          @amountJsonConverter required final BigInt overrideBalance}) =
      _$TransactionExecutionOptionsImpl;

  factory _TransactionExecutionOptions.fromJson(Map<String, dynamic> json) =
      _$TransactionExecutionOptionsImpl.fromJson;

  @override
  bool get disableSignatureCheck;
  @override
  @amountJsonConverter
  BigInt get overrideBalance;

  /// Create a copy of TransactionExecutionOptions
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionExecutionOptionsImplCopyWith<_$TransactionExecutionOptionsImpl>
      get copyWith => throw _privateConstructorUsedError;
}
