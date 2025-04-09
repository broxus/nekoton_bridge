// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'key_store_entry.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeyStoreEntry {
  String get signerName;
  String get name;
  PublicKey get publicKey;
  PublicKey get masterKey;
  int get accountId;

  /// Create a copy of KeyStoreEntry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeyStoreEntryCopyWith<KeyStoreEntry> get copyWith =>
      _$KeyStoreEntryCopyWithImpl<KeyStoreEntry>(
          this as KeyStoreEntry, _$identity);

  /// Serializes this KeyStoreEntry to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeyStoreEntry &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, signerName, name, publicKey, masterKey, accountId);

  @override
  String toString() {
    return 'KeyStoreEntry(signerName: $signerName, name: $name, publicKey: $publicKey, masterKey: $masterKey, accountId: $accountId)';
  }
}

/// @nodoc
abstract mixin class $KeyStoreEntryCopyWith<$Res> {
  factory $KeyStoreEntryCopyWith(
          KeyStoreEntry value, $Res Function(KeyStoreEntry) _then) =
      _$KeyStoreEntryCopyWithImpl;
  @useResult
  $Res call(
      {String signerName,
      String name,
      PublicKey publicKey,
      PublicKey masterKey,
      int accountId});

  $PublicKeyCopyWith<$Res> get publicKey;
  $PublicKeyCopyWith<$Res> get masterKey;
}

/// @nodoc
class _$KeyStoreEntryCopyWithImpl<$Res>
    implements $KeyStoreEntryCopyWith<$Res> {
  _$KeyStoreEntryCopyWithImpl(this._self, this._then);

  final KeyStoreEntry _self;
  final $Res Function(KeyStoreEntry) _then;

  /// Create a copy of KeyStoreEntry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? signerName = null,
    Object? name = null,
    Object? publicKey = null,
    Object? masterKey = null,
    Object? accountId = null,
  }) {
    return _then(_self.copyWith(
      signerName: null == signerName
          ? _self.signerName
          : signerName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of KeyStoreEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of KeyStoreEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _KeyStoreEntry extends KeyStoreEntry {
  const _KeyStoreEntry(
      {required this.signerName,
      required this.name,
      required this.publicKey,
      required this.masterKey,
      required this.accountId})
      : super._();
  factory _KeyStoreEntry.fromJson(Map<String, dynamic> json) =>
      _$KeyStoreEntryFromJson(json);

  @override
  final String signerName;
  @override
  final String name;
  @override
  final PublicKey publicKey;
  @override
  final PublicKey masterKey;
  @override
  final int accountId;

  /// Create a copy of KeyStoreEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$KeyStoreEntryCopyWith<_KeyStoreEntry> get copyWith =>
      __$KeyStoreEntryCopyWithImpl<_KeyStoreEntry>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$KeyStoreEntryToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _KeyStoreEntry &&
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

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, signerName, name, publicKey, masterKey, accountId);

  @override
  String toString() {
    return 'KeyStoreEntry(signerName: $signerName, name: $name, publicKey: $publicKey, masterKey: $masterKey, accountId: $accountId)';
  }
}

/// @nodoc
abstract mixin class _$KeyStoreEntryCopyWith<$Res>
    implements $KeyStoreEntryCopyWith<$Res> {
  factory _$KeyStoreEntryCopyWith(
          _KeyStoreEntry value, $Res Function(_KeyStoreEntry) _then) =
      __$KeyStoreEntryCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String signerName,
      String name,
      PublicKey publicKey,
      PublicKey masterKey,
      int accountId});

  @override
  $PublicKeyCopyWith<$Res> get publicKey;
  @override
  $PublicKeyCopyWith<$Res> get masterKey;
}

/// @nodoc
class __$KeyStoreEntryCopyWithImpl<$Res>
    implements _$KeyStoreEntryCopyWith<$Res> {
  __$KeyStoreEntryCopyWithImpl(this._self, this._then);

  final _KeyStoreEntry _self;
  final $Res Function(_KeyStoreEntry) _then;

  /// Create a copy of KeyStoreEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? signerName = null,
    Object? name = null,
    Object? publicKey = null,
    Object? masterKey = null,
    Object? accountId = null,
  }) {
    return _then(_KeyStoreEntry(
      signerName: null == signerName
          ? _self.signerName
          : signerName // ignore: cast_nullable_to_non_nullable
              as String,
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _self.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      masterKey: null == masterKey
          ? _self.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }

  /// Create a copy of KeyStoreEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get publicKey {
    return $PublicKeyCopyWith<$Res>(_self.publicKey, (value) {
      return _then(_self.copyWith(publicKey: value));
    });
  }

  /// Create a copy of KeyStoreEntry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_self.masterKey, (value) {
      return _then(_self.copyWith(masterKey: value));
    });
  }
}

// dart format on
