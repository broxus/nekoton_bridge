// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_create_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EncryptedKeyCreateInput _$EncryptedKeyCreateInputFromJson(
    Map<String, dynamic> json) {
  return _EncryptedKeyCreateInput.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyCreateInput {
  String? get name => throw _privateConstructorUsedError;
  String get phrase => throw _privateConstructorUsedError;
  @mnemonicJsonConverter
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
      _$EncryptedKeyCreateInputCopyWithImpl<$Res, EncryptedKeyCreateInput>;
  @useResult
  $Res call(
      {String? name,
      String phrase,
      @mnemonicJsonConverter MnemonicType mnemonicType,
      Password password});

  $MnemonicTypeCopyWith<$Res> get mnemonicType;
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$EncryptedKeyCreateInputCopyWithImpl<$Res,
        $Val extends EncryptedKeyCreateInput>
    implements $EncryptedKeyCreateInputCopyWith<$Res> {
  _$EncryptedKeyCreateInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phrase = null,
    Object? mnemonicType = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicType: null == mnemonicType
          ? _value.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $MnemonicTypeCopyWith<$Res> get mnemonicType {
    return $MnemonicTypeCopyWith<$Res>(_value.mnemonicType, (value) {
      return _then(_value.copyWith(mnemonicType: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EncryptedKeyCreateInputImplCopyWith<$Res>
    implements $EncryptedKeyCreateInputCopyWith<$Res> {
  factory _$$EncryptedKeyCreateInputImplCopyWith(
          _$EncryptedKeyCreateInputImpl value,
          $Res Function(_$EncryptedKeyCreateInputImpl) then) =
      __$$EncryptedKeyCreateInputImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String? name,
      String phrase,
      @mnemonicJsonConverter MnemonicType mnemonicType,
      Password password});

  @override
  $MnemonicTypeCopyWith<$Res> get mnemonicType;
  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$EncryptedKeyCreateInputImplCopyWithImpl<$Res>
    extends _$EncryptedKeyCreateInputCopyWithImpl<$Res,
        _$EncryptedKeyCreateInputImpl>
    implements _$$EncryptedKeyCreateInputImplCopyWith<$Res> {
  __$$EncryptedKeyCreateInputImplCopyWithImpl(
      _$EncryptedKeyCreateInputImpl _value,
      $Res Function(_$EncryptedKeyCreateInputImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phrase = null,
    Object? mnemonicType = null,
    Object? password = null,
  }) {
    return _then(_$EncryptedKeyCreateInputImpl(
      name: freezed == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicType: null == mnemonicType
          ? _value.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$EncryptedKeyCreateInputImpl implements _EncryptedKeyCreateInput {
  _$EncryptedKeyCreateInputImpl(
      {this.name,
      required this.phrase,
      @mnemonicJsonConverter required this.mnemonicType,
      required this.password});

  factory _$EncryptedKeyCreateInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$EncryptedKeyCreateInputImplFromJson(json);

  @override
  final String? name;
  @override
  final String phrase;
  @override
  @mnemonicJsonConverter
  final MnemonicType mnemonicType;
  @override
  final Password password;

  @override
  String toString() {
    return 'EncryptedKeyCreateInput(name: $name, phrase: $phrase, mnemonicType: $mnemonicType, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptedKeyCreateInputImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.mnemonicType, mnemonicType) ||
                other.mnemonicType == mnemonicType) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phrase, mnemonicType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptedKeyCreateInputImplCopyWith<_$EncryptedKeyCreateInputImpl>
      get copyWith => __$$EncryptedKeyCreateInputImplCopyWithImpl<
          _$EncryptedKeyCreateInputImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptedKeyCreateInputImplToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyCreateInput implements EncryptedKeyCreateInput {
  factory _EncryptedKeyCreateInput(
      {final String? name,
      required final String phrase,
      @mnemonicJsonConverter required final MnemonicType mnemonicType,
      required final Password password}) = _$EncryptedKeyCreateInputImpl;

  factory _EncryptedKeyCreateInput.fromJson(Map<String, dynamic> json) =
      _$EncryptedKeyCreateInputImpl.fromJson;

  @override
  String? get name;
  @override
  String get phrase;
  @override
  @mnemonicJsonConverter
  MnemonicType get mnemonicType;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$EncryptedKeyCreateInputImplCopyWith<_$EncryptedKeyCreateInputImpl>
      get copyWith => throw _privateConstructorUsedError;
}
