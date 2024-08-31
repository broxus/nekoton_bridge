// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

FullContractState _$FullContractStateFromJson(Map<String, dynamic> json) {
  return _FullContractState.fromJson(json);
}

/// @nodoc
mixin _$FullContractState {
  @amountJsonConverter
  BigInt get balance => throw _privateConstructorUsedError;
  GenTimings get genTimings => throw _privateConstructorUsedError;
  LastTransactionId? get lastTransactionId =>
      throw _privateConstructorUsedError;
  bool get isDeployed => throw _privateConstructorUsedError;
  String? get codeHash => throw _privateConstructorUsedError;
  String get boc => throw _privateConstructorUsedError;

  /// Serializes this FullContractState to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FullContractStateCopyWith<FullContractState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullContractStateCopyWith<$Res> {
  factory $FullContractStateCopyWith(
          FullContractState value, $Res Function(FullContractState) then) =
      _$FullContractStateCopyWithImpl<$Res, FullContractState>;
  @useResult
  $Res call(
      {@amountJsonConverter BigInt balance,
      GenTimings genTimings,
      LastTransactionId? lastTransactionId,
      bool isDeployed,
      String? codeHash,
      String boc});

  $GenTimingsCopyWith<$Res> get genTimings;
  $LastTransactionIdCopyWith<$Res>? get lastTransactionId;
}

/// @nodoc
class _$FullContractStateCopyWithImpl<$Res, $Val extends FullContractState>
    implements $FullContractStateCopyWith<$Res> {
  _$FullContractStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? genTimings = null,
    Object? lastTransactionId = freezed,
    Object? isDeployed = null,
    Object? codeHash = freezed,
    Object? boc = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      genTimings: null == genTimings
          ? _value.genTimings
          : genTimings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
      lastTransactionId: freezed == lastTransactionId
          ? _value.lastTransactionId
          : lastTransactionId // ignore: cast_nullable_to_non_nullable
              as LastTransactionId?,
      isDeployed: null == isDeployed
          ? _value.isDeployed
          : isDeployed // ignore: cast_nullable_to_non_nullable
              as bool,
      codeHash: freezed == codeHash
          ? _value.codeHash
          : codeHash // ignore: cast_nullable_to_non_nullable
              as String?,
      boc: null == boc
          ? _value.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get genTimings {
    return $GenTimingsCopyWith<$Res>(_value.genTimings, (value) {
      return _then(_value.copyWith(genTimings: value) as $Val);
    });
  }

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastTransactionIdCopyWith<$Res>? get lastTransactionId {
    if (_value.lastTransactionId == null) {
      return null;
    }

    return $LastTransactionIdCopyWith<$Res>(_value.lastTransactionId!, (value) {
      return _then(_value.copyWith(lastTransactionId: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$FullContractStateImplCopyWith<$Res>
    implements $FullContractStateCopyWith<$Res> {
  factory _$$FullContractStateImplCopyWith(_$FullContractStateImpl value,
          $Res Function(_$FullContractStateImpl) then) =
      __$$FullContractStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@amountJsonConverter BigInt balance,
      GenTimings genTimings,
      LastTransactionId? lastTransactionId,
      bool isDeployed,
      String? codeHash,
      String boc});

  @override
  $GenTimingsCopyWith<$Res> get genTimings;
  @override
  $LastTransactionIdCopyWith<$Res>? get lastTransactionId;
}

/// @nodoc
class __$$FullContractStateImplCopyWithImpl<$Res>
    extends _$FullContractStateCopyWithImpl<$Res, _$FullContractStateImpl>
    implements _$$FullContractStateImplCopyWith<$Res> {
  __$$FullContractStateImplCopyWithImpl(_$FullContractStateImpl _value,
      $Res Function(_$FullContractStateImpl) _then)
      : super(_value, _then);

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? genTimings = null,
    Object? lastTransactionId = freezed,
    Object? isDeployed = null,
    Object? codeHash = freezed,
    Object? boc = null,
  }) {
    return _then(_$FullContractStateImpl(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      genTimings: null == genTimings
          ? _value.genTimings
          : genTimings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
      lastTransactionId: freezed == lastTransactionId
          ? _value.lastTransactionId
          : lastTransactionId // ignore: cast_nullable_to_non_nullable
              as LastTransactionId?,
      isDeployed: null == isDeployed
          ? _value.isDeployed
          : isDeployed // ignore: cast_nullable_to_non_nullable
              as bool,
      codeHash: freezed == codeHash
          ? _value.codeHash
          : codeHash // ignore: cast_nullable_to_non_nullable
              as String?,
      boc: null == boc
          ? _value.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$FullContractStateImpl implements _FullContractState {
  const _$FullContractStateImpl(
      {@amountJsonConverter required this.balance,
      required this.genTimings,
      this.lastTransactionId,
      required this.isDeployed,
      this.codeHash,
      required this.boc});

  factory _$FullContractStateImpl.fromJson(Map<String, dynamic> json) =>
      _$$FullContractStateImplFromJson(json);

  @override
  @amountJsonConverter
  final BigInt balance;
  @override
  final GenTimings genTimings;
  @override
  final LastTransactionId? lastTransactionId;
  @override
  final bool isDeployed;
  @override
  final String? codeHash;
  @override
  final String boc;

  @override
  String toString() {
    return 'FullContractState(balance: $balance, genTimings: $genTimings, lastTransactionId: $lastTransactionId, isDeployed: $isDeployed, codeHash: $codeHash, boc: $boc)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FullContractStateImpl &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.genTimings, genTimings) ||
                other.genTimings == genTimings) &&
            (identical(other.lastTransactionId, lastTransactionId) ||
                other.lastTransactionId == lastTransactionId) &&
            (identical(other.isDeployed, isDeployed) ||
                other.isDeployed == isDeployed) &&
            (identical(other.codeHash, codeHash) ||
                other.codeHash == codeHash) &&
            (identical(other.boc, boc) || other.boc == boc));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance, genTimings,
      lastTransactionId, isDeployed, codeHash, boc);

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FullContractStateImplCopyWith<_$FullContractStateImpl> get copyWith =>
      __$$FullContractStateImplCopyWithImpl<_$FullContractStateImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$FullContractStateImplToJson(
      this,
    );
  }
}

abstract class _FullContractState implements FullContractState {
  const factory _FullContractState(
      {@amountJsonConverter required final BigInt balance,
      required final GenTimings genTimings,
      final LastTransactionId? lastTransactionId,
      required final bool isDeployed,
      final String? codeHash,
      required final String boc}) = _$FullContractStateImpl;

  factory _FullContractState.fromJson(Map<String, dynamic> json) =
      _$FullContractStateImpl.fromJson;

  @override
  @amountJsonConverter
  BigInt get balance;
  @override
  GenTimings get genTimings;
  @override
  LastTransactionId? get lastTransactionId;
  @override
  bool get isDeployed;
  @override
  String? get codeHash;
  @override
  String get boc;

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FullContractStateImplCopyWith<_$FullContractStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
