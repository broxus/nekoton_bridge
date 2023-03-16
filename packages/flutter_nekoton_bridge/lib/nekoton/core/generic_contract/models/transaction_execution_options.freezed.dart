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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionExecutionOptions _$TransactionExecutionOptionsFromJson(
    Map<String, dynamic> json) {
  return _TransactionExecutionOptions.fromJson(json);
}

/// @nodoc
mixin _$TransactionExecutionOptions {
  bool get disableSignatureCheck => throw _privateConstructorUsedError;
  int? get overrideBalance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
  $Res call({bool disableSignatureCheck, int? overrideBalance});
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

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disableSignatureCheck = null,
    Object? overrideBalance = freezed,
  }) {
    return _then(_value.copyWith(
      disableSignatureCheck: null == disableSignatureCheck
          ? _value.disableSignatureCheck
          : disableSignatureCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      overrideBalance: freezed == overrideBalance
          ? _value.overrideBalance
          : overrideBalance // ignore: cast_nullable_to_non_nullable
              as int?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionExecutionOptionsCopyWith<$Res>
    implements $TransactionExecutionOptionsCopyWith<$Res> {
  factory _$$_TransactionExecutionOptionsCopyWith(
          _$_TransactionExecutionOptions value,
          $Res Function(_$_TransactionExecutionOptions) then) =
      __$$_TransactionExecutionOptionsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool disableSignatureCheck, int? overrideBalance});
}

/// @nodoc
class __$$_TransactionExecutionOptionsCopyWithImpl<$Res>
    extends _$TransactionExecutionOptionsCopyWithImpl<$Res,
        _$_TransactionExecutionOptions>
    implements _$$_TransactionExecutionOptionsCopyWith<$Res> {
  __$$_TransactionExecutionOptionsCopyWithImpl(
      _$_TransactionExecutionOptions _value,
      $Res Function(_$_TransactionExecutionOptions) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? disableSignatureCheck = null,
    Object? overrideBalance = freezed,
  }) {
    return _then(_$_TransactionExecutionOptions(
      disableSignatureCheck: null == disableSignatureCheck
          ? _value.disableSignatureCheck
          : disableSignatureCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      overrideBalance: freezed == overrideBalance
          ? _value.overrideBalance
          : overrideBalance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionExecutionOptions implements _TransactionExecutionOptions {
  const _$_TransactionExecutionOptions(
      {required this.disableSignatureCheck, this.overrideBalance});

  factory _$_TransactionExecutionOptions.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionExecutionOptionsFromJson(json);

  @override
  final bool disableSignatureCheck;
  @override
  final int? overrideBalance;

  @override
  String toString() {
    return 'TransactionExecutionOptions(disableSignatureCheck: $disableSignatureCheck, overrideBalance: $overrideBalance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionExecutionOptions &&
            (identical(other.disableSignatureCheck, disableSignatureCheck) ||
                other.disableSignatureCheck == disableSignatureCheck) &&
            (identical(other.overrideBalance, overrideBalance) ||
                other.overrideBalance == overrideBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, disableSignatureCheck, overrideBalance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionExecutionOptionsCopyWith<_$_TransactionExecutionOptions>
      get copyWith => __$$_TransactionExecutionOptionsCopyWithImpl<
          _$_TransactionExecutionOptions>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionExecutionOptionsToJson(
      this,
    );
  }
}

abstract class _TransactionExecutionOptions
    implements TransactionExecutionOptions {
  const factory _TransactionExecutionOptions(
      {required final bool disableSignatureCheck,
      final int? overrideBalance}) = _$_TransactionExecutionOptions;

  factory _TransactionExecutionOptions.fromJson(Map<String, dynamic> json) =
      _$_TransactionExecutionOptions.fromJson;

  @override
  bool get disableSignatureCheck;
  @override
  int? get overrideBalance;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionExecutionOptionsCopyWith<_$_TransactionExecutionOptions>
      get copyWith => throw _privateConstructorUsedError;
}
