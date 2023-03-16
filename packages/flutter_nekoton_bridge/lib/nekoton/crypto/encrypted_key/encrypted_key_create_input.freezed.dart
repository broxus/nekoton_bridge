// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'encrypted_key_create_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EncryptedKeyCreateInput _$EncryptedKeyCreateInputFromJson(
    Map<String, dynamic> json) {
  return _EncryptedKeyCreateInput.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyCreateInput {
  String? get name => throw _privateConstructorUsedError;
  String get phrase => throw _privateConstructorUsedError;
  MnemonicType get mnemonicType => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptedKeyCreateInputCopyWith<EncryptedKeyCreateInput> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedKeyCreateInputCopyWith<$Res> {
  factory $EncryptedKeyCreateInputCopyWith(EncryptedKeyCreateInput value,
          $Res Function(EncryptedKeyCreateInput) then) =
      _$EncryptedKeyCreateInputCopyWithImpl<$Res>;
  $Res call(
      {String? name,
      String phrase,
      MnemonicType mnemonicType,
      Password password});

  $MnemonicTypeCopyWith<$Res> get mnemonicType;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$EncryptedKeyCreateInputCopyWithImpl<$Res>
    implements $EncryptedKeyCreateInputCopyWith<$Res> {
  _$EncryptedKeyCreateInputCopyWithImpl(this._value, this._then);

  final EncryptedKeyCreateInput _value;
  // ignore: unused_field
  final $Res Function(EncryptedKeyCreateInput) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? phrase = freezed,
    Object? mnemonicType = freezed,
    Object? password = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicType: mnemonicType == freezed
          ? _value.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  @override
  $MnemonicTypeCopyWith<$Res> get mnemonicType {
    return $MnemonicTypeCopyWith<$Res>(_value.mnemonicType, (value) {
      return _then(_value.copyWith(mnemonicType: value));
    });
  }

  @override
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value));
    });
  }
}

/// @nodoc
abstract class _$$_EncryptedKeyCreateInputCopyWith<$Res>
    implements $EncryptedKeyCreateInputCopyWith<$Res> {
  factory _$$_EncryptedKeyCreateInputCopyWith(_$_EncryptedKeyCreateInput value,
          $Res Function(_$_EncryptedKeyCreateInput) then) =
      __$$_EncryptedKeyCreateInputCopyWithImpl<$Res>;
  @override
  $Res call(
      {String? name,
      String phrase,
      MnemonicType mnemonicType,
      Password password});

  @override
  $MnemonicTypeCopyWith<$Res> get mnemonicType;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_EncryptedKeyCreateInputCopyWithImpl<$Res>
    extends _$EncryptedKeyCreateInputCopyWithImpl<$Res>
    implements _$$_EncryptedKeyCreateInputCopyWith<$Res> {
  __$$_EncryptedKeyCreateInputCopyWithImpl(_$_EncryptedKeyCreateInput _value,
      $Res Function(_$_EncryptedKeyCreateInput) _then)
      : super(_value, (v) => _then(v as _$_EncryptedKeyCreateInput));

  @override
  _$_EncryptedKeyCreateInput get _value =>
      super._value as _$_EncryptedKeyCreateInput;

  @override
  $Res call({
    Object? name = freezed,
    Object? phrase = freezed,
    Object? mnemonicType = freezed,
    Object? password = freezed,
  }) {
    return _then(_$_EncryptedKeyCreateInput(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: phrase == freezed
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicType: mnemonicType == freezed
          ? _value.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EncryptedKeyCreateInput implements _EncryptedKeyCreateInput {
  const _$_EncryptedKeyCreateInput(
      {this.name,
      required this.phrase,
      required this.mnemonicType,
      required this.password});

  factory _$_EncryptedKeyCreateInput.fromJson(Map<String, dynamic> json) =>
      _$$_EncryptedKeyCreateInputFromJson(json);

  @override
  final String? name;
  @override
  final String phrase;
  @override
  final MnemonicType mnemonicType;
  @override
  final Password password;

  @override
  String toString() {
    return 'EncryptedKeyCreateInput(name: $name, phrase: $phrase, mnemonicType: $mnemonicType, password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncryptedKeyCreateInput &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.phrase, phrase) &&
            const DeepCollectionEquality()
                .equals(other.mnemonicType, mnemonicType) &&
            const DeepCollectionEquality().equals(other.password, password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(phrase),
      const DeepCollectionEquality().hash(mnemonicType),
      const DeepCollectionEquality().hash(password));

  @JsonKey(ignore: true)
  @override
  _$$_EncryptedKeyCreateInputCopyWith<_$_EncryptedKeyCreateInput>
      get copyWith =>
          __$$_EncryptedKeyCreateInputCopyWithImpl<_$_EncryptedKeyCreateInput>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncryptedKeyCreateInputToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyCreateInput implements EncryptedKeyCreateInput {
  const factory _EncryptedKeyCreateInput(
      {final String? name,
      required final String phrase,
      required final MnemonicType mnemonicType,
      required final Password password}) = _$_EncryptedKeyCreateInput;

  factory _EncryptedKeyCreateInput.fromJson(Map<String, dynamic> json) =
      _$_EncryptedKeyCreateInput.fromJson;

  @override
  String? get name;
  @override
  String get phrase;
  @override
  MnemonicType get mnemonicType;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptedKeyCreateInputCopyWith<_$_EncryptedKeyCreateInput>
      get copyWith => throw _privateConstructorUsedError;
}
