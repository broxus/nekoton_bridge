// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$TransactionsBatchInfoCopyWithImpl<$Res>;
  $Res call({String minLt, String maxLt, TransactionsBatchType batchType});
}

/// @nodoc
class _$TransactionsBatchInfoCopyWithImpl<$Res>
    implements $TransactionsBatchInfoCopyWith<$Res> {
  _$TransactionsBatchInfoCopyWithImpl(this._value, this._then);

  final TransactionsBatchInfo _value;
  // ignore: unused_field
  final $Res Function(TransactionsBatchInfo) _then;

  @override
  $Res call({
    Object? minLt = freezed,
    Object? maxLt = freezed,
    Object? batchType = freezed,
  }) {
    return _then(_value.copyWith(
      minLt: minLt == freezed
          ? _value.minLt
          : minLt // ignore: cast_nullable_to_non_nullable
              as String,
      maxLt: maxLt == freezed
          ? _value.maxLt
          : maxLt // ignore: cast_nullable_to_non_nullable
              as String,
      batchType: batchType == freezed
          ? _value.batchType
          : batchType // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchType,
    ));
  }
}

/// @nodoc
abstract class _$$_TransactionsBatchInfoCopyWith<$Res>
    implements $TransactionsBatchInfoCopyWith<$Res> {
  factory _$$_TransactionsBatchInfoCopyWith(_$_TransactionsBatchInfo value,
          $Res Function(_$_TransactionsBatchInfo) then) =
      __$$_TransactionsBatchInfoCopyWithImpl<$Res>;
  @override
  $Res call({String minLt, String maxLt, TransactionsBatchType batchType});
}

/// @nodoc
class __$$_TransactionsBatchInfoCopyWithImpl<$Res>
    extends _$TransactionsBatchInfoCopyWithImpl<$Res>
    implements _$$_TransactionsBatchInfoCopyWith<$Res> {
  __$$_TransactionsBatchInfoCopyWithImpl(_$_TransactionsBatchInfo _value,
      $Res Function(_$_TransactionsBatchInfo) _then)
      : super(_value, (v) => _then(v as _$_TransactionsBatchInfo));

  @override
  _$_TransactionsBatchInfo get _value =>
      super._value as _$_TransactionsBatchInfo;

  @override
  $Res call({
    Object? minLt = freezed,
    Object? maxLt = freezed,
    Object? batchType = freezed,
  }) {
    return _then(_$_TransactionsBatchInfo(
      minLt: minLt == freezed
          ? _value.minLt
          : minLt // ignore: cast_nullable_to_non_nullable
              as String,
      maxLt: maxLt == freezed
          ? _value.maxLt
          : maxLt // ignore: cast_nullable_to_non_nullable
              as String,
      batchType: batchType == freezed
          ? _value.batchType
          : batchType // ignore: cast_nullable_to_non_nullable
              as TransactionsBatchType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TransactionsBatchInfo implements _TransactionsBatchInfo {
  const _$_TransactionsBatchInfo(
      {required this.minLt, required this.maxLt, required this.batchType});

  factory _$_TransactionsBatchInfo.fromJson(Map<String, dynamic> json) =>
      _$$_TransactionsBatchInfoFromJson(json);

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
            other is _$_TransactionsBatchInfo &&
            const DeepCollectionEquality().equals(other.minLt, minLt) &&
            const DeepCollectionEquality().equals(other.maxLt, maxLt) &&
            const DeepCollectionEquality().equals(other.batchType, batchType));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(minLt),
      const DeepCollectionEquality().hash(maxLt),
      const DeepCollectionEquality().hash(batchType));

  @JsonKey(ignore: true)
  @override
  _$$_TransactionsBatchInfoCopyWith<_$_TransactionsBatchInfo> get copyWith =>
      __$$_TransactionsBatchInfoCopyWithImpl<_$_TransactionsBatchInfo>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TransactionsBatchInfoToJson(
      this,
    );
  }
}

abstract class _TransactionsBatchInfo implements TransactionsBatchInfo {
  const factory _TransactionsBatchInfo(
          {required final String minLt,
          required final String maxLt,
          required final TransactionsBatchType batchType}) =
      _$_TransactionsBatchInfo;

  factory _TransactionsBatchInfo.fromJson(Map<String, dynamic> json) =
      _$_TransactionsBatchInfo.fromJson;

  @override
  String get minLt;
  @override
  String get maxLt;
  @override
  TransactionsBatchType get batchType;
  @override
  @JsonKey(ignore: true)
  _$$_TransactionsBatchInfoCopyWith<_$_TransactionsBatchInfo> get copyWith =>
      throw _privateConstructorUsedError;
}
