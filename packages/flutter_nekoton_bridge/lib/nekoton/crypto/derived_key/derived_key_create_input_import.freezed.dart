// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_create_input_import.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DerivedKeyCreateInputImport _$DerivedKeyCreateInputImportFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyCreateInputImportImport.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyCreateInputImport {
  String? get keyName => throw _privateConstructorUsedError;
  String get phrase => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  /// Serializes this DerivedKeyCreateInputImport to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DerivedKeyCreateInputImportCopyWith<DerivedKeyCreateInputImport>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyCreateInputImportCopyWith<$Res> {
  factory $DerivedKeyCreateInputImportCopyWith(
          DerivedKeyCreateInputImport value,
          $Res Function(DerivedKeyCreateInputImport) then) =
      _$DerivedKeyCreateInputImportCopyWithImpl<$Res,
          DerivedKeyCreateInputImport>;
  @useResult
  $Res call({String? keyName, String phrase, Password password});

  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class _$DerivedKeyCreateInputImportCopyWithImpl<$Res,
        $Val extends DerivedKeyCreateInputImport>
    implements $DerivedKeyCreateInputImportCopyWith<$Res> {
  _$DerivedKeyCreateInputImportCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyName = freezed,
    Object? phrase = null,
    Object? password = null,
  }) {
    return _then(_value.copyWith(
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ) as $Val);
  }

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$DerivedKeyCreateInputImportImportImplCopyWith<$Res>
    implements $DerivedKeyCreateInputImportCopyWith<$Res> {
  factory _$$DerivedKeyCreateInputImportImportImplCopyWith(
          _$DerivedKeyCreateInputImportImportImpl value,
          $Res Function(_$DerivedKeyCreateInputImportImportImpl) then) =
      __$$DerivedKeyCreateInputImportImportImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? keyName, String phrase, Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$DerivedKeyCreateInputImportImportImplCopyWithImpl<$Res>
    extends _$DerivedKeyCreateInputImportCopyWithImpl<$Res,
        _$DerivedKeyCreateInputImportImportImpl>
    implements _$$DerivedKeyCreateInputImportImportImplCopyWith<$Res> {
  __$$DerivedKeyCreateInputImportImportImplCopyWithImpl(
      _$DerivedKeyCreateInputImportImportImpl _value,
      $Res Function(_$DerivedKeyCreateInputImportImportImpl) _then)
      : super(_value, _then);

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyName = freezed,
    Object? phrase = null,
    Object? password = null,
  }) {
    return _then(_$DerivedKeyCreateInputImportImportImpl(
      keyName: freezed == keyName
          ? _value.keyName
          : keyName // ignore: cast_nullable_to_non_nullable
              as String?,
      phrase: null == phrase
          ? _value.phrase
          : phrase // ignore: cast_nullable_to_non_nullable
              as String,
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as Password,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$DerivedKeyCreateInputImportImportImpl
    implements _DerivedKeyCreateInputImportImport {
  const _$DerivedKeyCreateInputImportImportImpl(
      {this.keyName, required this.phrase, required this.password});

  factory _$DerivedKeyCreateInputImportImportImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DerivedKeyCreateInputImportImportImplFromJson(json);

  @override
  final String? keyName;
  @override
  final String phrase;
  @override
  final Password password;

  @override
  String toString() {
    return 'DerivedKeyCreateInputImport(keyName: $keyName, phrase: $phrase, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DerivedKeyCreateInputImportImportImpl &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, keyName, phrase, password);

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DerivedKeyCreateInputImportImportImplCopyWith<
          _$DerivedKeyCreateInputImportImportImpl>
      get copyWith => __$$DerivedKeyCreateInputImportImportImplCopyWithImpl<
          _$DerivedKeyCreateInputImportImportImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DerivedKeyCreateInputImportImportImplToJson(
      this,
    );
  }
}

abstract class _DerivedKeyCreateInputImportImport
    implements DerivedKeyCreateInputImport {
  const factory _DerivedKeyCreateInputImportImport(
          {final String? keyName,
          required final String phrase,
          required final Password password}) =
      _$DerivedKeyCreateInputImportImportImpl;

  factory _DerivedKeyCreateInputImportImport.fromJson(
          Map<String, dynamic> json) =
      _$DerivedKeyCreateInputImportImportImpl.fromJson;

  @override
  String? get keyName;
  @override
  String get phrase;
  @override
  Password get password;

  /// Create a copy of DerivedKeyCreateInputImport
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DerivedKeyCreateInputImportImportImplCopyWith<
          _$DerivedKeyCreateInputImportImportImpl>
      get copyWith => throw _privateConstructorUsedError;
}
