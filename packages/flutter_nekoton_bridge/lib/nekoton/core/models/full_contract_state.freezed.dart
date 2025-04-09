// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'full_contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$FullContractState {
  @amountJsonConverter
  BigInt get balance;
  GenTimings get genTimings;
  LastTransactionId? get lastTransactionId;
  bool get isDeployed;
  String? get codeHash;
  String get boc;

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $FullContractStateCopyWith<FullContractState> get copyWith =>
      _$FullContractStateCopyWithImpl<FullContractState>(
          this as FullContractState, _$identity);

  /// Serializes this FullContractState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is FullContractState &&
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

  @override
  String toString() {
    return 'FullContractState(balance: $balance, genTimings: $genTimings, lastTransactionId: $lastTransactionId, isDeployed: $isDeployed, codeHash: $codeHash, boc: $boc)';
  }
}

/// @nodoc
abstract mixin class $FullContractStateCopyWith<$Res> {
  factory $FullContractStateCopyWith(
          FullContractState value, $Res Function(FullContractState) _then) =
      _$FullContractStateCopyWithImpl;
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
class _$FullContractStateCopyWithImpl<$Res>
    implements $FullContractStateCopyWith<$Res> {
  _$FullContractStateCopyWithImpl(this._self, this._then);

  final FullContractState _self;
  final $Res Function(FullContractState) _then;

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
      boc: null == boc
          ? _self.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get genTimings {
    return $GenTimingsCopyWith<$Res>(_self.genTimings, (value) {
      return _then(_self.copyWith(genTimings: value));
    });
  }

  /// Create a copy of FullContractState
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
class _FullContractState implements FullContractState {
  const _FullContractState(
      {@amountJsonConverter required this.balance,
      required this.genTimings,
      this.lastTransactionId,
      required this.isDeployed,
      this.codeHash,
      required this.boc});
  factory _FullContractState.fromJson(Map<String, dynamic> json) =>
      _$FullContractStateFromJson(json);

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

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$FullContractStateCopyWith<_FullContractState> get copyWith =>
      __$FullContractStateCopyWithImpl<_FullContractState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$FullContractStateToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FullContractState &&
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

  @override
  String toString() {
    return 'FullContractState(balance: $balance, genTimings: $genTimings, lastTransactionId: $lastTransactionId, isDeployed: $isDeployed, codeHash: $codeHash, boc: $boc)';
  }
}

/// @nodoc
abstract mixin class _$FullContractStateCopyWith<$Res>
    implements $FullContractStateCopyWith<$Res> {
  factory _$FullContractStateCopyWith(
          _FullContractState value, $Res Function(_FullContractState) _then) =
      __$FullContractStateCopyWithImpl;
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
class __$FullContractStateCopyWithImpl<$Res>
    implements _$FullContractStateCopyWith<$Res> {
  __$FullContractStateCopyWithImpl(this._self, this._then);

  final _FullContractState _self;
  final $Res Function(_FullContractState) _then;

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? balance = null,
    Object? genTimings = null,
    Object? lastTransactionId = freezed,
    Object? isDeployed = null,
    Object? codeHash = freezed,
    Object? boc = null,
  }) {
    return _then(_FullContractState(
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
      boc: null == boc
          ? _self.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of FullContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get genTimings {
    return $GenTimingsCopyWith<$Res>(_self.genTimings, (value) {
      return _then(_self.copyWith(genTimings: value));
    });
  }

  /// Create a copy of FullContractState
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
