// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$LedgerKeyGetPublicKeysCopyWithImpl<$Res, LedgerKeyGetPublicKeys>;
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class _$LedgerKeyGetPublicKeysCopyWithImpl<$Res,
        $Val extends LedgerKeyGetPublicKeys>
    implements $LedgerKeyGetPublicKeysCopyWith<$Res> {
  _$LedgerKeyGetPublicKeysCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
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
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class __$$_LedgerKeyGetPublicKeysRenameCopyWithImpl<$Res>
    extends _$LedgerKeyGetPublicKeysCopyWithImpl<$Res,
        _$_LedgerKeyGetPublicKeysRename>
    implements _$$_LedgerKeyGetPublicKeysRenameCopyWith<$Res> {
  __$$_LedgerKeyGetPublicKeysRenameCopyWithImpl(
      _$_LedgerKeyGetPublicKeysRename _value,
      $Res Function(_$_LedgerKeyGetPublicKeysRename) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$_LedgerKeyGetPublicKeysRename(
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
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
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
