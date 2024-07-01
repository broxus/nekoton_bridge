// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_update_key_input_rename.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

LedgerUpdateKeyInputRename _$LedgerUpdateKeyInputRenameFromJson(
    Map<String, dynamic> json) {
  return _LedgerUpdateKeyInputRenameRename.fromJson(json);
}

/// @nodoc
mixin _$LedgerUpdateKeyInputRename {
  PublicKey get publicKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LedgerUpdateKeyInputRenameCopyWith<LedgerUpdateKeyInputRename>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerUpdateKeyInputRenameCopyWith<$Res> {
  factory $LedgerUpdateKeyInputRenameCopyWith(LedgerUpdateKeyInputRename value,
          $Res Function(LedgerUpdateKeyInputRename) then) =
      _$LedgerUpdateKeyInputRenameCopyWithImpl<$Res,
          LedgerUpdateKeyInputRename>;
  @useResult
  $Res call({PublicKey publicKey, String name});

  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$LedgerUpdateKeyInputRenameCopyWithImpl<$Res,
        $Val extends LedgerUpdateKeyInputRename>
    implements $LedgerUpdateKeyInputRenameCopyWith<$Res> {
  _$LedgerUpdateKeyInputRenameCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

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

  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_value.publicKey, (value) {
      return _then(_value.copyWith(publicKey: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$LedgerUpdateKeyInputRenameRenameImplCopyWith<$Res>
    implements $LedgerUpdateKeyInputRenameCopyWith<$Res> {
  factory _$$LedgerUpdateKeyInputRenameRenameImplCopyWith(
          _$LedgerUpdateKeyInputRenameRenameImpl value,
          $Res Function(_$LedgerUpdateKeyInputRenameRenameImpl) then) =
      __$$LedgerUpdateKeyInputRenameRenameImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PublicKey publicKey, String name});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$$LedgerUpdateKeyInputRenameRenameImplCopyWithImpl<$Res>
    extends _$LedgerUpdateKeyInputRenameCopyWithImpl<$Res,
        _$LedgerUpdateKeyInputRenameRenameImpl>
    implements _$$LedgerUpdateKeyInputRenameRenameImplCopyWith<$Res> {
  __$$LedgerUpdateKeyInputRenameRenameImplCopyWithImpl(
      _$LedgerUpdateKeyInputRenameRenameImpl _value,
      $Res Function(_$LedgerUpdateKeyInputRenameRenameImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_$LedgerUpdateKeyInputRenameRenameImpl(
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
class _$LedgerUpdateKeyInputRenameRenameImpl
    implements _LedgerUpdateKeyInputRenameRename {
  const _$LedgerUpdateKeyInputRenameRenameImpl(
      {required this.publicKey, required this.name});

  factory _$LedgerUpdateKeyInputRenameRenameImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LedgerUpdateKeyInputRenameRenameImplFromJson(json);

  @override
  final PublicKey publicKey;
  @override
  final String name;

  @override
  String toString() {
    return 'LedgerUpdateKeyInputRename(publicKey: $publicKey, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerUpdateKeyInputRenameRenameImpl &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, publicKey, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerUpdateKeyInputRenameRenameImplCopyWith<
          _$LedgerUpdateKeyInputRenameRenameImpl>
      get copyWith => __$$LedgerUpdateKeyInputRenameRenameImplCopyWithImpl<
          _$LedgerUpdateKeyInputRenameRenameImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LedgerUpdateKeyInputRenameRenameImplToJson(
      this,
    );
  }
}

abstract class _LedgerUpdateKeyInputRenameRename
    implements LedgerUpdateKeyInputRename {
  const factory _LedgerUpdateKeyInputRenameRename(
      {required final PublicKey publicKey,
      required final String name}) = _$LedgerUpdateKeyInputRenameRenameImpl;

  factory _LedgerUpdateKeyInputRenameRename.fromJson(
          Map<String, dynamic> json) =
      _$LedgerUpdateKeyInputRenameRenameImpl.fromJson;

  @override
  PublicKey get publicKey;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$LedgerUpdateKeyInputRenameRenameImplCopyWith<
          _$LedgerUpdateKeyInputRenameRenameImpl>
      get copyWith => throw _privateConstructorUsedError;
}
