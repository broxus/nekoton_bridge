// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'encrypted_key_update_params_rename.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EncryptedKeyUpdateParamsRename _$EncryptedKeyUpdateParamsRenameFromJson(
    Map<String, dynamic> json) {
  return _EncryptedKeyUpdateParamsRenameRename.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyUpdateParamsRename {
  String get publicKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EncryptedKeyUpdateParamsRenameCopyWith<EncryptedKeyUpdateParamsRename>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  factory $EncryptedKeyUpdateParamsRenameCopyWith(
          EncryptedKeyUpdateParamsRename value,
          $Res Function(EncryptedKeyUpdateParamsRename) then) =
      _$EncryptedKeyUpdateParamsRenameCopyWithImpl<$Res>;
  $Res call({String publicKey, String name});
}

/// @nodoc
class _$EncryptedKeyUpdateParamsRenameCopyWithImpl<$Res>
    implements $EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  _$EncryptedKeyUpdateParamsRenameCopyWithImpl(this._value, this._then);

  final EncryptedKeyUpdateParamsRename _value;
  // ignore: unused_field
  final $Res Function(EncryptedKeyUpdateParamsRename) _then;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_EncryptedKeyUpdateParamsRenameRenameCopyWith<$Res>
    implements $EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  factory _$$_EncryptedKeyUpdateParamsRenameRenameCopyWith(
          _$_EncryptedKeyUpdateParamsRenameRename value,
          $Res Function(_$_EncryptedKeyUpdateParamsRenameRename) then) =
      __$$_EncryptedKeyUpdateParamsRenameRenameCopyWithImpl<$Res>;
  @override
  $Res call({String publicKey, String name});
}

/// @nodoc
class __$$_EncryptedKeyUpdateParamsRenameRenameCopyWithImpl<$Res>
    extends _$EncryptedKeyUpdateParamsRenameCopyWithImpl<$Res>
    implements _$$_EncryptedKeyUpdateParamsRenameRenameCopyWith<$Res> {
  __$$_EncryptedKeyUpdateParamsRenameRenameCopyWithImpl(
      _$_EncryptedKeyUpdateParamsRenameRename _value,
      $Res Function(_$_EncryptedKeyUpdateParamsRenameRename) _then)
      : super(
            _value, (v) => _then(v as _$_EncryptedKeyUpdateParamsRenameRename));

  @override
  _$_EncryptedKeyUpdateParamsRenameRename get _value =>
      super._value as _$_EncryptedKeyUpdateParamsRenameRename;

  @override
  $Res call({
    Object? publicKey = freezed,
    Object? name = freezed,
  }) {
    return _then(_$_EncryptedKeyUpdateParamsRenameRename(
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
class _$_EncryptedKeyUpdateParamsRenameRename
    implements _EncryptedKeyUpdateParamsRenameRename {
  const _$_EncryptedKeyUpdateParamsRenameRename(
      {required this.publicKey, required this.name});

  factory _$_EncryptedKeyUpdateParamsRenameRename.fromJson(
          Map<String, dynamic> json) =>
      _$$_EncryptedKeyUpdateParamsRenameRenameFromJson(json);

  @override
  final String publicKey;
  @override
  final String name;

  @override
  String toString() {
    return 'EncryptedKeyUpdateParamsRename(publicKey: $publicKey, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EncryptedKeyUpdateParamsRenameRename &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$$_EncryptedKeyUpdateParamsRenameRenameCopyWith<
          _$_EncryptedKeyUpdateParamsRenameRename>
      get copyWith => __$$_EncryptedKeyUpdateParamsRenameRenameCopyWithImpl<
          _$_EncryptedKeyUpdateParamsRenameRename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EncryptedKeyUpdateParamsRenameRenameToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyUpdateParamsRenameRename
    implements EncryptedKeyUpdateParamsRename {
  const factory _EncryptedKeyUpdateParamsRenameRename(
      {required final String publicKey,
      required final String name}) = _$_EncryptedKeyUpdateParamsRenameRename;

  factory _EncryptedKeyUpdateParamsRenameRename.fromJson(
          Map<String, dynamic> json) =
      _$_EncryptedKeyUpdateParamsRenameRename.fromJson;

  @override
  String get publicKey;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_EncryptedKeyUpdateParamsRenameRenameCopyWith<
          _$_EncryptedKeyUpdateParamsRenameRename>
      get copyWith => throw _privateConstructorUsedError;
}
