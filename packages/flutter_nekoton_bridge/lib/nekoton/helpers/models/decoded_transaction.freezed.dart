// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DecodedTransaction _$DecodedTransactionFromJson(Map<String, dynamic> json) {
  return _DecodedTransaction.fromJson(json);
}

/// @nodoc
mixin _$DecodedTransaction {
  String get method => throw _privateConstructorUsedError;
  Map<String, dynamic> get input => throw _privateConstructorUsedError;
  Map<String, dynamic> get output => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DecodedTransactionCopyWith<DecodedTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecodedTransactionCopyWith<$Res> {
  factory $DecodedTransactionCopyWith(
          DecodedTransaction value, $Res Function(DecodedTransaction) then) =
      _$DecodedTransactionCopyWithImpl<$Res, DecodedTransaction>;
  @useResult
  $Res call(
      {String method, Map<String, dynamic> input, Map<String, dynamic> output});
}

/// @nodoc
class _$DecodedTransactionCopyWithImpl<$Res, $Val extends DecodedTransaction>
    implements $DecodedTransactionCopyWith<$Res> {
  _$DecodedTransactionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? input = null,
    Object? output = null,
  }) {
    return _then(_value.copyWith(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      input: null == input
          ? _value.input
          : input // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      output: null == output
          ? _value.output
          : output // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DecodedTransactionCopyWith<$Res>
    implements $DecodedTransactionCopyWith<$Res> {
  factory _$$_DecodedTransactionCopyWith(_$_DecodedTransaction value,
          $Res Function(_$_DecodedTransaction) then) =
      __$$_DecodedTransactionCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String method, Map<String, dynamic> input, Map<String, dynamic> output});
}

/// @nodoc
class __$$_DecodedTransactionCopyWithImpl<$Res>
    extends _$DecodedTransactionCopyWithImpl<$Res, _$_DecodedTransaction>
    implements _$$_DecodedTransactionCopyWith<$Res> {
  __$$_DecodedTransactionCopyWithImpl(
      _$_DecodedTransaction _value, $Res Function(_$_DecodedTransaction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? input = null,
    Object? output = null,
  }) {
    return _then(_$_DecodedTransaction(
      method: null == method
          ? _value.method
          : method // ignore: cast_nullable_to_non_nullable
              as String,
      input: null == input
          ? _value._input
          : input // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
      output: null == output
          ? _value._output
          : output // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DecodedTransaction implements _DecodedTransaction {
  const _$_DecodedTransaction(
      {required this.method,
      required final Map<String, dynamic> input,
      required final Map<String, dynamic> output})
      : _input = input,
        _output = output;

  factory _$_DecodedTransaction.fromJson(Map<String, dynamic> json) =>
      _$$_DecodedTransactionFromJson(json);

  @override
  final String method;
  final Map<String, dynamic> _input;
  @override
  Map<String, dynamic> get input {
    if (_input is EqualUnmodifiableMapView) return _input;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_input);
  }

  final Map<String, dynamic> _output;
  @override
  Map<String, dynamic> get output {
    if (_output is EqualUnmodifiableMapView) return _output;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_output);
  }

  @override
  String toString() {
    return 'DecodedTransaction(method: $method, input: $input, output: $output)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecodedTransaction &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._input, _input) &&
            const DeepCollectionEquality().equals(other._output, _output));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      method,
      const DeepCollectionEquality().hash(_input),
      const DeepCollectionEquality().hash(_output));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DecodedTransactionCopyWith<_$_DecodedTransaction> get copyWith =>
      __$$_DecodedTransactionCopyWithImpl<_$_DecodedTransaction>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DecodedTransactionToJson(
      this,
    );
  }
}

abstract class _DecodedTransaction implements DecodedTransaction {
  const factory _DecodedTransaction(
      {required final String method,
      required final Map<String, dynamic> input,
      required final Map<String, dynamic> output}) = _$_DecodedTransaction;

  factory _DecodedTransaction.fromJson(Map<String, dynamic> json) =
      _$_DecodedTransaction.fromJson;

  @override
  String get method;
  @override
  Map<String, dynamic> get input;
  @override
  Map<String, dynamic> get output;
  @override
  @JsonKey(ignore: true)
  _$$_DecodedTransactionCopyWith<_$_DecodedTransaction> get copyWith =>
      throw _privateConstructorUsedError;
}
