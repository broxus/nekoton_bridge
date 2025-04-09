// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_confirm_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MultisigConfirmTransaction {
  PublicKey get custodian;
  String get transactionId;

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultisigConfirmTransactionCopyWith<MultisigConfirmTransaction>
      get copyWith =>
          _$MultisigConfirmTransactionCopyWithImpl<MultisigConfirmTransaction>(
              this as MultisigConfirmTransaction, _$identity);

  /// Serializes this MultisigConfirmTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultisigConfirmTransaction &&
            (identical(other.custodian, custodian) ||
                other.custodian == custodian) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, custodian, transactionId);

  @override
  String toString() {
    return 'MultisigConfirmTransaction(custodian: $custodian, transactionId: $transactionId)';
  }
}

/// @nodoc
abstract mixin class $MultisigConfirmTransactionCopyWith<$Res> {
  factory $MultisigConfirmTransactionCopyWith(MultisigConfirmTransaction value,
          $Res Function(MultisigConfirmTransaction) _then) =
      _$MultisigConfirmTransactionCopyWithImpl;
  @useResult
  $Res call({PublicKey custodian, String transactionId});

  $PublicKeyCopyWith<$Res> get custodian;
}

/// @nodoc
class _$MultisigConfirmTransactionCopyWithImpl<$Res>
    implements $MultisigConfirmTransactionCopyWith<$Res> {
  _$MultisigConfirmTransactionCopyWithImpl(this._self, this._then);

  final MultisigConfirmTransaction _self;
  final $Res Function(MultisigConfirmTransaction) _then;

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? custodian = null,
    Object? transactionId = null,
  }) {
    return _then(_self.copyWith(
      custodian: null == custodian
          ? _self.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get custodian {
    return $PublicKeyCopyWith<$Res>(_self.custodian, (value) {
      return _then(_self.copyWith(custodian: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _MultisigConfirmTransaction implements MultisigConfirmTransaction {
  const _MultisigConfirmTransaction(
      {required this.custodian, required this.transactionId});
  factory _MultisigConfirmTransaction.fromJson(Map<String, dynamic> json) =>
      _$MultisigConfirmTransactionFromJson(json);

  @override
  final PublicKey custodian;
  @override
  final String transactionId;

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MultisigConfirmTransactionCopyWith<_MultisigConfirmTransaction>
      get copyWith => __$MultisigConfirmTransactionCopyWithImpl<
          _MultisigConfirmTransaction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultisigConfirmTransactionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MultisigConfirmTransaction &&
            (identical(other.custodian, custodian) ||
                other.custodian == custodian) &&
            (identical(other.transactionId, transactionId) ||
                other.transactionId == transactionId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, custodian, transactionId);

  @override
  String toString() {
    return 'MultisigConfirmTransaction(custodian: $custodian, transactionId: $transactionId)';
  }
}

/// @nodoc
abstract mixin class _$MultisigConfirmTransactionCopyWith<$Res>
    implements $MultisigConfirmTransactionCopyWith<$Res> {
  factory _$MultisigConfirmTransactionCopyWith(
          _MultisigConfirmTransaction value,
          $Res Function(_MultisigConfirmTransaction) _then) =
      __$MultisigConfirmTransactionCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey custodian, String transactionId});

  @override
  $PublicKeyCopyWith<$Res> get custodian;
}

/// @nodoc
class __$MultisigConfirmTransactionCopyWithImpl<$Res>
    implements _$MultisigConfirmTransactionCopyWith<$Res> {
  __$MultisigConfirmTransactionCopyWithImpl(this._self, this._then);

  final _MultisigConfirmTransaction _self;
  final $Res Function(_MultisigConfirmTransaction) _then;

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? custodian = null,
    Object? transactionId = null,
  }) {
    return _then(_MultisigConfirmTransaction(
      custodian: null == custodian
          ? _self.custodian
          : custodian // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      transactionId: null == transactionId
          ? _self.transactionId
          : transactionId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of MultisigConfirmTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get custodian {
    return $PublicKeyCopyWith<$Res>(_self.custodian, (value) {
      return _then(_self.copyWith(custodian: value));
    });
  }
}

// dart format on
