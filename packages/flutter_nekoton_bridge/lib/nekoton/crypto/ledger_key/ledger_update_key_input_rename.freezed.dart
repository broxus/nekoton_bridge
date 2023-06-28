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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LedgerUpdateKeyInputRename _$LedgerUpdateKeyInputRenameFromJson(
    Map<String, dynamic> json) {
  return _LedgerUpdateKeyInputRenameRename.fromJson(json);
}

/// @nodoc
mixin _$LedgerUpdateKeyInputRename {
  @publicKeyJsonConverter
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
  $Res call({@publicKeyJsonConverter PublicKey publicKey, String name});

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
abstract class _$$_LedgerUpdateKeyInputRenameRenameCopyWith<$Res>
    implements $LedgerUpdateKeyInputRenameCopyWith<$Res> {
  factory _$$_LedgerUpdateKeyInputRenameRenameCopyWith(
          _$_LedgerUpdateKeyInputRenameRename value,
          $Res Function(_$_LedgerUpdateKeyInputRenameRename) then) =
      __$$_LedgerUpdateKeyInputRenameRenameCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@publicKeyJsonConverter PublicKey publicKey, String name});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$$_LedgerUpdateKeyInputRenameRenameCopyWithImpl<$Res>
    extends _$LedgerUpdateKeyInputRenameCopyWithImpl<$Res,
        _$_LedgerUpdateKeyInputRenameRename>
    implements _$$_LedgerUpdateKeyInputRenameRenameCopyWith<$Res> {
  __$$_LedgerUpdateKeyInputRenameRenameCopyWithImpl(
      _$_LedgerUpdateKeyInputRenameRename _value,
      $Res Function(_$_LedgerUpdateKeyInputRenameRename) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_$_LedgerUpdateKeyInputRenameRename(
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
class _$_LedgerUpdateKeyInputRenameRename
    implements _LedgerUpdateKeyInputRenameRename {
  const _$_LedgerUpdateKeyInputRenameRename(
      {@publicKeyJsonConverter required this.publicKey, required this.name});

  factory _$_LedgerUpdateKeyInputRenameRename.fromJson(
          Map<String, dynamic> json) =>
      _$$_LedgerUpdateKeyInputRenameRenameFromJson(json);

  @override
  @publicKeyJsonConverter
  final PublicKey publicKey;
  @override
  final String name;

  @override
  String toString() {
    return 'LedgerUpdateKeyInputRename(publicKey: $publicKey, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LedgerUpdateKeyInputRenameRename &&
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
  _$$_LedgerUpdateKeyInputRenameRenameCopyWith<
          _$_LedgerUpdateKeyInputRenameRename>
      get copyWith => __$$_LedgerUpdateKeyInputRenameRenameCopyWithImpl<
          _$_LedgerUpdateKeyInputRenameRename>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LedgerUpdateKeyInputRenameRenameToJson(
      this,
    );
  }
}

abstract class _LedgerUpdateKeyInputRenameRename
    implements LedgerUpdateKeyInputRename {
  const factory _LedgerUpdateKeyInputRenameRename(
      {@publicKeyJsonConverter required final PublicKey publicKey,
      required final String name}) = _$_LedgerUpdateKeyInputRenameRename;

  factory _LedgerUpdateKeyInputRenameRename.fromJson(
      Map<String, dynamic> json) = _$_LedgerUpdateKeyInputRenameRename.fromJson;

  @override
  @publicKeyJsonConverter
  PublicKey get publicKey;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_LedgerUpdateKeyInputRenameRenameCopyWith<
          _$_LedgerUpdateKeyInputRenameRename>
      get copyWith => throw _privateConstructorUsedError;
}
