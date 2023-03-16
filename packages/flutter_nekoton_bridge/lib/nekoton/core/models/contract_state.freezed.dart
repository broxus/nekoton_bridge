// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ContractState _$ContractStateFromJson(Map<String, dynamic> json) {
  return _ContractState.fromJson(json);
}

/// @nodoc
mixin _$ContractState {
  String get balance => throw _privateConstructorUsedError;
  GenTimings get genTimings => throw _privateConstructorUsedError;
  LastTransactionId? get lastTransactionId =>
      throw _privateConstructorUsedError;
  bool get isDeployed => throw _privateConstructorUsedError;
  String? get codeHash => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ContractStateCopyWith<ContractState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ContractStateCopyWith<$Res> {
  factory $ContractStateCopyWith(
          ContractState value, $Res Function(ContractState) then) =
      _$ContractStateCopyWithImpl<$Res, ContractState>;
  @useResult
  $Res call(
      {String balance,
      GenTimings genTimings,
      LastTransactionId? lastTransactionId,
      bool isDeployed,
      String? codeHash});

  $GenTimingsCopyWith<$Res> get genTimings;
  $LastTransactionIdCopyWith<$Res>? get lastTransactionId;
}

/// @nodoc
class _$ContractStateCopyWithImpl<$Res, $Val extends ContractState>
    implements $ContractStateCopyWith<$Res> {
  _$ContractStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? genTimings = null,
    Object? lastTransactionId = freezed,
    Object? isDeployed = null,
    Object? codeHash = freezed,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
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
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get genTimings {
    return $GenTimingsCopyWith<$Res>(_value.genTimings, (value) {
      return _then(_value.copyWith(genTimings: value) as $Val);
    });
  }

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
abstract class _$$_ContractStateCopyWith<$Res>
    implements $ContractStateCopyWith<$Res> {
  factory _$$_ContractStateCopyWith(
          _$_ContractState value, $Res Function(_$_ContractState) then) =
      __$$_ContractStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String balance,
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
class __$$_ContractStateCopyWithImpl<$Res>
    extends _$ContractStateCopyWithImpl<$Res, _$_ContractState>
    implements _$$_ContractStateCopyWith<$Res> {
  __$$_ContractStateCopyWithImpl(
      _$_ContractState _value, $Res Function(_$_ContractState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
    Object? genTimings = null,
    Object? lastTransactionId = freezed,
    Object? isDeployed = null,
    Object? codeHash = freezed,
  }) {
    return _then(_$_ContractState(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
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
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ContractState implements _ContractState {
  const _$_ContractState(
      {required this.balance,
      required this.genTimings,
      this.lastTransactionId,
      required this.isDeployed,
      this.codeHash});

  factory _$_ContractState.fromJson(Map<String, dynamic> json) =>
      _$$_ContractStateFromJson(json);

  @override
  final String balance;
  @override
  final GenTimings genTimings;
  @override
  final LastTransactionId? lastTransactionId;
  @override
  final bool isDeployed;
  @override
  final String? codeHash;

  @override
  String toString() {
    return 'ContractState(balance: $balance, genTimings: $genTimings, lastTransactionId: $lastTransactionId, isDeployed: $isDeployed, codeHash: $codeHash)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ContractState &&
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

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, balance, genTimings,
      lastTransactionId, isDeployed, codeHash);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ContractStateCopyWith<_$_ContractState> get copyWith =>
      __$$_ContractStateCopyWithImpl<_$_ContractState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ContractStateToJson(
      this,
    );
  }
}

abstract class _ContractState implements ContractState {
  const factory _ContractState(
      {required final String balance,
      required final GenTimings genTimings,
      final LastTransactionId? lastTransactionId,
      required final bool isDeployed,
      final String? codeHash}) = _$_ContractState;

  factory _ContractState.fromJson(Map<String, dynamic> json) =
      _$_ContractState.fromJson;

  @override
  String get balance;
  @override
  GenTimings get genTimings;
  @override
  LastTransactionId? get lastTransactionId;
  @override
  bool get isDeployed;
  @override
  String? get codeHash;
  @override
  @JsonKey(ignore: true)
  _$$_ContractStateCopyWith<_$_ContractState> get copyWith =>
      throw _privateConstructorUsedError;
}
