// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_key_get_public_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
LedgerKeyGetPublicKeys _$LedgerKeyGetPublicKeysFromJson(
    Map<String, dynamic> json) {
  return _LedgerKeyGetPublicKeysRename.fromJson(json);
}

/// @nodoc
mixin _$LedgerKeyGetPublicKeys {
  int get offset;
  int get limit;

  /// Create a copy of LedgerKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerKeyGetPublicKeysCopyWith<LedgerKeyGetPublicKeys> get copyWith =>
      _$LedgerKeyGetPublicKeysCopyWithImpl<LedgerKeyGetPublicKeys>(
          this as LedgerKeyGetPublicKeys, _$identity);

  /// Serializes this LedgerKeyGetPublicKeys to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerKeyGetPublicKeys &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit);

  @override
  String toString() {
    return 'LedgerKeyGetPublicKeys(offset: $offset, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class $LedgerKeyGetPublicKeysCopyWith<$Res> {
  factory $LedgerKeyGetPublicKeysCopyWith(LedgerKeyGetPublicKeys value,
          $Res Function(LedgerKeyGetPublicKeys) _then) =
      _$LedgerKeyGetPublicKeysCopyWithImpl;
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class _$LedgerKeyGetPublicKeysCopyWithImpl<$Res>
    implements $LedgerKeyGetPublicKeysCopyWith<$Res> {
  _$LedgerKeyGetPublicKeysCopyWithImpl(this._self, this._then);

  final LedgerKeyGetPublicKeys _self;
  final $Res Function(LedgerKeyGetPublicKeys) _then;

  /// Create a copy of LedgerKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_self.copyWith(
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _LedgerKeyGetPublicKeysRename implements LedgerKeyGetPublicKeys {
  const _LedgerKeyGetPublicKeysRename(
      {required this.offset, required this.limit});
  factory _LedgerKeyGetPublicKeysRename.fromJson(Map<String, dynamic> json) =>
      _$LedgerKeyGetPublicKeysRenameFromJson(json);

  @override
  final int offset;
  @override
  final int limit;

  /// Create a copy of LedgerKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerKeyGetPublicKeysRenameCopyWith<_LedgerKeyGetPublicKeysRename>
      get copyWith => __$LedgerKeyGetPublicKeysRenameCopyWithImpl<
          _LedgerKeyGetPublicKeysRename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LedgerKeyGetPublicKeysRenameToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerKeyGetPublicKeysRename &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit);

  @override
  String toString() {
    return 'LedgerKeyGetPublicKeys(offset: $offset, limit: $limit)';
  }
}

/// @nodoc
abstract mixin class _$LedgerKeyGetPublicKeysRenameCopyWith<$Res>
    implements $LedgerKeyGetPublicKeysCopyWith<$Res> {
  factory _$LedgerKeyGetPublicKeysRenameCopyWith(
          _LedgerKeyGetPublicKeysRename value,
          $Res Function(_LedgerKeyGetPublicKeysRename) _then) =
      __$LedgerKeyGetPublicKeysRenameCopyWithImpl;
  @override
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class __$LedgerKeyGetPublicKeysRenameCopyWithImpl<$Res>
    implements _$LedgerKeyGetPublicKeysRenameCopyWith<$Res> {
  __$LedgerKeyGetPublicKeysRenameCopyWithImpl(this._self, this._then);

  final _LedgerKeyGetPublicKeysRename _self;
  final $Res Function(_LedgerKeyGetPublicKeysRename) _then;

  /// Create a copy of LedgerKeyGetPublicKeys
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_LedgerKeyGetPublicKeysRename(
      offset: null == offset
          ? _self.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _self.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
