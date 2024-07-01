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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$LedgerKeyGetPublicKeysRenameImplCopyWith<$Res>
    implements $LedgerKeyGetPublicKeysCopyWith<$Res> {
  factory _$$LedgerKeyGetPublicKeysRenameImplCopyWith(
          _$LedgerKeyGetPublicKeysRenameImpl value,
          $Res Function(_$LedgerKeyGetPublicKeysRenameImpl) then) =
      __$$LedgerKeyGetPublicKeysRenameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int offset, int limit});
}

/// @nodoc
class __$$LedgerKeyGetPublicKeysRenameImplCopyWithImpl<$Res>
    extends _$LedgerKeyGetPublicKeysCopyWithImpl<$Res,
        _$LedgerKeyGetPublicKeysRenameImpl>
    implements _$$LedgerKeyGetPublicKeysRenameImplCopyWith<$Res> {
  __$$LedgerKeyGetPublicKeysRenameImplCopyWithImpl(
      _$LedgerKeyGetPublicKeysRenameImpl _value,
      $Res Function(_$LedgerKeyGetPublicKeysRenameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$LedgerKeyGetPublicKeysRenameImpl(
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
class _$LedgerKeyGetPublicKeysRenameImpl
    implements _LedgerKeyGetPublicKeysRename {
  const _$LedgerKeyGetPublicKeysRenameImpl(
      {required this.offset, required this.limit});

  factory _$LedgerKeyGetPublicKeysRenameImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LedgerKeyGetPublicKeysRenameImplFromJson(json);

  @override
  final int offset;
  @override
  final int limit;

  @override
  String toString() {
    return 'LedgerKeyGetPublicKeys(offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerKeyGetPublicKeysRenameImpl &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, offset, limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerKeyGetPublicKeysRenameImplCopyWith<
          _$LedgerKeyGetPublicKeysRenameImpl>
      get copyWith => __$$LedgerKeyGetPublicKeysRenameImplCopyWithImpl<
          _$LedgerKeyGetPublicKeysRenameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LedgerKeyGetPublicKeysRenameImplToJson(
      this,
    );
  }
}

abstract class _LedgerKeyGetPublicKeysRename implements LedgerKeyGetPublicKeys {
  const factory _LedgerKeyGetPublicKeysRename(
      {required final int offset,
      required final int limit}) = _$LedgerKeyGetPublicKeysRenameImpl;

  factory _LedgerKeyGetPublicKeysRename.fromJson(Map<String, dynamic> json) =
      _$LedgerKeyGetPublicKeysRenameImpl.fromJson;

  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$LedgerKeyGetPublicKeysRenameImplCopyWith<
          _$LedgerKeyGetPublicKeysRenameImpl>
      get copyWith => throw _privateConstructorUsedError;
}
