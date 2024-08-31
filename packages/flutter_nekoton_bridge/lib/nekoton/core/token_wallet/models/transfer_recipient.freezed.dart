// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transfer_recipient.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TransferRecipient _$TransferRecipientFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'ownerWallet':
      return _OwnerWallet.fromJson(json);
    case 'tokenWallet':
      return _TokenWallet.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'TransferRecipient',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TransferRecipient {
  Address get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address data) ownerWallet,
    required TResult Function(Address data) tokenWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address data)? ownerWallet,
    TResult? Function(Address data)? tokenWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address data)? ownerWallet,
    TResult Function(Address data)? tokenWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnerWallet value) ownerWallet,
    required TResult Function(_TokenWallet value) tokenWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnerWallet value)? ownerWallet,
    TResult? Function(_TokenWallet value)? tokenWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnerWallet value)? ownerWallet,
    TResult Function(_TokenWallet value)? tokenWallet,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this TransferRecipient to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $TransferRecipientCopyWith<TransferRecipient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferRecipientCopyWith<$Res> {
  factory $TransferRecipientCopyWith(
          TransferRecipient value, $Res Function(TransferRecipient) then) =
      _$TransferRecipientCopyWithImpl<$Res, TransferRecipient>;
  @useResult
  $Res call({Address data});

  $AddressCopyWith<$Res> get data;
}

/// @nodoc
class _$TransferRecipientCopyWithImpl<$Res, $Val extends TransferRecipient>
    implements $TransferRecipientCopyWith<$Res> {
  _$TransferRecipientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get data {
    return $AddressCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OwnerWalletImplCopyWith<$Res>
    implements $TransferRecipientCopyWith<$Res> {
  factory _$$OwnerWalletImplCopyWith(
          _$OwnerWalletImpl value, $Res Function(_$OwnerWalletImpl) then) =
      __$$OwnerWalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address data});

  @override
  $AddressCopyWith<$Res> get data;
}

/// @nodoc
class __$$OwnerWalletImplCopyWithImpl<$Res>
    extends _$TransferRecipientCopyWithImpl<$Res, _$OwnerWalletImpl>
    implements _$$OwnerWalletImplCopyWith<$Res> {
  __$$OwnerWalletImplCopyWithImpl(
      _$OwnerWalletImpl _value, $Res Function(_$OwnerWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$OwnerWalletImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OwnerWalletImpl implements _OwnerWallet {
  const _$OwnerWalletImpl(this.data, {final String? $type})
      : $type = $type ?? 'ownerWallet';

  factory _$OwnerWalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$OwnerWalletImplFromJson(json);

  @override
  final Address data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransferRecipient.ownerWallet(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OwnerWalletImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OwnerWalletImplCopyWith<_$OwnerWalletImpl> get copyWith =>
      __$$OwnerWalletImplCopyWithImpl<_$OwnerWalletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address data) ownerWallet,
    required TResult Function(Address data) tokenWallet,
  }) {
    return ownerWallet(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address data)? ownerWallet,
    TResult? Function(Address data)? tokenWallet,
  }) {
    return ownerWallet?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address data)? ownerWallet,
    TResult Function(Address data)? tokenWallet,
    required TResult orElse(),
  }) {
    if (ownerWallet != null) {
      return ownerWallet(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnerWallet value) ownerWallet,
    required TResult Function(_TokenWallet value) tokenWallet,
  }) {
    return ownerWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnerWallet value)? ownerWallet,
    TResult? Function(_TokenWallet value)? tokenWallet,
  }) {
    return ownerWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnerWallet value)? ownerWallet,
    TResult Function(_TokenWallet value)? tokenWallet,
    required TResult orElse(),
  }) {
    if (ownerWallet != null) {
      return ownerWallet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$OwnerWalletImplToJson(
      this,
    );
  }
}

abstract class _OwnerWallet implements TransferRecipient {
  const factory _OwnerWallet(final Address data) = _$OwnerWalletImpl;

  factory _OwnerWallet.fromJson(Map<String, dynamic> json) =
      _$OwnerWalletImpl.fromJson;

  @override
  Address get data;

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OwnerWalletImplCopyWith<_$OwnerWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenWalletImplCopyWith<$Res>
    implements $TransferRecipientCopyWith<$Res> {
  factory _$$TokenWalletImplCopyWith(
          _$TokenWalletImpl value, $Res Function(_$TokenWalletImpl) then) =
      __$$TokenWalletImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address data});

  @override
  $AddressCopyWith<$Res> get data;
}

/// @nodoc
class __$$TokenWalletImplCopyWithImpl<$Res>
    extends _$TransferRecipientCopyWithImpl<$Res, _$TokenWalletImpl>
    implements _$$TokenWalletImplCopyWith<$Res> {
  __$$TokenWalletImplCopyWithImpl(
      _$TokenWalletImpl _value, $Res Function(_$TokenWalletImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TokenWalletImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TokenWalletImpl implements _TokenWallet {
  const _$TokenWalletImpl(this.data, {final String? $type})
      : $type = $type ?? 'tokenWallet';

  factory _$TokenWalletImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenWalletImplFromJson(json);

  @override
  final Address data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransferRecipient.tokenWallet(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenWalletImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenWalletImplCopyWith<_$TokenWalletImpl> get copyWith =>
      __$$TokenWalletImplCopyWithImpl<_$TokenWalletImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(Address data) ownerWallet,
    required TResult Function(Address data) tokenWallet,
  }) {
    return tokenWallet(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(Address data)? ownerWallet,
    TResult? Function(Address data)? tokenWallet,
  }) {
    return tokenWallet?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(Address data)? ownerWallet,
    TResult Function(Address data)? tokenWallet,
    required TResult orElse(),
  }) {
    if (tokenWallet != null) {
      return tokenWallet(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_OwnerWallet value) ownerWallet,
    required TResult Function(_TokenWallet value) tokenWallet,
  }) {
    return tokenWallet(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_OwnerWallet value)? ownerWallet,
    TResult? Function(_TokenWallet value)? tokenWallet,
  }) {
    return tokenWallet?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_OwnerWallet value)? ownerWallet,
    TResult Function(_TokenWallet value)? tokenWallet,
    required TResult orElse(),
  }) {
    if (tokenWallet != null) {
      return tokenWallet(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$TokenWalletImplToJson(
      this,
    );
  }
}

abstract class _TokenWallet implements TransferRecipient {
  const factory _TokenWallet(final Address data) = _$TokenWalletImpl;

  factory _TokenWallet.fromJson(Map<String, dynamic> json) =
      _$TokenWalletImpl.fromJson;

  @override
  Address get data;

  /// Create a copy of TransferRecipient
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TokenWalletImplCopyWith<_$TokenWalletImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
