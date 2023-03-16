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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  String get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) ownerWallet,
    required TResult Function(String data) tokenWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? ownerWallet,
    TResult? Function(String data)? tokenWallet,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? ownerWallet,
    TResult Function(String data)? tokenWallet,
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
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TransferRecipientCopyWith<TransferRecipient> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransferRecipientCopyWith<$Res> {
  factory $TransferRecipientCopyWith(
          TransferRecipient value, $Res Function(TransferRecipient) then) =
      _$TransferRecipientCopyWithImpl<$Res, TransferRecipient>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$TransferRecipientCopyWithImpl<$Res, $Val extends TransferRecipient>
    implements $TransferRecipientCopyWith<$Res> {
  _$TransferRecipientCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OwnerWalletCopyWith<$Res>
    implements $TransferRecipientCopyWith<$Res> {
  factory _$$_OwnerWalletCopyWith(
          _$_OwnerWallet value, $Res Function(_$_OwnerWallet) then) =
      __$$_OwnerWalletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$_OwnerWalletCopyWithImpl<$Res>
    extends _$TransferRecipientCopyWithImpl<$Res, _$_OwnerWallet>
    implements _$$_OwnerWalletCopyWith<$Res> {
  __$$_OwnerWalletCopyWithImpl(
      _$_OwnerWallet _value, $Res Function(_$_OwnerWallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_OwnerWallet(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OwnerWallet implements _OwnerWallet {
  const _$_OwnerWallet(this.data, {final String? $type})
      : $type = $type ?? 'ownerWallet';

  factory _$_OwnerWallet.fromJson(Map<String, dynamic> json) =>
      _$$_OwnerWalletFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransferRecipient.ownerWallet(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OwnerWallet &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OwnerWalletCopyWith<_$_OwnerWallet> get copyWith =>
      __$$_OwnerWalletCopyWithImpl<_$_OwnerWallet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) ownerWallet,
    required TResult Function(String data) tokenWallet,
  }) {
    return ownerWallet(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? ownerWallet,
    TResult? Function(String data)? tokenWallet,
  }) {
    return ownerWallet?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? ownerWallet,
    TResult Function(String data)? tokenWallet,
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
    return _$$_OwnerWalletToJson(
      this,
    );
  }
}

abstract class _OwnerWallet implements TransferRecipient {
  const factory _OwnerWallet(final String data) = _$_OwnerWallet;

  factory _OwnerWallet.fromJson(Map<String, dynamic> json) =
      _$_OwnerWallet.fromJson;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_OwnerWalletCopyWith<_$_OwnerWallet> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TokenWalletCopyWith<$Res>
    implements $TransferRecipientCopyWith<$Res> {
  factory _$$_TokenWalletCopyWith(
          _$_TokenWallet value, $Res Function(_$_TokenWallet) then) =
      __$$_TokenWalletCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$_TokenWalletCopyWithImpl<$Res>
    extends _$TransferRecipientCopyWithImpl<$Res, _$_TokenWallet>
    implements _$$_TokenWalletCopyWith<$Res> {
  __$$_TokenWalletCopyWithImpl(
      _$_TokenWallet _value, $Res Function(_$_TokenWallet) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_TokenWallet(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenWallet implements _TokenWallet {
  const _$_TokenWallet(this.data, {final String? $type})
      : $type = $type ?? 'tokenWallet';

  factory _$_TokenWallet.fromJson(Map<String, dynamic> json) =>
      _$$_TokenWalletFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransferRecipient.tokenWallet(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenWallet &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenWalletCopyWith<_$_TokenWallet> get copyWith =>
      __$$_TokenWalletCopyWithImpl<_$_TokenWallet>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) ownerWallet,
    required TResult Function(String data) tokenWallet,
  }) {
    return tokenWallet(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? ownerWallet,
    TResult? Function(String data)? tokenWallet,
  }) {
    return tokenWallet?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? ownerWallet,
    TResult Function(String data)? tokenWallet,
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
    return _$$_TokenWalletToJson(
      this,
    );
  }
}

abstract class _TokenWallet implements TransferRecipient {
  const factory _TokenWallet(final String data) = _$_TokenWallet;

  factory _TokenWallet.fromJson(Map<String, dynamic> json) =
      _$_TokenWallet.fromJson;

  @override
  String get data;
  @override
  @JsonKey(ignore: true)
  _$$_TokenWalletCopyWith<_$_TokenWallet> get copyWith =>
      throw _privateConstructorUsedError;
}
