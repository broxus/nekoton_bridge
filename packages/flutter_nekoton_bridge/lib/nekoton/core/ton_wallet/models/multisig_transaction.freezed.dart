// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'multisig_transaction.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
MultisigTransaction _$MultisigTransactionFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'send':
      return MultisigTransactionSend.fromJson(json);
    case 'submit':
      return MultisigTransactionSubmit.fromJson(json);
    case 'confirm':
      return MultisigTransactionConfirm.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'MultisigTransaction',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$MultisigTransaction {
  Object get data;

  /// Serializes this MultisigTransaction to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultisigTransaction &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'MultisigTransaction(data: $data)';
  }
}

/// @nodoc
class $MultisigTransactionCopyWith<$Res> {
  $MultisigTransactionCopyWith(
      MultisigTransaction _, $Res Function(MultisigTransaction) __);
}

/// @nodoc
@JsonSerializable()
class MultisigTransactionSend implements MultisigTransaction {
  const MultisigTransactionSend(this.data, {final String? $type})
      : $type = $type ?? 'send';
  factory MultisigTransactionSend.fromJson(Map<String, dynamic> json) =>
      _$MultisigTransactionSendFromJson(json);

  @override
  final MultisigSendTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of MultisigTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultisigTransactionSendCopyWith<MultisigTransactionSend> get copyWith =>
      _$MultisigTransactionSendCopyWithImpl<MultisigTransactionSend>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultisigTransactionSendToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultisigTransactionSend &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'MultisigTransaction.send(data: $data)';
  }
}

/// @nodoc
abstract mixin class $MultisigTransactionSendCopyWith<$Res>
    implements $MultisigTransactionCopyWith<$Res> {
  factory $MultisigTransactionSendCopyWith(MultisigTransactionSend value,
          $Res Function(MultisigTransactionSend) _then) =
      _$MultisigTransactionSendCopyWithImpl;
  @useResult
  $Res call({MultisigSendTransaction data});

  $MultisigSendTransactionCopyWith<$Res> get data;
}

/// @nodoc
class _$MultisigTransactionSendCopyWithImpl<$Res>
    implements $MultisigTransactionSendCopyWith<$Res> {
  _$MultisigTransactionSendCopyWithImpl(this._self, this._then);

  final MultisigTransactionSend _self;
  final $Res Function(MultisigTransactionSend) _then;

  /// Create a copy of MultisigTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(MultisigTransactionSend(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MultisigSendTransaction,
    ));
  }

  /// Create a copy of MultisigTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MultisigSendTransactionCopyWith<$Res> get data {
    return $MultisigSendTransactionCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MultisigTransactionSubmit implements MultisigTransaction {
  const MultisigTransactionSubmit(this.data, {final String? $type})
      : $type = $type ?? 'submit';
  factory MultisigTransactionSubmit.fromJson(Map<String, dynamic> json) =>
      _$MultisigTransactionSubmitFromJson(json);

  @override
  final MultisigSubmitTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of MultisigTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultisigTransactionSubmitCopyWith<MultisigTransactionSubmit> get copyWith =>
      _$MultisigTransactionSubmitCopyWithImpl<MultisigTransactionSubmit>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultisigTransactionSubmitToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultisigTransactionSubmit &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'MultisigTransaction.submit(data: $data)';
  }
}

/// @nodoc
abstract mixin class $MultisigTransactionSubmitCopyWith<$Res>
    implements $MultisigTransactionCopyWith<$Res> {
  factory $MultisigTransactionSubmitCopyWith(MultisigTransactionSubmit value,
          $Res Function(MultisigTransactionSubmit) _then) =
      _$MultisigTransactionSubmitCopyWithImpl;
  @useResult
  $Res call({MultisigSubmitTransaction data});

  $MultisigSubmitTransactionCopyWith<$Res> get data;
}

/// @nodoc
class _$MultisigTransactionSubmitCopyWithImpl<$Res>
    implements $MultisigTransactionSubmitCopyWith<$Res> {
  _$MultisigTransactionSubmitCopyWithImpl(this._self, this._then);

  final MultisigTransactionSubmit _self;
  final $Res Function(MultisigTransactionSubmit) _then;

  /// Create a copy of MultisigTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(MultisigTransactionSubmit(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MultisigSubmitTransaction,
    ));
  }

  /// Create a copy of MultisigTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MultisigSubmitTransactionCopyWith<$Res> get data {
    return $MultisigSubmitTransactionCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class MultisigTransactionConfirm implements MultisigTransaction {
  const MultisigTransactionConfirm(this.data, {final String? $type})
      : $type = $type ?? 'confirm';
  factory MultisigTransactionConfirm.fromJson(Map<String, dynamic> json) =>
      _$MultisigTransactionConfirmFromJson(json);

  @override
  final MultisigConfirmTransaction data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of MultisigTransaction
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MultisigTransactionConfirmCopyWith<MultisigTransactionConfirm>
      get copyWith =>
          _$MultisigTransactionConfirmCopyWithImpl<MultisigTransactionConfirm>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MultisigTransactionConfirmToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MultisigTransactionConfirm &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'MultisigTransaction.confirm(data: $data)';
  }
}

/// @nodoc
abstract mixin class $MultisigTransactionConfirmCopyWith<$Res>
    implements $MultisigTransactionCopyWith<$Res> {
  factory $MultisigTransactionConfirmCopyWith(MultisigTransactionConfirm value,
          $Res Function(MultisigTransactionConfirm) _then) =
      _$MultisigTransactionConfirmCopyWithImpl;
  @useResult
  $Res call({MultisigConfirmTransaction data});

  $MultisigConfirmTransactionCopyWith<$Res> get data;
}

/// @nodoc
class _$MultisigTransactionConfirmCopyWithImpl<$Res>
    implements $MultisigTransactionConfirmCopyWith<$Res> {
  _$MultisigTransactionConfirmCopyWithImpl(this._self, this._then);

  final MultisigTransactionConfirm _self;
  final $Res Function(MultisigTransactionConfirm) _then;

  /// Create a copy of MultisigTransaction
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(MultisigTransactionConfirm(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as MultisigConfirmTransaction,
    ));
  }

  /// Create a copy of MultisigTransaction
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MultisigConfirmTransactionCopyWith<$Res> get data {
    return $MultisigConfirmTransactionCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
