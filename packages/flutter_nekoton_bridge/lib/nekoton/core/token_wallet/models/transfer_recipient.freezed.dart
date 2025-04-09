// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_recipient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
TransferRecipient _$TransferRecipientFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'ownerWallet':
      return TransferRecipientOwnerWallet.fromJson(json);
    case 'tokenWallet':
      return TransferRecipientTokenWallet.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'TransferRecipient',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TransferRecipient {
  Address get data;

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransferRecipientCopyWith<TransferRecipient> get copyWith =>
      _$TransferRecipientCopyWithImpl<TransferRecipient>(
          this as TransferRecipient, _$identity);

  /// Serializes this TransferRecipient to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransferRecipient &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TransferRecipient(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TransferRecipientCopyWith<$Res> {
  factory $TransferRecipientCopyWith(
          TransferRecipient value, $Res Function(TransferRecipient) _then) =
      _$TransferRecipientCopyWithImpl;
  @useResult
  $Res call({Address data});

  $AddressCopyWith<$Res> get data;
}

/// @nodoc
class _$TransferRecipientCopyWithImpl<$Res>
    implements $TransferRecipientCopyWith<$Res> {
  _$TransferRecipientCopyWithImpl(this._self, this._then);

  final TransferRecipient _self;
  final $Res Function(TransferRecipient) _then;

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get data {
    return $AddressCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TransferRecipientOwnerWallet implements TransferRecipient {
  const TransferRecipientOwnerWallet(this.data, {final String? $type})
      : $type = $type ?? 'ownerWallet';
  factory TransferRecipientOwnerWallet.fromJson(Map<String, dynamic> json) =>
      _$TransferRecipientOwnerWalletFromJson(json);

  @override
  final Address data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransferRecipientOwnerWalletCopyWith<TransferRecipientOwnerWallet>
      get copyWith => _$TransferRecipientOwnerWalletCopyWithImpl<
          TransferRecipientOwnerWallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransferRecipientOwnerWalletToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransferRecipientOwnerWallet &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TransferRecipient.ownerWallet(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TransferRecipientOwnerWalletCopyWith<$Res>
    implements $TransferRecipientCopyWith<$Res> {
  factory $TransferRecipientOwnerWalletCopyWith(
          TransferRecipientOwnerWallet value,
          $Res Function(TransferRecipientOwnerWallet) _then) =
      _$TransferRecipientOwnerWalletCopyWithImpl;
  @override
  @useResult
  $Res call({Address data});

  @override
  $AddressCopyWith<$Res> get data;
}

/// @nodoc
class _$TransferRecipientOwnerWalletCopyWithImpl<$Res>
    implements $TransferRecipientOwnerWalletCopyWith<$Res> {
  _$TransferRecipientOwnerWalletCopyWithImpl(this._self, this._then);

  final TransferRecipientOwnerWallet _self;
  final $Res Function(TransferRecipientOwnerWallet) _then;

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TransferRecipientOwnerWallet(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get data {
    return $AddressCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TransferRecipientTokenWallet implements TransferRecipient {
  const TransferRecipientTokenWallet(this.data, {final String? $type})
      : $type = $type ?? 'tokenWallet';
  factory TransferRecipientTokenWallet.fromJson(Map<String, dynamic> json) =>
      _$TransferRecipientTokenWalletFromJson(json);

  @override
  final Address data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransferRecipientTokenWalletCopyWith<TransferRecipientTokenWallet>
      get copyWith => _$TransferRecipientTokenWalletCopyWithImpl<
          TransferRecipientTokenWallet>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransferRecipientTokenWalletToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransferRecipientTokenWallet &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TransferRecipient.tokenWallet(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TransferRecipientTokenWalletCopyWith<$Res>
    implements $TransferRecipientCopyWith<$Res> {
  factory $TransferRecipientTokenWalletCopyWith(
          TransferRecipientTokenWallet value,
          $Res Function(TransferRecipientTokenWallet) _then) =
      _$TransferRecipientTokenWalletCopyWithImpl;
  @override
  @useResult
  $Res call({Address data});

  @override
  $AddressCopyWith<$Res> get data;
}

/// @nodoc
class _$TransferRecipientTokenWalletCopyWithImpl<$Res>
    implements $TransferRecipientTokenWalletCopyWith<$Res> {
  _$TransferRecipientTokenWalletCopyWithImpl(this._self, this._then);

  final TransferRecipientTokenWallet _self;
  final $Res Function(TransferRecipientTokenWallet) _then;

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TransferRecipientTokenWallet(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get data {
    return $AddressCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
