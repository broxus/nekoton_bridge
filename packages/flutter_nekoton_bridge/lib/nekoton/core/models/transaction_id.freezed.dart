// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_id.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionId _$TransactionIdFromJson(Map<String, dynamic> json) {
  return _TransactionId.fromJson(json);
}

/// @nodoc
mixin _$TransactionId {
  String get lt => throw _privateConstructorUsedError;
  String get hash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionIdCopyWith<TransactionId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionIdCopyWith<$Res> {
  factory $TransactionIdCopyWith(
          TransactionId value, $Res Function(TransactionId) then) =
      _$TransactionIdCopyWithImpl<$Res, TransactionId>;
  @useResult
  $Res call({String lt, String hash});
}

/// @nodoc
class _$TransactionIdCopyWithImpl<$Res, $Val extends TransactionId>
    implements $TransactionIdCopyWith<$Res> {
  _$TransactionIdCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lt = null,
    Object? hash = null,
  }) {
    return _then(_value.copyWith(
      lt: null == lt
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TransactionIdCopyWith<$Res>
    implements $TransactionIdCopyWith<$Res> {
  factory _$$_TransactionIdCopyWith(
          _$_TransactionId value, $Res Function(_$_TransactionId) then) =
      __$$_TransactionIdCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String lt, String hash});
}

/// @nodoc
class __$$_TransactionIdCopyWithImpl<$Res>
    extends _$TransactionIdCopyWithImpl<$Res, _$_TransactionId>
    implements _$$_TransactionIdCopyWith<$Res> {
  __$$_TransactionIdCopyWithImpl(
      _$_TransactionId _value, $Res Function(_$_TransactionId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? lt = null,
    Object? hash = null,
  }) {
    return _then(_$_TransactionId(
      lt: null == lt
          ? _value.lt
          : lt // ignore: cast_nullable_to_non_nullable
              as String,
      hash: null == hash
          ? _value.hash
          : hash // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionId implements _TransactionId {
  const _$_TransactionId({required this.lt, required this.hash});

  factory _$_TransactionId.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionIdFromJson(json);

  @override
  final String lt;
  @override
  final String hash;

  @override
  String toString() {
    return 'TransactionId(lt: $lt, hash: $hash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TransactionId &&
            (identical(other.lt, lt) || other.lt == lt) &&
            (identical(other.hash, hash) || other.hash == hash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, lt, hash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TransactionIdCopyWith<_$_TransactionId> get copyWith =>
      __$$_TransactionIdCopyWithImpl<_$_TransactionId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionIdToJson(
      this,
    );
  }
}

abstract class _TransactionId implements TransactionId {
  const factory _TransactionId(
      {required final String lt,
      required final String hash}) = _$_TransactionId;

  factory _TransactionId.fromJson(Map<String, dynamic> json) =
      _$_TransactionId.fromJson;

  @override
  String get lt;
  @override
  String get hash;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionIdCopyWith<_$_TransactionId> get copyWith =>
      throw _privateConstructorUsedError;
}
