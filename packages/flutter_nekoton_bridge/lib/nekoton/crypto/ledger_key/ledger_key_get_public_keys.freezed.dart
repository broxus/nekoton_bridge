// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'ledger_key_get_public_keys.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LedgerKeyGetPublicKeys _$LedgerKeyGetPublicKeysFromJson(
    Map<String, dynamic> json) {
  return _LedgerKeyGetPublicKeysRename.fromJson(json);
}

/// @nodoc
mixin _$LedgerKeyGetPublicKeys {
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LedgerKeyGetPublicKeysCopyWith<LedgerKeyGetPublicKeys> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerKeyGetPublicKeysCopyWith<$Res> {
  factory $LedgerKeyGetPublicKeysCopyWith(LedgerKeyGetPublicKeys value,
          $Res Function(LedgerKeyGetPublicKeys) then) =
      _$LedgerKeyGetPublicKeysCopyWithImpl<$Res>;
  $Res call({int offset, int limit});
}

/// @nodoc
class _$LedgerKeyGetPublicKeysCopyWithImpl<$Res>
    implements $LedgerKeyGetPublicKeysCopyWith<$Res> {
  _$LedgerKeyGetPublicKeysCopyWithImpl(this._value, this._then);

  final LedgerKeyGetPublicKeys _value;
  // ignore: unused_field
  final $Res Function(LedgerKeyGetPublicKeys) _then;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_value.copyWith(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LedgerKeyGetPublicKeysRenameCopyWith<$Res>
    implements $LedgerKeyGetPublicKeysCopyWith<$Res> {
  factory _$$_LedgerKeyGetPublicKeysRenameCopyWith(
          _$_LedgerKeyGetPublicKeysRename value,
          $Res Function(_$_LedgerKeyGetPublicKeysRename) then) =
      __$$_LedgerKeyGetPublicKeysRenameCopyWithImpl<$Res>;
  @override
  $Res call({int offset, int limit});
}

/// @nodoc
class __$$_LedgerKeyGetPublicKeysRenameCopyWithImpl<$Res>
    extends _$LedgerKeyGetPublicKeysCopyWithImpl<$Res>
    implements _$$_LedgerKeyGetPublicKeysRenameCopyWith<$Res> {
  __$$_LedgerKeyGetPublicKeysRenameCopyWithImpl(
      _$_LedgerKeyGetPublicKeysRename _value,
      $Res Function(_$_LedgerKeyGetPublicKeysRename) _then)
      : super(_value, (v) => _then(v as _$_LedgerKeyGetPublicKeysRename));

  @override
  _$_LedgerKeyGetPublicKeysRename get _value =>
      super._value as _$_LedgerKeyGetPublicKeysRename;

  @override
  $Res call({
    Object? offset = freezed,
    Object? limit = freezed,
  }) {
    return _then(_$_LedgerKeyGetPublicKeysRename(
      offset: offset == freezed
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: limit == freezed
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LedgerKeyGetPublicKeysRename implements _LedgerKeyGetPublicKeysRename {
  const _$_LedgerKeyGetPublicKeysRename(
      {required this.offset, required this.limit});

  factory _$_LedgerKeyGetPublicKeysRename.fromJson(Map<String, dynamic> json) =>
      _$$_LedgerKeyGetPublicKeysRenameFromJson(json);

  @override
  final int offset;
  @override
  final int limit;

  @override
  String toString() {
    return 'LedgerKeyGetPublicKeys(offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LedgerKeyGetPublicKeysRename &&
            const DeepCollectionEquality().equals(other.offset, offset) &&
            const DeepCollectionEquality().equals(other.limit, limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(offset),
      const DeepCollectionEquality().hash(limit));

  @JsonKey(ignore: true)
  @override
  _$$_LedgerKeyGetPublicKeysRenameCopyWith<_$_LedgerKeyGetPublicKeysRename>
      get copyWith => __$$_LedgerKeyGetPublicKeysRenameCopyWithImpl<
          _$_LedgerKeyGetPublicKeysRename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LedgerKeyGetPublicKeysRenameToJson(
      this,
    );
  }
}

abstract class _LedgerKeyGetPublicKeysRename implements LedgerKeyGetPublicKeys {
  const factory _LedgerKeyGetPublicKeysRename(
      {required final int offset,
      required final int limit}) = _$_LedgerKeyGetPublicKeysRename;

  factory _LedgerKeyGetPublicKeysRename.fromJson(Map<String, dynamic> json) =
      _$_LedgerKeyGetPublicKeysRename.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_LedgerKeyGetPublicKeysRenameCopyWith<_$_LedgerKeyGetPublicKeysRename>
      get copyWith => throw _privateConstructorUsedError;
}
