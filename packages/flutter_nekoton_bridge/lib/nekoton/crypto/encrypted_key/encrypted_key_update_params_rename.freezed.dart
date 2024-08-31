// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_update_params_rename.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

EncryptedKeyUpdateParamsRename _$EncryptedKeyUpdateParamsRenameFromJson(
    Map<String, dynamic> json) {
  return _EncryptedKeyUpdateParamsRenameRename.fromJson(json);
}

/// @nodoc
mixin _$EncryptedKeyUpdateParamsRename {
  PublicKey get publicKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  /// Serializes this EncryptedKeyUpdateParamsRename to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EncryptedKeyUpdateParamsRenameCopyWith<EncryptedKeyUpdateParamsRename>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  factory $EncryptedKeyUpdateParamsRenameCopyWith(
          EncryptedKeyUpdateParamsRename value,
          $Res Function(EncryptedKeyUpdateParamsRename) then) =
      _$EncryptedKeyUpdateParamsRenameCopyWithImpl<$Res,
          EncryptedKeyUpdateParamsRename>;
  @useResult
  $Res call({PublicKey publicKey, String name});

  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$EncryptedKeyUpdateParamsRenameCopyWithImpl<$Res,
        $Val extends EncryptedKeyUpdateParamsRename>
    implements $EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  _$EncryptedKeyUpdateParamsRenameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
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

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$EncryptedKeyUpdateParamsRenameRenameImplCopyWith<$Res>
    implements $EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  factory _$$EncryptedKeyUpdateParamsRenameRenameImplCopyWith(
          _$EncryptedKeyUpdateParamsRenameRenameImpl value,
          $Res Function(_$EncryptedKeyUpdateParamsRenameRenameImpl) then) =
      __$$EncryptedKeyUpdateParamsRenameRenameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PublicKey publicKey, String name});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$$EncryptedKeyUpdateParamsRenameRenameImplCopyWithImpl<$Res>
    extends _$EncryptedKeyUpdateParamsRenameCopyWithImpl<$Res,
        _$EncryptedKeyUpdateParamsRenameRenameImpl>
    implements _$$EncryptedKeyUpdateParamsRenameRenameImplCopyWith<$Res> {
  __$$EncryptedKeyUpdateParamsRenameRenameImplCopyWithImpl(
      _$EncryptedKeyUpdateParamsRenameRenameImpl _value,
      $Res Function(_$EncryptedKeyUpdateParamsRenameRenameImpl) _then)
      : super(_value, _then);

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_$EncryptedKeyUpdateParamsRenameRenameImpl(
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
class _$EncryptedKeyUpdateParamsRenameRenameImpl
    implements _EncryptedKeyUpdateParamsRenameRename {
  const _$EncryptedKeyUpdateParamsRenameRenameImpl(
      {required this.publicKey, required this.name});

  factory _$EncryptedKeyUpdateParamsRenameRenameImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$EncryptedKeyUpdateParamsRenameRenameImplFromJson(json);

  @override
  final PublicKey publicKey;
  @override
  final String name;

  @override
  String toString() {
    return 'EncryptedKeyUpdateParamsRename(publicKey: $publicKey, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EncryptedKeyUpdateParamsRenameRenameImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, name);

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EncryptedKeyUpdateParamsRenameRenameImplCopyWith<
          _$EncryptedKeyUpdateParamsRenameRenameImpl>
      get copyWith => __$$EncryptedKeyUpdateParamsRenameRenameImplCopyWithImpl<
          _$EncryptedKeyUpdateParamsRenameRenameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EncryptedKeyUpdateParamsRenameRenameImplToJson(
      this,
    );
  }
}

abstract class _EncryptedKeyUpdateParamsRenameRename
    implements EncryptedKeyUpdateParamsRename {
  const factory _EncryptedKeyUpdateParamsRenameRename(
      {required final PublicKey publicKey,
      required final String name}) = _$EncryptedKeyUpdateParamsRenameRenameImpl;

  factory _EncryptedKeyUpdateParamsRenameRename.fromJson(
          Map<String, dynamic> json) =
      _$EncryptedKeyUpdateParamsRenameRenameImpl.fromJson;

  @override
  PublicKey get publicKey;
  @override
  String get name;

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EncryptedKeyUpdateParamsRenameRenameImplCopyWith<
          _$EncryptedKeyUpdateParamsRenameRenameImpl>
      get copyWith => throw _privateConstructorUsedError;
}
