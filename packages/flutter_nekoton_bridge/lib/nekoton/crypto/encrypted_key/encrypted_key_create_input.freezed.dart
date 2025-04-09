// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_create_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedKeyCreateInput {
  String? get name;
  String get phrase;
  @mnemonicJsonConverter
  MnemonicType get mnemonicType;
  Password get password;

  /// Create a copy of EncryptedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EncryptedKeyCreateInputCopyWith<EncryptedKeyCreateInput> get copyWith =>
      _$EncryptedKeyCreateInputCopyWithImpl<EncryptedKeyCreateInput>(
          this as EncryptedKeyCreateInput, _$identity);

  /// Serializes this EncryptedKeyCreateInput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EncryptedKeyCreateInput &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.mnemonicType, mnemonicType) ||
                other.mnemonicType == mnemonicType) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phrase, mnemonicType, password);

  @override
  String toString() {
    return 'EncryptedKeyCreateInput(name: $name, phrase: $phrase, mnemonicType: $mnemonicType, password: $password)';
  }
}

/// @nodoc
abstract mixin class $EncryptedKeyCreateInputCopyWith<$Res> {
  factory $EncryptedKeyCreateInputCopyWith(EncryptedKeyCreateInput value,
          $Res Function(EncryptedKeyCreateInput) _then) =
      _$EncryptedKeyCreateInputCopyWithImpl;
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
class _$EncryptedKeyCreateInputCopyWithImpl<$Res>
    implements $EncryptedKeyCreateInputCopyWith<$Res> {
  _$EncryptedKeyCreateInputCopyWithImpl(this._self, this._then);

  final EncryptedKeyCreateInput _self;
  final $Res Function(EncryptedKeyCreateInput) _then;

  /// Create a copy of EncryptedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? phrase = null,
    Object? mnemonicType = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: null == phrase
          ? _self.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicType: null == mnemonicType
          ? _self.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of EncryptedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MnemonicTypeCopyWith<$Res> get mnemonicType {
    return $MnemonicTypeCopyWith<$Res>(_self.mnemonicType, (value) {
      return _then(_self.copyWith(mnemonicType: value));
    });
  }

  /// Create a copy of EncryptedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_self.password, (value) {
      return _then(_self.copyWith(password: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _EncryptedKeyCreateInput implements EncryptedKeyCreateInput {
  _EncryptedKeyCreateInput(
      {this.name,
      required this.phrase,
      @mnemonicJsonConverter required this.mnemonicType,
      required this.password});
  factory _EncryptedKeyCreateInput.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyCreateInputFromJson(json);

  @override
  final String? name;
  @override
  final String phrase;
  @override
  @mnemonicJsonConverter
  final MnemonicType mnemonicType;
  @override
  final Password password;

  /// Create a copy of EncryptedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EncryptedKeyCreateInputCopyWith<_EncryptedKeyCreateInput> get copyWith =>
      __$EncryptedKeyCreateInputCopyWithImpl<_EncryptedKeyCreateInput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EncryptedKeyCreateInputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptedKeyCreateInput &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.mnemonicType, mnemonicType) ||
                other.mnemonicType == mnemonicType) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, phrase, mnemonicType, password);

  @override
  String toString() {
    return 'EncryptedKeyCreateInput(name: $name, phrase: $phrase, mnemonicType: $mnemonicType, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$EncryptedKeyCreateInputCopyWith<$Res>
    implements $EncryptedKeyCreateInputCopyWith<$Res> {
  factory _$EncryptedKeyCreateInputCopyWith(_EncryptedKeyCreateInput value,
          $Res Function(_EncryptedKeyCreateInput) _then) =
      __$EncryptedKeyCreateInputCopyWithImpl;
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
class __$EncryptedKeyCreateInputCopyWithImpl<$Res>
    implements _$EncryptedKeyCreateInputCopyWith<$Res> {
  __$EncryptedKeyCreateInputCopyWithImpl(this._self, this._then);

  final _EncryptedKeyCreateInput _self;
  final $Res Function(_EncryptedKeyCreateInput) _then;

  /// Create a copy of EncryptedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? phrase = null,
    Object? mnemonicType = null,
    Object? password = null,
  }) {
    return _then(_EncryptedKeyCreateInput(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: null == phrase
          ? _self.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      mnemonicType: null == mnemonicType
          ? _self.mnemonicType
          : mnemonicType // ignore: cast_nullable_to_non_nullable
              as MnemonicType,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of EncryptedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MnemonicTypeCopyWith<$Res> get mnemonicType {
    return $MnemonicTypeCopyWith<$Res>(_self.mnemonicType, (value) {
      return _then(_self.copyWith(mnemonicType: value));
    });
  }

  /// Create a copy of EncryptedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_self.password, (value) {
      return _then(_self.copyWith(password: value));
    });
  }
}

// dart format on
