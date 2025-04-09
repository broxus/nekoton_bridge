// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_update_key_input_rename.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
LedgerUpdateKeyInputRename _$LedgerUpdateKeyInputRenameFromJson(
    Map<String, dynamic> json) {
  return _LedgerUpdateKeyInputRenameRename.fromJson(json);
}

/// @nodoc
mixin _$LedgerUpdateKeyInputRename {
  PublicKey get publicKey;
  String get name;

  /// Create a copy of LedgerUpdateKeyInputRename
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerUpdateKeyInputRenameCopyWith<LedgerUpdateKeyInputRename>
      get copyWith =>
          _$LedgerUpdateKeyInputRenameCopyWithImpl<LedgerUpdateKeyInputRename>(
              this as LedgerUpdateKeyInputRename, _$identity);

  /// Serializes this LedgerUpdateKeyInputRename to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerUpdateKeyInputRename &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, name);

  @override
  String toString() {
    return 'LedgerUpdateKeyInputRename(publicKey: $publicKey, name: $name)';
  }
}

/// @nodoc
abstract mixin class $LedgerUpdateKeyInputRenameCopyWith<$Res> {
  factory $LedgerUpdateKeyInputRenameCopyWith(LedgerUpdateKeyInputRename value,
          $Res Function(LedgerUpdateKeyInputRename) _then) =
      _$LedgerUpdateKeyInputRenameCopyWithImpl;
  @useResult
  $Res call({PublicKey publicKey, String name});

  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$LedgerUpdateKeyInputRenameCopyWithImpl<$Res>
    implements $LedgerUpdateKeyInputRenameCopyWith<$Res> {
  _$LedgerUpdateKeyInputRenameCopyWithImpl(this._self, this._then);

  final LedgerUpdateKeyInputRename _self;
  final $Res Function(LedgerUpdateKeyInputRename) _then;

  /// Create a copy of LedgerUpdateKeyInputRename
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

  /// Create a copy of LedgerUpdateKeyInputRename
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
class _LedgerUpdateKeyInputRenameRename implements LedgerUpdateKeyInputRename {
  const _LedgerUpdateKeyInputRenameRename(
      {required this.publicKey, required this.name});
  factory _LedgerUpdateKeyInputRenameRename.fromJson(
          Map<String, dynamic> json) =>
      _$LedgerUpdateKeyInputRenameRenameFromJson(json);

  @override
  final PublicKey publicKey;
  @override
  final String name;

  /// Create a copy of LedgerUpdateKeyInputRename
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerUpdateKeyInputRenameRenameCopyWith<_LedgerUpdateKeyInputRenameRename>
      get copyWith => __$LedgerUpdateKeyInputRenameRenameCopyWithImpl<
          _LedgerUpdateKeyInputRenameRename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LedgerUpdateKeyInputRenameRenameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerUpdateKeyInputRenameRename &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, name);

  @override
  String toString() {
    return 'LedgerUpdateKeyInputRename(publicKey: $publicKey, name: $name)';
  }
}

/// @nodoc
abstract mixin class _$LedgerUpdateKeyInputRenameRenameCopyWith<$Res>
    implements $LedgerUpdateKeyInputRenameCopyWith<$Res> {
  factory _$LedgerUpdateKeyInputRenameRenameCopyWith(
          _LedgerUpdateKeyInputRenameRename value,
          $Res Function(_LedgerUpdateKeyInputRenameRename) _then) =
      __$LedgerUpdateKeyInputRenameRenameCopyWithImpl;
  @override
  @useResult
  $Res call({PublicKey publicKey, String name});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$LedgerUpdateKeyInputRenameRenameCopyWithImpl<$Res>
    implements _$LedgerUpdateKeyInputRenameRenameCopyWith<$Res> {
  __$LedgerUpdateKeyInputRenameRenameCopyWithImpl(this._self, this._then);

  final _LedgerUpdateKeyInputRenameRename _self;
  final $Res Function(_LedgerUpdateKeyInputRenameRename) _then;

  /// Create a copy of LedgerUpdateKeyInputRename
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_LedgerUpdateKeyInputRenameRename(
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

  /// Create a copy of LedgerUpdateKeyInputRename
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
