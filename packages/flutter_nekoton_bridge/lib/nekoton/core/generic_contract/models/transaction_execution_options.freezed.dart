// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$TransactionExecutionOptionsCopyWithImpl<$Res>;
  $Res call({bool disableSignatureCheck, int? overrideBalance});
}

/// @nodoc
class _$TransactionExecutionOptionsCopyWithImpl<$Res>
    implements $TransactionExecutionOptionsCopyWith<$Res> {
  _$TransactionExecutionOptionsCopyWithImpl(this._value, this._then);

  final TransactionExecutionOptions _value;
  // ignore: unused_field
  final $Res Function(TransactionExecutionOptions) _then;

  @override
  $Res call({
    Object? disableSignatureCheck = freezed,
    Object? overrideBalance = freezed,
  }) {
    return _then(_value.copyWith(
      disableSignatureCheck: disableSignatureCheck == freezed
          ? _value.disableSignatureCheck
          : disableSignatureCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      overrideBalance: overrideBalance == freezed
          ? _value.overrideBalance
          : overrideBalance // ignore: cast_nullable_to_non_nullable
              as int?,
    ));
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
  $Res call({bool disableSignatureCheck, int? overrideBalance});
}

/// @nodoc
class __$$_TransactionExecutionOptionsCopyWithImpl<$Res>
    extends _$TransactionExecutionOptionsCopyWithImpl<$Res>
    implements _$$_TransactionExecutionOptionsCopyWith<$Res> {
  __$$_TransactionExecutionOptionsCopyWithImpl(
      _$_TransactionExecutionOptions _value,
      $Res Function(_$_TransactionExecutionOptions) _then)
      : super(_value, (v) => _then(v as _$_TransactionExecutionOptions));

  @override
  _$_TransactionExecutionOptions get _value =>
      super._value as _$_TransactionExecutionOptions;

  @override
  $Res call({
    Object? disableSignatureCheck = freezed,
    Object? overrideBalance = freezed,
  }) {
    return _then(_$_TransactionExecutionOptions(
      disableSignatureCheck: disableSignatureCheck == freezed
          ? _value.disableSignatureCheck
          : disableSignatureCheck // ignore: cast_nullable_to_non_nullable
              as bool,
      overrideBalance: overrideBalance == freezed
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
            const DeepCollectionEquality()
                .equals(other.disableSignatureCheck, disableSignatureCheck) &&
            const DeepCollectionEquality()
                .equals(other.overrideBalance, overrideBalance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(disableSignatureCheck),
      const DeepCollectionEquality().hash(overrideBalance));

  @JsonKey(ignore: true)
  @override
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
