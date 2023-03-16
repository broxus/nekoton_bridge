// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$ContractStateCopyWithImpl<$Res>;
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
class _$ContractStateCopyWithImpl<$Res>
    implements $ContractStateCopyWith<$Res> {
  _$ContractStateCopyWithImpl(this._value, this._then);

  final ContractState _value;
  // ignore: unused_field
  final $Res Function(ContractState) _then;

  @override
  $Res call({
    Object? balance = freezed,
    Object? genTimings = freezed,
    Object? lastTransactionId = freezed,
    Object? isDeployed = freezed,
    Object? codeHash = freezed,
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
abstract class _$$_ContractStateCopyWith<$Res>
    implements $ContractStateCopyWith<$Res> {
  factory _$$_ContractStateCopyWith(
          _$_ContractState value, $Res Function(_$_ContractState) then) =
      __$$_ContractStateCopyWithImpl<$Res>;
  @override
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
    extends _$ContractStateCopyWithImpl<$Res>
    implements _$$_ContractStateCopyWith<$Res> {
  __$$_ContractStateCopyWithImpl(
      _$_ContractState _value, $Res Function(_$_ContractState) _then)
      : super(_value, (v) => _then(v as _$_ContractState));

  @override
  _$_ContractState get _value => super._value as _$_ContractState;

  @override
  $Res call({
    Object? balance = freezed,
    Object? genTimings = freezed,
    Object? lastTransactionId = freezed,
    Object? isDeployed = freezed,
    Object? codeHash = freezed,
  }) {
    return _then(_$_ContractState(
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
            const DeepCollectionEquality().equals(other.balance, balance) &&
            const DeepCollectionEquality()
                .equals(other.genTimings, genTimings) &&
            const DeepCollectionEquality()
                .equals(other.lastTransactionId, lastTransactionId) &&
            const DeepCollectionEquality()
                .equals(other.isDeployed, isDeployed) &&
            const DeepCollectionEquality().equals(other.codeHash, codeHash));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(balance),
      const DeepCollectionEquality().hash(genTimings),
      const DeepCollectionEquality().hash(lastTransactionId),
      const DeepCollectionEquality().hash(isDeployed),
      const DeepCollectionEquality().hash(codeHash));

  @JsonKey(ignore: true)
  @override
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
