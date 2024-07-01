// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_sign_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LedgerSignInput _$LedgerSignInputFromJson(Map<String, dynamic> json) {
  return _LedgerSignInput.fromJson(json);
}

/// @nodoc
mixin _$LedgerSignInput {
  PublicKey get publicKey => throw _privateConstructorUsedError;
  LedgerSignatureContext? get context => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LedgerSignInputCopyWith<LedgerSignInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerSignInputCopyWith<$Res> {
  factory $LedgerSignInputCopyWith(
          LedgerSignInput value, $Res Function(LedgerSignInput) then) =
      _$LedgerSignInputCopyWithImpl<$Res, LedgerSignInput>;
  @useResult
  $Res call({PublicKey publicKey, LedgerSignatureContext? context});

  $PublicKeyCopyWith<$Res> get publicKey;
  $LedgerSignatureContextCopyWith<$Res>? get context;
}

/// @nodoc
class _$LedgerSignInputCopyWithImpl<$Res, $Val extends LedgerSignInput>
    implements $LedgerSignInputCopyWith<$Res> {
  _$LedgerSignInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? context = freezed,
  }) {
    return _then(_value.copyWith(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as LedgerSignatureContext?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $LedgerSignatureContextCopyWith<$Res>? get context {
    if (_value.context == null) {
      return null;
    }

    return $LedgerSignatureContextCopyWith<$Res>(_value.context!, (value) {
      return _then(_value.copyWith(context: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LedgerSignInputImplCopyWith<$Res>
    implements $LedgerSignInputCopyWith<$Res> {
  factory _$$LedgerSignInputImplCopyWith(_$LedgerSignInputImpl value,
          $Res Function(_$LedgerSignInputImpl) then) =
      __$$LedgerSignInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PublicKey publicKey, LedgerSignatureContext? context});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
  @override
  $LedgerSignatureContextCopyWith<$Res>? get context;
}

/// @nodoc
class __$$LedgerSignInputImplCopyWithImpl<$Res>
    extends _$LedgerSignInputCopyWithImpl<$Res, _$LedgerSignInputImpl>
    implements _$$LedgerSignInputImplCopyWith<$Res> {
  __$$LedgerSignInputImplCopyWithImpl(
      _$LedgerSignInputImpl _value, $Res Function(_$LedgerSignInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? context = freezed,
  }) {
    return _then(_$LedgerSignInputImpl(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as LedgerSignatureContext?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LedgerSignInputImpl implements _LedgerSignInput {
  const _$LedgerSignInputImpl({required this.publicKey, this.context});

  factory _$LedgerSignInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$LedgerSignInputImplFromJson(json);

  @override
  final PublicKey publicKey;
  @override
  final LedgerSignatureContext? context;

  @override
  String toString() {
    return 'LedgerSignInput(publicKey: $publicKey, context: $context)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerSignInputImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.context, context) || other.context == context));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, context);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerSignInputImplCopyWith<_$LedgerSignInputImpl> get copyWith =>
      __$$LedgerSignInputImplCopyWithImpl<_$LedgerSignInputImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LedgerSignInputImplToJson(
      this,
    );
  }
}

abstract class _LedgerSignInput implements LedgerSignInput {
  const factory _LedgerSignInput(
      {required final PublicKey publicKey,
      final LedgerSignatureContext? context}) = _$LedgerSignInputImpl;

  factory _LedgerSignInput.fromJson(Map<String, dynamic> json) =
      _$LedgerSignInputImpl.fromJson;

  @override
  PublicKey get publicKey;
  @override
  LedgerSignatureContext? get context;
  @override
  @JsonKey(ignore: true)
  _$$LedgerSignInputImplCopyWith<_$LedgerSignInputImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
