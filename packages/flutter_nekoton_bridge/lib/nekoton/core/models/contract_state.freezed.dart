// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ContractState {
  BigInt get balance;
  GenTimings get genTimings;
  LastTransactionId? get lastTransactionId;
  bool get isDeployed;
  String? get codeHash;

  /// Create a copy of ContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ContractStateCopyWith<ContractState> get copyWith =>
      _$ContractStateCopyWithImpl<ContractState>(
          this as ContractState, _$identity);

  /// Serializes this ContractState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ContractState &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.genTimings, genTimings) ||
                other.genTimings == genTimings) &&
            (identical(other.lastTransactionId, lastTransactionId) ||
                other.lastTransactionId == lastTransactionId) &&
            (identical(other.isDeployed, isDeployed) ||
                other.isDeployed == isDeployed) &&
            (identical(other.codeHash, codeHash) ||
                other.codeHash == codeHash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance, genTimings,
      lastTransactionId, isDeployed, codeHash);

  @override
  String toString() {
    return 'ContractState(balance: $balance, genTimings: $genTimings, lastTransactionId: $lastTransactionId, isDeployed: $isDeployed, codeHash: $codeHash)';
  }
}

/// @nodoc
abstract mixin class $ContractStateCopyWith<$Res> {
  factory $ContractStateCopyWith(
          ContractState value, $Res Function(ContractState) _then) =
      _$ContractStateCopyWithImpl;
  @useResult
  $Res call(
      {BigInt balance,
      GenTimings genTimings,
      LastTransactionId? lastTransactionId,
      bool isDeployed,
      String? codeHash});

  $GenTimingsCopyWith<$Res> get genTimings;
  $LastTransactionIdCopyWith<$Res>? get lastTransactionId;
}

/// @nodoc
class _$ContractStateCopyWithImpl<$Res>
    implements $ContractStateCopyWith<$Res> {
  _$ContractStateCopyWithImpl(this._self, this._then);

  final ContractState _self;
  final $Res Function(ContractState) _then;

  /// Create a copy of ContractState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? genTimings = null,
    Object? lastTransactionId = freezed,
    Object? isDeployed = null,
    Object? codeHash = freezed,
  }) {
    return _then(_self.copyWith(
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      genTimings: null == genTimings
          ? _self.genTimings
          : genTimings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
      lastTransactionId: freezed == lastTransactionId
          ? _self.lastTransactionId
          : lastTransactionId // ignore: cast_nullable_to_non_nullable
              as LastTransactionId?,
      isDeployed: null == isDeployed
          ? _self.isDeployed
          : isDeployed // ignore: cast_nullable_to_non_nullable
              as bool,
      codeHash: freezed == codeHash
          ? _self.codeHash
          : codeHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get genTimings {
    return $GenTimingsCopyWith<$Res>(_self.genTimings, (value) {
      return _then(_self.copyWith(genTimings: value));
    });
  }

  /// Create a copy of ContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastTransactionIdCopyWith<$Res>? get lastTransactionId {
    if (_self.lastTransactionId == null) {
      return null;
    }

    return $LastTransactionIdCopyWith<$Res>(_self.lastTransactionId!, (value) {
      return _then(_self.copyWith(lastTransactionId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ContractState implements ContractState {
  const _ContractState(
      {required this.balance,
      required this.genTimings,
      this.lastTransactionId,
      required this.isDeployed,
      this.codeHash});
  factory _ContractState.fromJson(Map<String, dynamic> json) =>
      _$ContractStateFromJson(json);

  @override
  final BigInt balance;
  @override
  final GenTimings genTimings;
  @override
  final LastTransactionId? lastTransactionId;
  @override
  final bool isDeployed;
  @override
  final String? codeHash;

  /// Create a copy of ContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ContractStateCopyWith<_ContractState> get copyWith =>
      __$ContractStateCopyWithImpl<_ContractState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ContractStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ContractState &&
            (identical(other.balance, balance) || other.balance == balance) &&
            (identical(other.genTimings, genTimings) ||
                other.genTimings == genTimings) &&
            (identical(other.lastTransactionId, lastTransactionId) ||
                other.lastTransactionId == lastTransactionId) &&
            (identical(other.isDeployed, isDeployed) ||
                other.isDeployed == isDeployed) &&
            (identical(other.codeHash, codeHash) ||
                other.codeHash == codeHash));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, balance, genTimings,
      lastTransactionId, isDeployed, codeHash);

  @override
  String toString() {
    return 'ContractState(balance: $balance, genTimings: $genTimings, lastTransactionId: $lastTransactionId, isDeployed: $isDeployed, codeHash: $codeHash)';
  }
}

/// @nodoc
abstract mixin class _$ContractStateCopyWith<$Res>
    implements $ContractStateCopyWith<$Res> {
  factory _$ContractStateCopyWith(
          _ContractState value, $Res Function(_ContractState) _then) =
      __$ContractStateCopyWithImpl;
  @override
  @useResult
  $Res call(
      {BigInt balance,
      GenTimings genTimings,
      LastTransactionId? lastTransactionId,
      bool isDeployed,
      String? codeHash});

  @override
  $GenTimingsCopyWith<$Res> get genTimings;
  @override
  $LastTransactionIdCopyWith<$Res>? get lastTransactionId;
}

/// @nodoc
class __$ContractStateCopyWithImpl<$Res>
    implements _$ContractStateCopyWith<$Res> {
  __$ContractStateCopyWithImpl(this._self, this._then);

  final _ContractState _self;
  final $Res Function(_ContractState) _then;

  /// Create a copy of ContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? balance = null,
    Object? genTimings = null,
    Object? lastTransactionId = freezed,
    Object? isDeployed = null,
    Object? codeHash = freezed,
  }) {
    return _then(_ContractState(
      balance: null == balance
          ? _self.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as BigInt,
      genTimings: null == genTimings
          ? _self.genTimings
          : genTimings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
      lastTransactionId: freezed == lastTransactionId
          ? _self.lastTransactionId
          : lastTransactionId // ignore: cast_nullable_to_non_nullable
              as LastTransactionId?,
      isDeployed: null == isDeployed
          ? _self.isDeployed
          : isDeployed // ignore: cast_nullable_to_non_nullable
              as bool,
      codeHash: freezed == codeHash
          ? _self.codeHash
          : codeHash // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  /// Create a copy of ContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get genTimings {
    return $GenTimingsCopyWith<$Res>(_self.genTimings, (value) {
      return _then(_self.copyWith(genTimings: value));
    });
  }

  /// Create a copy of ContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastTransactionIdCopyWith<$Res>? get lastTransactionId {
    if (_self.lastTransactionId == null) {
      return null;
    }

    return $LastTransactionIdCopyWith<$Res>(_self.lastTransactionId!, (value) {
      return _then(_self.copyWith(lastTransactionId: value));
    });
  }
}

// dart format on
