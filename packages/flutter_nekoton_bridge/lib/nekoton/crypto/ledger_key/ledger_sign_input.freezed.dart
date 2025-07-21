// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_sign_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LedgerSignInput {
  WalletType get wallet;
  PublicKey get publicKey;
  LedgerSignatureContext? get context;

  /// Create a copy of LedgerSignInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerSignInputCopyWith<LedgerSignInput> get copyWith =>
      _$LedgerSignInputCopyWithImpl<LedgerSignInput>(
          this as LedgerSignInput, _$identity);

  /// Serializes this LedgerSignInput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerSignInput &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.context, context) || other.context == context));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, wallet, publicKey, context);

  @override
  String toString() {
    return 'LedgerSignInput(wallet: $wallet, publicKey: $publicKey, context: $context)';
  }
}

/// @nodoc
abstract mixin class $LedgerSignInputCopyWith<$Res> {
  factory $LedgerSignInputCopyWith(
          LedgerSignInput value, $Res Function(LedgerSignInput) _then) =
      _$LedgerSignInputCopyWithImpl;
  @useResult
  $Res call(
      {WalletType wallet,
      PublicKey publicKey,
      LedgerSignatureContext? context});

  $WalletTypeCopyWith<$Res> get wallet;
  $PublicKeyCopyWith<$Res> get publicKey;
  $LedgerSignatureContextCopyWith<$Res>? get context;
}

/// @nodoc
class _$LedgerSignInputCopyWithImpl<$Res>
    implements $LedgerSignInputCopyWith<$Res> {
  _$LedgerSignInputCopyWithImpl(this._self, this._then);

  final LedgerSignInput _self;
  final $Res Function(LedgerSignInput) _then;

  /// Create a copy of LedgerSignInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? wallet = null,
    Object? publicKey = null,
    Object? context = freezed,
  }) {
    return _then(_self.copyWith(
      wallet: null == wallet
          ? _self.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletType,
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      context: freezed == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as LedgerSignatureContext?,
    ));
  }

  /// Create a copy of LedgerSignInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletTypeCopyWith<$Res> get wallet {
    return $WalletTypeCopyWith<$Res>(_self.wallet, (value) {
      return _then(_self.copyWith(wallet: value));
    });
  }

  /// Create a copy of LedgerSignInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of LedgerSignInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSignatureContextCopyWith<$Res>? get context {
    if (_self.context == null) {
      return null;
    }

    return $LedgerSignatureContextCopyWith<$Res>(_self.context!, (value) {
      return _then(_self.copyWith(context: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _LedgerSignInput implements LedgerSignInput {
  const _LedgerSignInput(
      {required this.wallet, required this.publicKey, this.context});
  factory _LedgerSignInput.fromJson(Map<String, dynamic> json) =>
      _$LedgerSignInputFromJson(json);

  @override
  final WalletType wallet;
  @override
  final PublicKey publicKey;
  @override
  final LedgerSignatureContext? context;

  /// Create a copy of LedgerSignInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerSignInputCopyWith<_LedgerSignInput> get copyWith =>
      __$LedgerSignInputCopyWithImpl<_LedgerSignInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LedgerSignInputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerSignInput &&
            (identical(other.wallet, wallet) || other.wallet == wallet) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.context, context) || other.context == context));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, wallet, publicKey, context);

  @override
  String toString() {
    return 'LedgerSignInput(wallet: $wallet, publicKey: $publicKey, context: $context)';
  }
}

/// @nodoc
abstract mixin class _$LedgerSignInputCopyWith<$Res>
    implements $LedgerSignInputCopyWith<$Res> {
  factory _$LedgerSignInputCopyWith(
          _LedgerSignInput value, $Res Function(_LedgerSignInput) _then) =
      __$LedgerSignInputCopyWithImpl;
  @override
  @useResult
  $Res call(
      {WalletType wallet,
      PublicKey publicKey,
      LedgerSignatureContext? context});

  @override
  $WalletTypeCopyWith<$Res> get wallet;
  @override
  $PublicKeyCopyWith<$Res> get publicKey;
  @override
  $LedgerSignatureContextCopyWith<$Res>? get context;
}

/// @nodoc
class __$LedgerSignInputCopyWithImpl<$Res>
    implements _$LedgerSignInputCopyWith<$Res> {
  __$LedgerSignInputCopyWithImpl(this._self, this._then);

  final _LedgerSignInput _self;
  final $Res Function(_LedgerSignInput) _then;

  /// Create a copy of LedgerSignInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? wallet = null,
    Object? publicKey = null,
    Object? context = freezed,
  }) {
    return _then(_LedgerSignInput(
      wallet: null == wallet
          ? _self.wallet
          : wallet // ignore: cast_nullable_to_non_nullable
              as WalletType,
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      context: freezed == context
          ? _self.context
          : context // ignore: cast_nullable_to_non_nullable
              as LedgerSignatureContext?,
    ));
  }

  /// Create a copy of LedgerSignInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletTypeCopyWith<$Res> get wallet {
    return $WalletTypeCopyWith<$Res>(_self.wallet, (value) {
      return _then(_self.copyWith(wallet: value));
    });
  }

  /// Create a copy of LedgerSignInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of LedgerSignInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $LedgerSignatureContextCopyWith<$Res>? get context {
    if (_self.context == null) {
      return null;
    }

    return $LedgerSignatureContextCopyWith<$Res>(_self.context!, (value) {
      return _then(_self.copyWith(context: value));
    });
  }
}

// dart format on
