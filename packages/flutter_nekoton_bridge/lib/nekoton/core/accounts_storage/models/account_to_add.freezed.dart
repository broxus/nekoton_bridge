// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'account_to_add.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AccountToAdd _$AccountToAddFromJson(Map<String, dynamic> json) {
  return _AccountToAdd.fromJson(json);
}

/// @nodoc
mixin _$AccountToAdd {
  String get name => throw _privateConstructorUsedError;
  String get publicKey => throw _privateConstructorUsedError;
  WalletType get contract => throw _privateConstructorUsedError;
  int get workchain => throw _privateConstructorUsedError;
  String? get explicitAddress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AccountToAddCopyWith<AccountToAdd> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AccountToAddCopyWith<$Res> {
  factory $AccountToAddCopyWith(
          AccountToAdd value, $Res Function(AccountToAdd) then) =
      _$AccountToAddCopyWithImpl<$Res, AccountToAdd>;
  @useResult
  $Res call(
      {String name,
      String publicKey,
      WalletType contract,
      int workchain,
      String? explicitAddress});

  $WalletTypeCopyWith<$Res> get contract;
}

/// @nodoc
class _$AccountToAddCopyWithImpl<$Res, $Val extends AccountToAdd>
    implements $AccountToAddCopyWith<$Res> {
  _$AccountToAddCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publicKey = null,
    Object? contract = null,
    Object? workchain = null,
    Object? explicitAddress = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as WalletType,
      workchain: null == workchain
          ? _value.workchain
          : workchain // ignore: cast_nullable_to_non_nullable
              as int,
      explicitAddress: freezed == explicitAddress
          ? _value.explicitAddress
          : explicitAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletTypeCopyWith<$Res> get contract {
    return $WalletTypeCopyWith<$Res>(_value.contract, (value) {
      return _then(_value.copyWith(contract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AccountToAddCopyWith<$Res>
    implements $AccountToAddCopyWith<$Res> {
  factory _$$_AccountToAddCopyWith(
          _$_AccountToAdd value, $Res Function(_$_AccountToAdd) then) =
      __$$_AccountToAddCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      String publicKey,
      WalletType contract,
      int workchain,
      String? explicitAddress});

  @override
  $WalletTypeCopyWith<$Res> get contract;
}

/// @nodoc
class __$$_AccountToAddCopyWithImpl<$Res>
    extends _$AccountToAddCopyWithImpl<$Res, _$_AccountToAdd>
    implements _$$_AccountToAddCopyWith<$Res> {
  __$$_AccountToAddCopyWithImpl(
      _$_AccountToAdd _value, $Res Function(_$_AccountToAdd) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? publicKey = null,
    Object? contract = null,
    Object? workchain = null,
    Object? explicitAddress = freezed,
  }) {
    return _then(_$_AccountToAdd(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      publicKey: null == publicKey
          ? _value.publicKey
          : publicKey // ignore: cast_nullable_to_non_nullable
              as String,
      contract: null == contract
          ? _value.contract
          : contract // ignore: cast_nullable_to_non_nullable
              as WalletType,
      workchain: null == workchain
          ? _value.workchain
          : workchain // ignore: cast_nullable_to_non_nullable
              as int,
      explicitAddress: freezed == explicitAddress
          ? _value.explicitAddress
          : explicitAddress // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AccountToAdd implements _AccountToAdd {
  const _$_AccountToAdd(
      {required this.name,
      required this.publicKey,
      required this.contract,
      required this.workchain,
      this.explicitAddress});

  factory _$_AccountToAdd.fromJson(Map<String, dynamic> json) =>
      _$$_AccountToAddFromJson(json);

  @override
  final String name;
  @override
  final String publicKey;
  @override
  final WalletType contract;
  @override
  final int workchain;
  @override
  final String? explicitAddress;

  @override
  String toString() {
    return 'AccountToAdd(name: $name, publicKey: $publicKey, contract: $contract, workchain: $workchain, explicitAddress: $explicitAddress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AccountToAdd &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.publicKey, publicKey) ||
                other.publicKey == publicKey) &&
            (identical(other.contract, contract) ||
                other.contract == contract) &&
            (identical(other.workchain, workchain) ||
                other.workchain == workchain) &&
            (identical(other.explicitAddress, explicitAddress) ||
                other.explicitAddress == explicitAddress));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, publicKey, contract, workchain, explicitAddress);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AccountToAddCopyWith<_$_AccountToAdd> get copyWith =>
      __$$_AccountToAddCopyWithImpl<_$_AccountToAdd>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AccountToAddToJson(
      this,
    );
  }
}

abstract class _AccountToAdd implements AccountToAdd {
  const factory _AccountToAdd(
      {required final String name,
      required final String publicKey,
      required final WalletType contract,
      required final int workchain,
      final String? explicitAddress}) = _$_AccountToAdd;

  factory _AccountToAdd.fromJson(Map<String, dynamic> json) =
      _$_AccountToAdd.fromJson;

  @override
  String get name;
  @override
  String get publicKey;
  @override
  WalletType get contract;
  @override
  int get workchain;
  @override
  String? get explicitAddress;
  @override
  @JsonKey(ignore: true)
  _$$_AccountToAddCopyWith<_$_AccountToAdd> get copyWith =>
      throw _privateConstructorUsedError;
}
