// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transactions_batch_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionsBatchInfo _$TransactionsBatchInfoFromJson(
    Map<String, dynamic> json) {
  return _TransactionsBatchInfo.fromJson(json);
}

/// @nodoc
mixin _$TransactionsBatchInfo {
  String get minLt => throw _privateConstructorUsedError;
  String get maxLt => throw _privateConstructorUsedError;
  TransactionsBatchType get batchType => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransactionsBatchInfoCopyWith<TransactionsBatchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionsBatchInfoCopyWith<$Res> {
  factory $TransactionsBatchInfoCopyWith(TransactionsBatchInfo value,
          $Res Function(TransactionsBatchInfo) then) =
      _$TransactionsBatchInfoCopyWithImpl<$Res, TransactionsBatchInfo>;
  @useResult
  $Res call({String minLt, String maxLt, TransactionsBatchType batchType});
}

/// @nodoc
class _$TransactionsBatchInfoCopyWithImpl<$Res,
        $Val extends TransactionsBatchInfo>
    implements $TransactionsBatchInfoCopyWith<$Res> {
  _$TransactionsBatchInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLt = null,
    Object? maxLt = null,
    Object? batchType = null,
  }) {
    return _then(_value.copyWith(
      minLt: null == minLt
          ? _value.minLt
          : minLt // ignore: cast_nullable_to_non_nullable
              as String,
      maxLt: null == maxLt
          ? _value.maxLt
          : maxLt // ignore: cast_nullable_to_non_nullable
              as String,
      batchType: null == batchType
          ? _value.batchType
          : batchType // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchType,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TransactionsBatchInfoImplCopyWith<$Res>
    implements $TransactionsBatchInfoCopyWith<$Res> {
  factory _$$TransactionsBatchInfoImplCopyWith(
          _$TransactionsBatchInfoImpl value,
          $Res Function(_$TransactionsBatchInfoImpl) then) =
      __$$TransactionsBatchInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String minLt, String maxLt, TransactionsBatchType batchType});
}

/// @nodoc
class __$$TransactionsBatchInfoImplCopyWithImpl<$Res>
    extends _$TransactionsBatchInfoCopyWithImpl<$Res,
        _$TransactionsBatchInfoImpl>
    implements _$$TransactionsBatchInfoImplCopyWith<$Res> {
  __$$TransactionsBatchInfoImplCopyWithImpl(_$TransactionsBatchInfoImpl _value,
      $Res Function(_$TransactionsBatchInfoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? minLt = null,
    Object? maxLt = null,
    Object? batchType = null,
  }) {
    return _then(_$TransactionsBatchInfoImpl(
      minLt: null == minLt
          ? _value.minLt
          : minLt // ignore: cast_nullable_to_non_nullable
              as String,
      maxLt: null == maxLt
          ? _value.maxLt
          : maxLt // ignore: cast_nullable_to_non_nullable
              as String,
      batchType: null == batchType
          ? _value.batchType
          : batchType // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TransactionsBatchInfoImpl implements _TransactionsBatchInfo {
  const _$TransactionsBatchInfoImpl(
      {required this.minLt, required this.maxLt, required this.batchType});

  factory _$TransactionsBatchInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TransactionsBatchInfoImplFromJson(json);

  @override
  final String minLt;
  @override
  final String maxLt;
  @override
  final TransactionsBatchType batchType;

  @override
  String toString() {
    return 'TransactionsBatchInfo(minLt: $minLt, maxLt: $maxLt, batchType: $batchType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionsBatchInfoImpl &&
            (identical(other.minLt, minLt) || other.minLt == minLt) &&
            (identical(other.maxLt, maxLt) || other.maxLt == maxLt) &&
            (identical(other.batchType, batchType) ||
                other.batchType == batchType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, minLt, maxLt, batchType);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionsBatchInfoImplCopyWith<_$TransactionsBatchInfoImpl>
      get copyWith => __$$TransactionsBatchInfoImplCopyWithImpl<
          _$TransactionsBatchInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TransactionsBatchInfoImplToJson(
      this,
    );
  }
}

abstract class _TransactionsBatchInfo implements TransactionsBatchInfo {
  const factory _TransactionsBatchInfo(
          {required final String minLt,
          required final String maxLt,
          required final TransactionsBatchType batchType}) =
      _$TransactionsBatchInfoImpl;

  factory _TransactionsBatchInfo.fromJson(Map<String, dynamic> json) =
      _$TransactionsBatchInfoImpl.fromJson;

  @override
  String get minLt;
  @override
  String get maxLt;
  @override
  TransactionsBatchType get batchType;
  @override
  @JsonKey(ignore: true)
  _$$TransactionsBatchInfoImplCopyWith<_$TransactionsBatchInfoImpl>
      get copyWith => throw _privateConstructorUsedError;
}
