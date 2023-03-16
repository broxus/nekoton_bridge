// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'full_contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FullContractState _$FullContractStateFromJson(Map<String, dynamic> json) {
  return _FullContractState.fromJson(json);
}

/// @nodoc
mixin _$FullContractState {
  String get balance => throw _privateConstructorUsedError;
  GenTimings get genTimings => throw _privateConstructorUsedError;
  LastTransactionId? get lastTransactionId =>
      throw _privateConstructorUsedError;
  bool get isDeployed => throw _privateConstructorUsedError;
  String? get codeHash => throw _privateConstructorUsedError;
  String get boc => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FullContractStateCopyWith<FullContractState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FullContractStateCopyWith<$Res> {
  factory $FullContractStateCopyWith(
          FullContractState value, $Res Function(FullContractState) then) =
      _$FullContractStateCopyWithImpl<$Res>;
  $Res call(
      {String balance,
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
  _$FullContractStateCopyWithImpl(this._value, this._then);

  final FullContractState _value;
  // ignore: unused_field
  final $Res Function(FullContractState) _then;

  @override
  $Res call({
    Object? balance = freezed,
    Object? genTimings = freezed,
    Object? lastTransactionId = freezed,
    Object? isDeployed = freezed,
    Object? codeHash = freezed,
    Object? boc = freezed,
  }) {
    return _then(_value.copyWith(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      genTimings: genTimings == freezed
          ? _value.genTimings
          : genTimings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
      lastTransactionId: lastTransactionId == freezed
          ? _value.lastTransactionId
          : lastTransactionId // ignore: cast_nullable_to_non_nullable
              as LastTransactionId?,
      isDeployed: isDeployed == freezed
          ? _value.isDeployed
          : isDeployed // ignore: cast_nullable_to_non_nullable
              as bool,
      codeHash: codeHash == freezed
          ? _value.codeHash
          : codeHash // ignore: cast_nullable_to_non_nullable
              as String?,
      boc: boc == freezed
          ? _value.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  @override
  $GenTimingsCopyWith<$Res> get genTimings {
    return $GenTimingsCopyWith<$Res>(_value.genTimings, (value) {
      return _then(_value.copyWith(genTimings: value));
    });
  }

  @override
  $LastTransactionIdCopyWith<$Res>? get lastTransactionId {
    if (_value.lastTransactionId == null) {
      return null;
    }

    return $LastTransactionIdCopyWith<$Res>(_value.lastTransactionId!, (value) {
      return _then(_value.copyWith(lastTransactionId: value));
    });
  }
}

/// @nodoc
abstract class _$$_FullContractStateCopyWith<$Res>
    implements $FullContractStateCopyWith<$Res> {
  factory _$$_FullContractStateCopyWith(_$_FullContractState value,
          $Res Function(_$_FullContractState) then) =
      __$$_FullContractStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {String balance,
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
class __$$_FullContractStateCopyWithImpl<$Res>
    extends _$FullContractStateCopyWithImpl<$Res>
    implements _$$_FullContractStateCopyWith<$Res> {
  __$$_FullContractStateCopyWithImpl(
      _$_FullContractState _value, $Res Function(_$_FullContractState) _then)
      : super(_value, (v) => _then(v as _$_FullContractState));

  @override
  _$_FullContractState get _value => super._value as _$_FullContractState;

  @override
  $Res call({
    Object? balance = freezed,
    Object? genTimings = freezed,
    Object? lastTransactionId = freezed,
    Object? isDeployed = freezed,
    Object? codeHash = freezed,
    Object? boc = freezed,
  }) {
    return _then(_$_FullContractState(
      balance: balance == freezed
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
      genTimings: genTimings == freezed
          ? _value.genTimings
          : genTimings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
      lastTransactionId: lastTransactionId == freezed
          ? _value.lastTransactionId
          : lastTransactionId // ignore: cast_nullable_to_non_nullable
              as LastTransactionId?,
      isDeployed: isDeployed == freezed
          ? _value.isDeployed
          : isDeployed // ignore: cast_nullable_to_non_nullable
              as bool,
      codeHash: codeHash == freezed
          ? _value.codeHash
          : codeHash // ignore: cast_nullable_to_non_nullable
              as String?,
      boc: boc == freezed
          ? _value.boc
          : boc // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FullContractState implements _FullContractState {
  const _$_FullContractState(
      {required this.balance,
      required this.genTimings,
      this.lastTransactionId,
      required this.isDeployed,
      this.codeHash,
      required this.boc});

  factory _$_FullContractState.fromJson(Map<String, dynamic> json) =>
      _$$_FullContractStateFromJson(json);

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
  final String boc;

  @override
  String toString() {
    return 'FullContractState(balance: $balance, genTimings: $genTimings, lastTransactionId: $lastTransactionId, isDeployed: $isDeployed, codeHash: $codeHash, boc: $boc)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FullContractState &&
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other.genTimings, genTimings) &&
            const DeepCollectionEquality()
                .equals(other.lastTransactionId, lastTransactionId) &&
            const DeepCollectionEquality()
                .equals(other.isDeployed, isDeployed) &&
            const DeepCollectionEquality().equals(other.codeHash, codeHash) &&
            const DeepCollectionEquality().equals(other.boc, boc));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(genTimings),
      const DeepCollectionEquality().hash(lastTransactionId),
      const DeepCollectionEquality().hash(isDeployed),
      const DeepCollectionEquality().hash(codeHash),
      const DeepCollectionEquality().hash(boc));

  @JsonKey(ignore: true)
  @override
  _$$_FullContractStateCopyWith<_$_FullContractState> get copyWith =>
      __$$_FullContractStateCopyWithImpl<_$_FullContractState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FullContractStateToJson(
      this,
    );
  }
}

abstract class _FullContractState implements FullContractState {
  const factory _FullContractState(
      {required final String balance,
      required final GenTimings genTimings,
      final LastTransactionId? lastTransactionId,
      required final bool isDeployed,
      final String? codeHash,
      required final String boc}) = _$_FullContractState;

  factory _FullContractState.fromJson(Map<String, dynamic> json) =
      _$_FullContractState.fromJson;

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
  String get boc;
  @override
  @JsonKey(ignore: true)
  _$$_FullContractStateCopyWith<_$_FullContractState> get copyWith =>
      throw _privateConstructorUsedError;
}
