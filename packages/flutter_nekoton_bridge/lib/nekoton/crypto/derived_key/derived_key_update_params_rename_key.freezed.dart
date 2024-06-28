// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_update_params_rename_key.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DerivedKeyUpdateParamsRenameKey _$DerivedKeyUpdateParamsRenameKeyFromJson(
    Map<String, dynamic> json) {
  return _DerivedKeyUpdateParamsRenameKeyRenameKey.fromJson(json);
}

/// @nodoc
mixin _$DerivedKeyUpdateParamsRenameKey {
  PublicKey get masterKey => throw _privateConstructorUsedError;
  PublicKey get publicKey => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DerivedKeyUpdateParamsRenameKeyCopyWith<DerivedKeyUpdateParamsRenameKey>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  factory $DerivedKeyUpdateParamsRenameKeyCopyWith(
          DerivedKeyUpdateParamsRenameKey value,
          $Res Function(DerivedKeyUpdateParamsRenameKey) then) =
      _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res,
          DerivedKeyUpdateParamsRenameKey>;
  @useResult
  $Res call({PublicKey masterKey, PublicKey publicKey, String name});

  $PublicKeyCopyWith<$Res> get masterKey;
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res,
        $Val extends DerivedKeyUpdateParamsRenameKey>
    implements $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
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
  $PublicKeyCopyWith<$Res> get masterKey {
    return $PublicKeyCopyWith<$Res>(_value.masterKey, (value) {
      return _then(_value.copyWith(masterKey: value) as $Val);
    });
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
abstract class _$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplCopyWith<$Res>
    implements $DerivedKeyUpdateParamsRenameKeyCopyWith<$Res> {
  factory _$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplCopyWith(
          _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl value,
          $Res Function(_$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl) then) =
      __$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PublicKey masterKey, PublicKey publicKey, String name});

  @override
  $PublicKeyCopyWith<$Res> get masterKey;
  @override
  $PublicKeyCopyWith<$Res> get publicKey;
}

/// @nodoc
class __$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplCopyWithImpl<$Res>
    extends _$DerivedKeyUpdateParamsRenameKeyCopyWithImpl<$Res,
        _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl>
    implements _$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplCopyWith<$Res> {
  __$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplCopyWithImpl(
      _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl _value,
      $Res Function(_$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? masterKey = null,
    Object? publicKey = null,
    Object? name = null,
  }) {
    return _then(_$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl(
      masterKey: null == masterKey
          ? _value.masterKey
          : masterKey // ignore: cast_nullable_to_non_nullable
              as PublicKey,
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
class _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl
    implements _DerivedKeyUpdateParamsRenameKeyRenameKey {
  const _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl(
      {required this.masterKey, required this.publicKey, required this.name});

  factory _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplFromJson(json);

  @override
  final PublicKey masterKey;
  @override
  final PublicKey publicKey;
  @override
  final String name;

  @override
  String toString() {
    return 'DerivedKeyUpdateParamsRenameKey(masterKey: $masterKey, publicKey: $publicKey, name: $name)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl &&
            (identical(other.masterKey, masterKey) ||
                other.masterKey == masterKey) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, masterKey, publicKey, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplCopyWith<
          _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl>
      get copyWith =>
          __$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplCopyWithImpl<
              _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplToJson(
      this,
    );
  }
}

abstract class _DerivedKeyUpdateParamsRenameKeyRenameKey
    implements DerivedKeyUpdateParamsRenameKey {
  const factory _DerivedKeyUpdateParamsRenameKeyRenameKey(
          {required final PublicKey masterKey,
          required final PublicKey publicKey,
          required final String name}) =
      _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl;

  factory _DerivedKeyUpdateParamsRenameKeyRenameKey.fromJson(
          Map<String, dynamic> json) =
      _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl.fromJson;

  @override
  PublicKey get masterKey;
  @override
  PublicKey get publicKey;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$DerivedKeyUpdateParamsRenameKeyRenameKeyImplCopyWith<
          _$DerivedKeyUpdateParamsRenameKeyRenameKeyImpl>
      get copyWith => throw _privateConstructorUsedError;
}
