// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'address.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Address _$AddressFromJson(Map<String, dynamic> json) {
  return _FromString.fromJson(json);
}

/// @nodoc
mixin _$Address {
  String get address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AddressCopyWith<Address> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AddressCopyWith<$Res> {
  factory $AddressCopyWith(Address value, $Res Function(Address) then) =
      _$AddressCopyWithImpl<$Res, Address>;
  @useResult
  $Res call({String address});
}

/// @nodoc
class _$AddressCopyWithImpl<$Res, $Val extends Address>
    implements $AddressCopyWith<$Res> {
  _$AddressCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_FromStringCopyWith<$Res> implements $AddressCopyWith<$Res> {
  factory _$$_FromStringCopyWith(
          _$_FromString value, $Res Function(_$_FromString) then) =
      __$$_FromStringCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String address});
}

/// @nodoc
class __$$_FromStringCopyWithImpl<$Res>
    extends _$AddressCopyWithImpl<$Res, _$_FromString>
    implements _$$_FromStringCopyWith<$Res> {
  __$$_FromStringCopyWithImpl(
      _$_FromString _value, $Res Function(_$_FromString) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
  }) {
    return _then(_$_FromString(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FromString implements _FromString {
  const _$_FromString({required this.address});

  factory _$_FromString.fromJson(Map<String, dynamic> json) =>
      _$$_FromStringFromJson(json);

  @override
  final String address;

  @override
  String toString() {
    return 'Address(address: $address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FromString &&
            (identical(other.address, address) || other.address == address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_FromStringCopyWith<_$_FromString> get copyWith =>
      __$$_FromStringCopyWithImpl<_$_FromString>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FromStringToJson(
      this,
    );
  }
}

abstract class _FromString implements Address {
  const factory _FromString({required final String address}) = _$_FromString;

  factory _FromString.fromJson(Map<String, dynamic> json) =
      _$_FromString.fromJson;

  @override
  String get address;
  @override
  @JsonKey(ignore: true)
  _$$_FromStringCopyWith<_$_FromString> get copyWith =>
      throw _privateConstructorUsedError;
}
