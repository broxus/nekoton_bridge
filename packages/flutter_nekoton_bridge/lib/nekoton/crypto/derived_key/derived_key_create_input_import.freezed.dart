// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_create_input_import.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DerivedKeyCreateInputImport _$DerivedKeyCreateInputImportFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyCreateInputImportImport.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyCreateInputImport {
  String? get keyName;
  String get phrase;
  Password get password;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DerivedKeyCreateInputImportCopyWith<DerivedKeyCreateInputImport>
      get copyWith => _$DerivedKeyCreateInputImportCopyWithImpl<
              DerivedKeyCreateInputImport>(
          this as DerivedKeyCreateInputImport, _$identity);

  /// Serializes this DerivedKeyCreateInputImport to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyCreateInputImport &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keyName, phrase, password);

  @override
  String toString() {
    return 'DerivedKeyCreateInputImport(keyName: $keyName, phrase: $phrase, password: $password)';
  }
}

/// @nodoc
abstract mixin class $DerivedKeyCreateInputImportCopyWith<$Res> {
  factory $DerivedKeyCreateInputImportCopyWith(
          DerivedKeyCreateInputImport value,
          $Res Function(DerivedKeyCreateInputImport) _then) =
      _$DerivedKeyCreateInputImportCopyWithImpl;
  @useResult
  $Res call({String? keyName, String phrase, Password password});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyCreateInputImportCopyWithImpl<$Res>
    implements $DerivedKeyCreateInputImportCopyWith<$Res> {
  _$DerivedKeyCreateInputImportCopyWithImpl(this._self, this._then);

  final DerivedKeyCreateInputImport _self;
  final $Res Function(DerivedKeyCreateInputImport) _then;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyName = freezed,
    Object? phrase = null,
    Object? password = null,
  }) {
    return _then(_self.copyWith(
      keyName: freezed == keyName
          ? _self.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: null == phrase
          ? _self.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyCreateInputImport
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

@JsonSerializable(fieldRename: FieldRename.snake)
class _DerivedKeyCreateInputImportImport
    implements DerivedKeyCreateInputImport {
  const _DerivedKeyCreateInputImportImport(
      {this.keyName, required this.phrase, required this.password});
  factory _DerivedKeyCreateInputImportImport.fromJson(
          Map<String, dynamic> json) =>
      _$DerivedKeyCreateInputImportImportFromJson(json);

  @override
  final String? keyName;
  @override
  final String phrase;
  @override
  final Password password;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyCreateInputImportImportCopyWith<
          _DerivedKeyCreateInputImportImport>
      get copyWith => __$DerivedKeyCreateInputImportImportCopyWithImpl<
          _DerivedKeyCreateInputImportImport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyCreateInputImportImportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyCreateInputImportImport &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keyName, phrase, password);

  @override
  String toString() {
    return 'DerivedKeyCreateInputImport(keyName: $keyName, phrase: $phrase, password: $password)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyCreateInputImportImportCopyWith<$Res>
    implements $DerivedKeyCreateInputImportCopyWith<$Res> {
  factory _$DerivedKeyCreateInputImportImportCopyWith(
          _DerivedKeyCreateInputImportImport value,
          $Res Function(_DerivedKeyCreateInputImportImport) _then) =
      __$DerivedKeyCreateInputImportImportCopyWithImpl;
  @override
  @useResult
  $Res call({String? keyName, String phrase, Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$DerivedKeyCreateInputImportImportCopyWithImpl<$Res>
    implements _$DerivedKeyCreateInputImportImportCopyWith<$Res> {
  __$DerivedKeyCreateInputImportImportCopyWithImpl(this._self, this._then);

  final _DerivedKeyCreateInputImportImport _self;
  final $Res Function(_DerivedKeyCreateInputImportImport) _then;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? keyName = freezed,
    Object? phrase = null,
    Object? password = null,
  }) {
    return _then(_DerivedKeyCreateInputImportImport(
      keyName: freezed == keyName
          ? _self.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: null == phrase
          ? _self.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _self.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }

  /// Create a copy of DerivedKeyCreateInputImport
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
