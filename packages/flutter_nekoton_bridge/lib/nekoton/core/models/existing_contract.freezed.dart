// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'existing_contract.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ExistingContract {
  String get account;
  GenTimings get timings;
  LastTransactionId get lastTransactionId;

  /// Create a copy of ExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExistingContractCopyWith<ExistingContract> get copyWith =>
      _$ExistingContractCopyWithImpl<ExistingContract>(
          this as ExistingContract, _$identity);

  /// Serializes this ExistingContract to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExistingContract &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.timings, timings) || other.timings == timings) &&
            (identical(other.lastTransactionId, lastTransactionId) ||
                other.lastTransactionId == lastTransactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, account, timings, lastTransactionId);

  @override
  String toString() {
    return 'ExistingContract(account: $account, timings: $timings, lastTransactionId: $lastTransactionId)';
  }
}

/// @nodoc
abstract mixin class $ExistingContractCopyWith<$Res> {
  factory $ExistingContractCopyWith(
          ExistingContract value, $Res Function(ExistingContract) _then) =
      _$ExistingContractCopyWithImpl;
  @useResult
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
  _$ExistingContractCopyWithImpl(this._self, this._then);

  final ExistingContract _self;
  final $Res Function(ExistingContract) _then;

  /// Create a copy of ExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? account = null,
    Object? timings = null,
    Object? lastTransactionId = null,
  }) {
    return _then(_self.copyWith(
      account: null == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      timings: null == timings
          ? _self.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
      lastTransactionId: null == lastTransactionId
          ? _self.lastTransactionId
          : lastTransactionId // ignore: cast_nullable_to_non_nullable
              as LastTransactionId,
    ));
  }

  /// Create a copy of ExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get timings {
    return $GenTimingsCopyWith<$Res>(_self.timings, (value) {
      return _then(_self.copyWith(timings: value));
    });
  }

  /// Create a copy of ExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastTransactionIdCopyWith<$Res> get lastTransactionId {
    return $LastTransactionIdCopyWith<$Res>(_self.lastTransactionId, (value) {
      return _then(_self.copyWith(lastTransactionId: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _ExistingContract implements ExistingContract {
  const _ExistingContract(
      {required this.account,
      required this.timings,
      required this.lastTransactionId});
  factory _ExistingContract.fromJson(Map<String, dynamic> json) =>
      _$ExistingContractFromJson(json);

  @override
  final String account;
  @override
  final GenTimings timings;
  @override
  final LastTransactionId lastTransactionId;

  /// Create a copy of ExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExistingContractCopyWith<_ExistingContract> get copyWith =>
      __$ExistingContractCopyWithImpl<_ExistingContract>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExistingContractToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ExistingContract &&
            (identical(other.account, account) || other.account == account) &&
            (identical(other.timings, timings) || other.timings == timings) &&
            (identical(other.lastTransactionId, lastTransactionId) ||
                other.lastTransactionId == lastTransactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, account, timings, lastTransactionId);

  @override
  String toString() {
    return 'ExistingContract(account: $account, timings: $timings, lastTransactionId: $lastTransactionId)';
  }
}

/// @nodoc
abstract mixin class _$ExistingContractCopyWith<$Res>
    implements $ExistingContractCopyWith<$Res> {
  factory _$ExistingContractCopyWith(
          _ExistingContract value, $Res Function(_ExistingContract) _then) =
      __$ExistingContractCopyWithImpl;
  @override
  @useResult
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
class __$ExistingContractCopyWithImpl<$Res>
    implements _$ExistingContractCopyWith<$Res> {
  __$ExistingContractCopyWithImpl(this._self, this._then);

  final _ExistingContract _self;
  final $Res Function(_ExistingContract) _then;

  /// Create a copy of ExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? account = null,
    Object? timings = null,
    Object? lastTransactionId = null,
  }) {
    return _then(_ExistingContract(
      account: null == account
          ? _self.account
          : account // ignore: cast_nullable_to_non_nullable
              as String,
      timings: null == timings
          ? _self.timings
          : timings // ignore: cast_nullable_to_non_nullable
              as GenTimings,
      lastTransactionId: null == lastTransactionId
          ? _self.lastTransactionId
          : lastTransactionId // ignore: cast_nullable_to_non_nullable
              as LastTransactionId,
    ));
  }

  /// Create a copy of ExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $GenTimingsCopyWith<$Res> get timings {
    return $GenTimingsCopyWith<$Res>(_self.timings, (value) {
      return _then(_self.copyWith(timings: value));
    });
  }

  /// Create a copy of ExistingContract
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LastTransactionIdCopyWith<$Res> get lastTransactionId {
    return $LastTransactionIdCopyWith<$Res>(_self.lastTransactionId, (value) {
      return _then(_self.copyWith(lastTransactionId: value));
    });
  }
}

// dart format on
