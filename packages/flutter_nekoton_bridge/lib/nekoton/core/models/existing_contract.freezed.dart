// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'existing_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ExistingContract _$ExistingContractFromJson(Map<String, dynamic> json) {
  return _ExistingContract.fromJson(json);
}

/// @nodoc
mixin _$ExistingContract {
  String get account => throw _privateConstructorUsedError;
  GenTimings get timings => throw _privateConstructorUsedError;
  LastTransactionId get lastTransactionId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExistingContractCopyWith<ExistingContract> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExistingContractCopyWith<$Res> {
  factory $ExistingContractCopyWith(
          ExistingContract value, $Res Function(ExistingContract) then) =
      _$ExistingContractCopyWithImpl<$Res>;
  $Res call(
      {String account,
      GenTimings timings,
      LastTransactionId lastTransactionId});

  $GenTimingsCopyWith<$Res> get timings;
  $LastTransactionIdCopyWith<$Res> get lastTransactionId;
}

/// @nodoc
class _$ExistingContractCopyWithImpl<$Res>
    implements $ExistingContractCopyWith<$Res> {
  _$ExistingContractCopyWithImpl(this._value, this._then);

  final ExistingContract _value;
  // ignore: unused_field
  final $Res Function(ExistingContract) _then;

  @override
  $Res call({
    Object? account = freezed,
    Object? timings = freezed,
    Object? lastTransactionId = freezed,
  }) {
    return _then(_value.copyWith(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      timings: timings == freezed
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
      lastTransactionId: lastTransactionId == freezed
          ? _value.lastTransactionId
          : lastTransactionId // ignore: cast_nullable_to_non_nullable
              as LastTransactionId,
    ));
  }

  @override
  $GenTimingsCopyWith<$Res> get timings {
    return $GenTimingsCopyWith<$Res>(_value.timings, (value) {
      return _then(_value.copyWith(timings: value));
    });
  }

  @override
  $LastTransactionIdCopyWith<$Res> get lastTransactionId {
    return $LastTransactionIdCopyWith<$Res>(_value.lastTransactionId, (value) {
      return _then(_value.copyWith(lastTransactionId: value));
    });
  }
}

/// @nodoc
abstract class _$$_ExistingContractCopyWith<$Res>
    implements $ExistingContractCopyWith<$Res> {
  factory _$$_ExistingContractCopyWith(
          _$_ExistingContract value, $Res Function(_$_ExistingContract) then) =
      __$$_ExistingContractCopyWithImpl<$Res>;
  @override
  $Res call(
      {String account,
      GenTimings timings,
      LastTransactionId lastTransactionId});

  @override
  $GenTimingsCopyWith<$Res> get timings;
  @override
  $LastTransactionIdCopyWith<$Res> get lastTransactionId;
}

/// @nodoc
class __$$_ExistingContractCopyWithImpl<$Res>
    extends _$ExistingContractCopyWithImpl<$Res>
    implements _$$_ExistingContractCopyWith<$Res> {
  __$$_ExistingContractCopyWithImpl(
      _$_ExistingContract _value, $Res Function(_$_ExistingContract) _then)
      : super(_value, (v) => _then(v as _$_ExistingContract));

  @override
  _$_ExistingContract get _value => super._value as _$_ExistingContract;

  @override
  $Res call({
    Object? account = freezed,
    Object? timings = freezed,
    Object? lastTransactionId = freezed,
  }) {
    return _then(_$_ExistingContract(
      account: account == freezed
          ? _value.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      timings: timings == freezed
          ? _value.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
      lastTransactionId: lastTransactionId == freezed
          ? _value.lastTransactionId
          : lastTransactionId // ignore: cast_nullable_to_non_nullable
              as LastTransactionId,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExistingContract implements _ExistingContract {
  const _$_ExistingContract(
      {required this.account,
      required this.timings,
      required this.lastTransactionId});

  factory _$_ExistingContract.fromJson(Map<String, dynamic> json) =>
      _$$_ExistingContractFromJson(json);

  @override
  final String account;
  @override
  final GenTimings timings;
  @override
  final LastTransactionId lastTransactionId;

  @override
  String toString() {
    return 'ExistingContract(account: $account, timings: $timings, lastTransactionId: $lastTransactionId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExistingContract &&
            const DeepCollectionEquality().equals(other.account, account) &&
            const DeepCollectionEquality().equals(other.timings, timings) &&
            const DeepCollectionEquality()
                .equals(other.lastTransactionId, lastTransactionId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(account),
      const DeepCollectionEquality().hash(timings),
      const DeepCollectionEquality().hash(lastTransactionId));

  @JsonKey(ignore: true)
  @override
  _$$_ExistingContractCopyWith<_$_ExistingContract> get copyWith =>
      __$$_ExistingContractCopyWithImpl<_$_ExistingContract>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExistingContractToJson(
      this,
    );
  }
}

abstract class _ExistingContract implements ExistingContract {
  const factory _ExistingContract(
          {required final String account,
          required final GenTimings timings,
          required final LastTransactionId lastTransactionId}) =
      _$_ExistingContract;

  factory _ExistingContract.fromJson(Map<String, dynamic> json) =
      _$_ExistingContract.fromJson;

  @override
  String get account;
  @override
  GenTimings get timings;
  @override
  LastTransactionId get lastTransactionId;
  @override
  @JsonKey(ignore: true)
  _$$_ExistingContractCopyWith<_$_ExistingContract> get copyWith =>
      throw _privateConstructorUsedError;
}
