// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'encrypted_key_update_params_rename.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$EncryptedKeyUpdateParamsRename {
  PublicKey get publicKey;
  String get name;

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $EncryptedKeyUpdateParamsRenameCopyWith<EncryptedKeyUpdateParamsRename>
      get copyWith => _$EncryptedKeyUpdateParamsRenameCopyWithImpl<
              EncryptedKeyUpdateParamsRename>(
          this as EncryptedKeyUpdateParamsRename, _$identity);

  /// Serializes this EncryptedKeyUpdateParamsRename to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is EncryptedKeyUpdateParamsRename &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, name);

  @override
  String toString() {
    return 'EncryptedKeyUpdateParamsRename(publicKey: $publicKey, name: $name)';
  }
}

/// @nodoc
abstract mixin class $EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  factory $EncryptedKeyUpdateParamsRenameCopyWith(
          EncryptedKeyUpdateParamsRename value,
          $Res Function(EncryptedKeyUpdateParamsRename) _then) =
      _$EncryptedKeyUpdateParamsRenameCopyWithImpl;
  @useResult
  $Res call({PublicKey publicKey, String name});

  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$EncryptedKeyUpdateParamsRenameCopyWithImpl<$Res>
    implements $EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  _$EncryptedKeyUpdateParamsRenameCopyWithImpl(this._self, this._then);

  final EncryptedKeyUpdateParamsRename _self;
  final $Res Function(EncryptedKeyUpdateParamsRename) _then;

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_self.copyWith(
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _EncryptedKeyUpdateParamsRename
    implements EncryptedKeyUpdateParamsRename {
  const _EncryptedKeyUpdateParamsRename(
      {required this.publicKey, required this.name});
  factory _EncryptedKeyUpdateParamsRename.fromJson(Map<String, dynamic> json) =>
      _$EncryptedKeyUpdateParamsRenameFromJson(json);

  @override
  final PublicKey publicKey;
  @override
  final String name;

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$EncryptedKeyUpdateParamsRenameCopyWith<_EncryptedKeyUpdateParamsRename>
      get copyWith => __$EncryptedKeyUpdateParamsRenameCopyWithImpl<
          _EncryptedKeyUpdateParamsRename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$EncryptedKeyUpdateParamsRenameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _EncryptedKeyUpdateParamsRename &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, name);

  @override
  String toString() {
    return 'EncryptedKeyUpdateParamsRename(publicKey: $publicKey, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$EncryptedKeyUpdateParamsRenameCopyWith<$Res>
    implements $EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  factory _$EncryptedKeyUpdateParamsRenameCopyWith(
          _EncryptedKeyUpdateParamsRename value,
          $Res Function(_EncryptedKeyUpdateParamsRename) _then) =
      __$EncryptedKeyUpdateParamsRenameCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey publicKey, String name});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$EncryptedKeyUpdateParamsRenameCopyWithImpl<$Res>
    implements _$EncryptedKeyUpdateParamsRenameCopyWith<$Res> {
  __$EncryptedKeyUpdateParamsRenameCopyWithImpl(this._self, this._then);

  final _EncryptedKeyUpdateParamsRename _self;
  final $Res Function(_EncryptedKeyUpdateParamsRename) _then;

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_EncryptedKeyUpdateParamsRename(
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }

  /// Create a copy of EncryptedKeyUpdateParamsRename
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }
}

// dart format on
