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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LedgerSignInput _$LedgerSignInputFromJson(Map<String, dynamic> json) {
  return _LedgerSignInput.fromJson(json);
}

/// @nodoc
mixin _$LedgerSignInput {
  String get publicKey => throw _privateConstructorUsedError;
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
  $Res call({String publicKey, LedgerSignatureContext? context});

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
              as String,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as LedgerSignatureContext?,
    ) as $Val);
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
abstract class _$$_LedgerSignInputCopyWith<$Res>
    implements $LedgerSignInputCopyWith<$Res> {
  factory _$$_LedgerSignInputCopyWith(
          _$_LedgerSignInput value, $Res Function(_$_LedgerSignInput) then) =
      __$$_LedgerSignInputCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String publicKey, LedgerSignatureContext? context});

  @override
  $LedgerSignatureContextCopyWith<$Res>? get context;
}

/// @nodoc
class __$$_LedgerSignInputCopyWithImpl<$Res>
    extends _$LedgerSignInputCopyWithImpl<$Res, _$_LedgerSignInput>
    implements _$$_LedgerSignInputCopyWith<$Res> {
  __$$_LedgerSignInputCopyWithImpl(
      _$_LedgerSignInput _value, $Res Function(_$_LedgerSignInput) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? context = freezed,
  }) {
    return _then(_$_LedgerSignInput(
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      context: freezed == context
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as LedgerSignatureContext?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LedgerSignInput implements _LedgerSignInput {
  const _$_LedgerSignInput({required this.publicKey, this.context});

  factory _$_LedgerSignInput.fromJson(Map<String, dynamic> json) =>
      _$$_LedgerSignInputFromJson(json);

  @override
  final String publicKey;
  @override
  final LedgerSignatureContext? context;

  @override
  String toString() {
    return 'LedgerSignInput(publicKey: $publicKey, context: $context)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LedgerSignInput &&
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
  _$$_LedgerSignInputCopyWith<_$_LedgerSignInput> get copyWith =>
      __$$_LedgerSignInputCopyWithImpl<_$_LedgerSignInput>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LedgerSignInputToJson(
      this,
    );
  }
}

abstract class _LedgerSignInput implements LedgerSignInput {
  const factory _LedgerSignInput(
      {required final String publicKey,
      final LedgerSignatureContext? context}) = _$_LedgerSignInput;

  factory _LedgerSignInput.fromJson(Map<String, dynamic> json) =
      _$_LedgerSignInput.fromJson;

  @override
  String get publicKey;
  @override
  LedgerSignatureContext? get context;
  @override
  @JsonKey(ignore: true)
  _$$_LedgerSignInputCopyWith<_$_LedgerSignInput> get copyWith =>
      throw _privateConstructorUsedError;
}
