// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
  String get masterKey => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;
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
      _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res>;
  $Res call({String masterKey, String publicKey, String name});
}

/// @nodoc
class _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res>
    implements $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl(this._value, this._then);

  final DerivedKeyUpdateParamsRenameKey _value;
  // ignore: unused_field
  final $Res Function(DerivedKeyUpdateParamsRenameKey) _then;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? publicKey = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
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
  $Res call({String masterKey, String publicKey, String name});
}

/// @nodoc
class __$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWithImpl<$Res>
    extends _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res>
    implements _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWith<$Res> {
  __$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWithImpl(
      _$_DerivedKeyUpdateParamsRenameKeyRenameKey _value,
      $Res Function(_$_DerivedKeyUpdateParamsRenameKeyRenameKey) _then)
      : super(_value,
            (v) => _then(v as _$_DerivedKeyUpdateParamsRenameKeyRenameKey));

  @override
  _$_DerivedKeyUpdateParamsRenameKeyRenameKey get _value =>
      super._value as _$_DerivedKeyUpdateParamsRenameKeyRenameKey;

  @override
  $Res call({
    Object? masterKey = freezed,
    Object? publicKey = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_DerivedKeyUpdateParamsRenameKeyRenameKey(
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
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
      {required this.masterKey, required this.publicKey, required this.name});

  factory _$_DerivedKeyUpdateParamsRenameKeyRenameKey.fromJson(
          Map<String, dynamic> json) =>
      _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyFromJson(json);

  @override
  final String masterKey;
  @override
  final String publicKey;
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
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(masterKey),
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
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
          {required final String masterKey,
          required final String publicKey,
          required final String name}) =
      _$_DerivedKeyUpdateParamsRenameKeyRenameKey;

  factory _DerivedKeyUpdateParamsRenameKeyRenameKey.fromJson(
          Map<String, dynamic> json) =
      _$_DerivedKeyUpdateParamsRenameKeyRenameKey.fromJson;

  @override
  String get masterKey;
  @override
  String get publicKey;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_DerivedKeyUpdateParamsRenameKeyRenameKeyCopyWith<
          _$_DerivedKeyUpdateParamsRenameKeyRenameKey>
      get copyWith => throw _privateConstructorUsedError;
}
