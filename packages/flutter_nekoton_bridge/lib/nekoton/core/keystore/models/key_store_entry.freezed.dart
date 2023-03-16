// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_store_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

KeyStoreEntry _$KeyStoreEntryFromJson(Map<String, dynamic> json) {
  return _KeyStoreEntry.fromJson(json);
}

/// @nodoc
mixin _$KeyStoreEntry {
  String get signerName => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;
  String get masterKey => throw _privateConstructorUsedError;
  int get accountId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KeyStoreEntryCopyWith<KeyStoreEntry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KeyStoreEntryCopyWith<$Res> {
  factory $KeyStoreEntryCopyWith(
          KeyStoreEntry value, $Res Function(KeyStoreEntry) then) =
      _$KeyStoreEntryCopyWithImpl<$Res, KeyStoreEntry>;
  @useResult
  $Res call(
      {String signerName,
      String name,
      String publicKey,
      String masterKey,
      int accountId});
}

/// @nodoc
class _$KeyStoreEntryCopyWithImpl<$Res, $Val extends KeyStoreEntry>
    implements $KeyStoreEntryCopyWith<$Res> {
  _$KeyStoreEntryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signerName = null,
    Object? name = null,
    Object? publicKey = null,
    Object? masterKey = null,
    Object? accountId = null,
  }) {
    return _then(_value.copyWith(
      signerName: null == signerName
          ? _value.signerName
          : signerName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KeyStoreEntryCopyWith<$Res>
    implements $KeyStoreEntryCopyWith<$Res> {
  factory _$$_KeyStoreEntryCopyWith(
          _$_KeyStoreEntry value, $Res Function(_$_KeyStoreEntry) then) =
      __$$_KeyStoreEntryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String signerName,
      String name,
      String publicKey,
      String masterKey,
      int accountId});
}

/// @nodoc
class __$$_KeyStoreEntryCopyWithImpl<$Res>
    extends _$KeyStoreEntryCopyWithImpl<$Res, _$_KeyStoreEntry>
    implements _$$_KeyStoreEntryCopyWith<$Res> {
  __$$_KeyStoreEntryCopyWithImpl(
      _$_KeyStoreEntry _value, $Res Function(_$_KeyStoreEntry) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signerName = null,
    Object? name = null,
    Object? publicKey = null,
    Object? masterKey = null,
    Object? accountId = null,
  }) {
    return _then(_$_KeyStoreEntry(
      signerName: null == signerName
          ? _value.signerName
          : signerName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: null == accountId
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_KeyStoreEntry extends _KeyStoreEntry {
  const _$_KeyStoreEntry(
      {required this.signerName,
      required this.name,
      required this.publicKey,
      required this.masterKey,
      required this.accountId})
      : super._();

  factory _$_KeyStoreEntry.fromJson(Map<String, dynamic> json) =>
      _$$_KeyStoreEntryFromJson(json);

  @override
  final String signerName;
  @override
  final String name;
  @override
  final String publicKey;
  @override
  final String masterKey;
  @override
  final int accountId;

  @override
  String toString() {
    return 'KeyStoreEntry(signerName: $signerName, name: $name, publicKey: $publicKey, masterKey: $masterKey, accountId: $accountId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KeyStoreEntry &&
            (identical(other.signerName, signerName) ||
                other.signerName == signerName) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, signerName, name, publicKey, masterKey, accountId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KeyStoreEntryCopyWith<_$_KeyStoreEntry> get copyWith =>
      __$$_KeyStoreEntryCopyWithImpl<_$_KeyStoreEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KeyStoreEntryToJson(
      this,
    );
  }
}

abstract class _KeyStoreEntry extends KeyStoreEntry {
  const factory _KeyStoreEntry(
      {required final String signerName,
      required final String name,
      required final String publicKey,
      required final String masterKey,
      required final int accountId}) = _$_KeyStoreEntry;
  const _KeyStoreEntry._() : super._();

  factory _KeyStoreEntry.fromJson(Map<String, dynamic> json) =
      _$_KeyStoreEntry.fromJson;

  @override
  String get signerName;
  @override
  String get name;
  @override
  String get publicKey;
  @override
  String get masterKey;
  @override
  int get accountId;
  @override
  @JsonKey(ignore: true)
  _$$_KeyStoreEntryCopyWith<_$_KeyStoreEntry> get copyWith =>
      throw _privateConstructorUsedError;
}
