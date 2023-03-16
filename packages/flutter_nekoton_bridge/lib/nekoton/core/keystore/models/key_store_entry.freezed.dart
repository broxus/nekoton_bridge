// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$KeyStoreEntryCopyWithImpl<$Res>;
  $Res call(
      {String signerName,
      String name,
      String publicKey,
      String masterKey,
      int accountId});
}

/// @nodoc
class _$KeyStoreEntryCopyWithImpl<$Res>
    implements $KeyStoreEntryCopyWith<$Res> {
  _$KeyStoreEntryCopyWithImpl(this._value, this._then);

  final KeyStoreEntry _value;
  // ignore: unused_field
  final $Res Function(KeyStoreEntry) _then;

  @override
  $Res call({
    Object? signerName = freezed,
    Object? name = freezed,
    Object? publicKey = freezed,
    Object? masterKey = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_value.copyWith(
      signerName: signerName == freezed
          ? _value.signerName
          : signerName // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
          ? _value.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_KeyStoreEntryCopyWith<$Res>
    implements $KeyStoreEntryCopyWith<$Res> {
  factory _$$_KeyStoreEntryCopyWith(
          _$_KeyStoreEntry value, $Res Function(_$_KeyStoreEntry) then) =
      __$$_KeyStoreEntryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String signerName,
      String name,
      String publicKey,
      String masterKey,
      int accountId});
}

/// @nodoc
class __$$_KeyStoreEntryCopyWithImpl<$Res>
    extends _$KeyStoreEntryCopyWithImpl<$Res>
    implements _$$_KeyStoreEntryCopyWith<$Res> {
  __$$_KeyStoreEntryCopyWithImpl(
      _$_KeyStoreEntry _value, $Res Function(_$_KeyStoreEntry) _then)
      : super(_value, (v) => _then(v as _$_KeyStoreEntry));

  @override
  _$_KeyStoreEntry get _value => super._value as _$_KeyStoreEntry;

  @override
  $Res call({
    Object? signerName = freezed,
    Object? name = freezed,
    Object? publicKey = freezed,
    Object? masterKey = freezed,
    Object? accountId = freezed,
  }) {
    return _then(_$_KeyStoreEntry(
      signerName: signerName == freezed
          ? _value.signerName
          : signerName // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: publicKey == freezed
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      masterKey: masterKey == freezed
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as String,
      accountId: accountId == freezed
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
            const DeepCollectionEquality()
                .equals(other.signerName, signerName) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.publicKey, publicKey) &&
            const DeepCollectionEquality().equals(other.masterKey, masterKey) &&
            const DeepCollectionEquality().equals(other.accountId, accountId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(signerName),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(publicKey),
      const DeepCollectionEquality().hash(masterKey),
      const DeepCollectionEquality().hash(accountId));

  @JsonKey(ignore: true)
  @override
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
