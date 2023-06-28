// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_update_params_rename_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DerivedKeyUpdateParamsRenameKey _$DerivedKeyUpdateParamsRenameKeyFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyUpdateParamsRenameKeyRenameKey.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyUpdateParamsRenameKey {
  @publicKeyJsonConverter
  PublicKey get masterKey => throw _privateConstructorUsedError;
  @publicKeyJsonConverter
  PublicKey get publicKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeyUpdateParamsRenameKeyCopyWith<DerivedKeyUpdateParamsRenameKey>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  factory $DerivedKeyUpdateParamsRenameKeyCopyWith(
          DerivedKeyUpdateParamsRenameKey value,
          $Res Function(DerivedKeyUpdateParamsRenameKey) then) =
      _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res,
          DerivedKeyUpdateParamsRenameKey>;
  @useResult
  $Res call(
      {@publicKeyJsonConverter PublicKey masterKey,
      @publicKeyJsonConverter PublicKey publicKey,
      String name});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res,
        $Val extends DerivedKeyUpdateParamsRenameKey>
    implements $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_value.masterKey, (value) {
      return _then(_value.copyWith(masterKey: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWith<$Res>
    implements $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  factory _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWith(
          _$_DerivedKeyUpdateParamsRenameKeyRenameKey value,
          $Res Function(_$_DerivedKeyUpdateParamsRenameKeyRenameKey) then) =
      __$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@publicKeyJsonConverter PublicKey masterKey,
      @publicKeyJsonConverter PublicKey publicKey,
      String name});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWithImpl<$Res>
    extends _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res,
        _$_DerivedKeyUpdateParamsRenameKeyRenameKey>
    implements _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWith<$Res> {
  __$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWithImpl(
      _$_DerivedKeyUpdateParamsRenameKeyRenameKey _value,
      $Res Function(_$_DerivedKeyUpdateParamsRenameKeyRenameKey) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_$_DerivedKeyUpdateParamsRenameKeyRenameKey(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_DerivedKeyUpdateParamsRenameKeyRenameKey
    implements _DerivedKeyUpdateParamsRenameKeyRenameKey {
  const _$_DerivedKeyUpdateParamsRenameKeyRenameKey(
      {@publicKeyJsonConverter required this.masterKey,
      @publicKeyJsonConverter required this.publicKey,
      required this.name});

  factory _$_DerivedKeyUpdateParamsRenameKeyRenameKey.fromJson(
          Map<String, dynamic> json) =>
      _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyFromJson(json);

  @override
  @publicKeyJsonConverter
  final PublicKey masterKey;
  @override
  @publicKeyJsonConverter
  final PublicKey publicKey;
  @override
  final String name;

  @override
  String toString() {
    return 'DerivedKeyUpdateParamsRenameKey(masterKey: $masterKey, publicKey: $publicKey, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DerivedKeyUpdateParamsRenameKeyRenameKey &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, publicKey, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWith<
          _$_DerivedKeyUpdateParamsRenameKeyRenameKey>
      get copyWith => __$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWithImpl<
          _$_DerivedKeyUpdateParamsRenameKeyRenameKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyToJson(
      this,
    );
  }
}

abstract class _DerivedKeyUpdateParamsRenameKeyRenameKey
    implements DerivedKeyUpdateParamsRenameKey {
  const factory _DerivedKeyUpdateParamsRenameKeyRenameKey(
          {@publicKeyJsonConverter required final PublicKey masterKey,
          @publicKeyJsonConverter required final PublicKey publicKey,
          required final String name}) =
      _$_DerivedKeyUpdateParamsRenameKeyRenameKey;

  factory _DerivedKeyUpdateParamsRenameKeyRenameKey.fromJson(
          Map<String, dynamic> json) =
      _$_DerivedKeyUpdateParamsRenameKeyRenameKey.fromJson;

  @override
  @publicKeyJsonConverter
  PublicKey get masterKey;
  @override
  @publicKeyJsonConverter
  PublicKey get publicKey;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWith<
          _$_DerivedKeyUpdateParamsRenameKeyRenameKey>
      get copyWith => throw _privateConstructorUsedError;
}
