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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeyCreateInputImport _$DerivedKeyCreateInputImportFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyCreateInputImportImport.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyCreateInputImport {
  String? get keyName => throw _privateConstructorUsedError;
  String get phrase => throw _privateConstructorUsedError;
  Password get password => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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

  @override
  @pragma('vm:prefer-inline')
  $PasswordCopyWith<$Res> get password {
    return $PasswordCopyWith<$Res>(_value.password, (value) {
      return _then(_value.copyWith(password: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DerivedKeyCreateInputImportImportCopyWith<$Res>
    implements $DerivedKeyCreateInputImportCopyWith<$Res> {
  factory _$$_DerivedKeyCreateInputImportImportCopyWith(
          _$_DerivedKeyCreateInputImportImport value,
          $Res Function(_$_DerivedKeyCreateInputImportImport) then) =
      __$$_DerivedKeyCreateInputImportImportCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? keyName, String phrase, Password password});

  @override
  $PasswordCopyWith<$Res> get password;
}

/// @nodoc
class __$$_DerivedKeyCreateInputImportImportCopyWithImpl<$Res>
    extends _$DerivedKeyCreateInputImportCopyWithImpl<$Res,
        _$_DerivedKeyCreateInputImportImport>
    implements _$$_DerivedKeyCreateInputImportImportCopyWith<$Res> {
  __$$_DerivedKeyCreateInputImportImportCopyWithImpl(
      _$_DerivedKeyCreateInputImportImport _value,
      $Res Function(_$_DerivedKeyCreateInputImportImport) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? keyName = freezed,
    Object? phrase = null,
    Object? password = null,
  }) {
    return _then(_$_DerivedKeyCreateInputImportImport(
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
class _$_DerivedKeyCreateInputImportImport
    implements _DerivedKeyCreateInputImportImport {
  const _$_DerivedKeyCreateInputImportImport(
      {this.keyName, required this.phrase, required this.password});

  factory _$_DerivedKeyCreateInputImportImport.fromJson(
          Map<String, dynamic> json) =>
      _$$_DerivedKeyCreateInputImportImportFromJson(json);

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
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeyCreateInputImportImport &&
            (identical(other.keyName, keyName) || other.keyName == keyName) &&
            (identical(other.phrase, phrase) || other.phrase == phrase) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, keyName, phrase, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DerivedKeyCreateInputImportImportCopyWith<
          _$_DerivedKeyCreateInputImportImport>
      get copyWith => __$$_DerivedKeyCreateInputImportImportCopyWithImpl<
          _$_DerivedKeyCreateInputImportImport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeyCreateInputImportImportToJson(
      this,
    );
  }
}

abstract class _DerivedKeyCreateInputImportImport
    implements DerivedKeyCreateInputImport {
  const factory _DerivedKeyCreateInputImportImport(
      {final String? keyName,
      required final String phrase,
      required final Password password}) = _$_DerivedKeyCreateInputImportImport;

  factory _DerivedKeyCreateInputImportImport.fromJson(
          Map<String, dynamic> json) =
      _$_DerivedKeyCreateInputImportImport.fromJson;

  @override
  String? get keyName;
  @override
  String get phrase;
  @override
  Password get password;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeyCreateInputImportImportCopyWith<
          _$_DerivedKeyCreateInputImportImport>
      get copyWith => throw _privateConstructorUsedError;
}
