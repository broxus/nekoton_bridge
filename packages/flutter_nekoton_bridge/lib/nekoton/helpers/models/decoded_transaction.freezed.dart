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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DecodedTransaction _$DecodedTransactionFromJson(Map<String, dynamic> json) {
  return _DecodedTransaction.fromJson(json);
}

/// @nodoc
mixin _$DecodedTransaction {
  String get method => throw _privateConstructorUsedError;
  Map<String, dynamic> get input => throw _privateConstructorUsedError;
  Map<String, dynamic> get output => throw _privateConstructorUsedError;

  /// Serializes this DecodedTransaction to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DecodedTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of DecodedTransaction
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$DecodedTransactionImplCopyWith<$Res>
    implements $DecodedTransactionCopyWith<$Res> {
  factory _$$DecodedTransactionImplCopyWith(_$DecodedTransactionImpl value,
          $Res Function(_$DecodedTransactionImpl) then) =
      __$$DecodedTransactionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String method, Map<String, dynamic> input, Map<String, dynamic> output});
}

/// @nodoc
class __$$DecodedTransactionImplCopyWithImpl<$Res>
    extends _$DecodedTransactionCopyWithImpl<$Res, _$DecodedTransactionImpl>
    implements _$$DecodedTransactionImplCopyWith<$Res> {
  __$$DecodedTransactionImplCopyWithImpl(_$DecodedTransactionImpl _value,
      $Res Function(_$DecodedTransactionImpl) _then)
      : super(_value, _then);

  /// Create a copy of DecodedTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? method = null,
    Object? input = null,
    Object? output = null,
  }) {
    return _then(_$DecodedTransactionImpl(
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
class _$DecodedTransactionImpl implements _DecodedTransaction {
  const _$DecodedTransactionImpl(
      {required this.method,
      required final Map<String, dynamic> input,
      required final Map<String, dynamic> output})
      : _input = input,
        _output = output;

  factory _$DecodedTransactionImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecodedTransactionImplFromJson(json);

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
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecodedTransactionImpl &&
            (identical(other.method, method) || other.method == method) &&
            const DeepCollectionEquality().equals(other._input, _input) &&
            const DeepCollectionEquality().equals(other._output, _output));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      method,
      const DeepCollectionEquality().hash(_input),
      const DeepCollectionEquality().hash(_output));

  /// Create a copy of DecodedTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DecodedTransactionImplCopyWith<_$DecodedTransactionImpl> get copyWith =>
      __$$DecodedTransactionImplCopyWithImpl<_$DecodedTransactionImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecodedTransactionImplToJson(
      this,
    );
  }
}

abstract class _DecodedTransaction implements DecodedTransaction {
  const factory _DecodedTransaction(
      {required final String method,
      required final Map<String, dynamic> input,
      required final Map<String, dynamic> output}) = _$DecodedTransactionImpl;

  factory _DecodedTransaction.fromJson(Map<String, dynamic> json) =
      _$DecodedTransactionImpl.fromJson;

  @override
  String get method;
  @override
  Map<String, dynamic> get input;
  @override
  Map<String, dynamic> get output;

  /// Create a copy of DecodedTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DecodedTransactionImplCopyWith<_$DecodedTransactionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
