// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symbol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Symbol _$SymbolFromJson(Map<String, dynamic> json) {
  return _Symbol.fromJson(json);
}

/// @nodoc
mixin _$Symbol {
  String get name => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  int get decimals => throw _privateConstructorUsedError;
  Address get rootTokenContract => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SymbolCopyWith<Symbol> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SymbolCopyWith<$Res> {
  factory $SymbolCopyWith(Symbol value, $Res Function(Symbol) then) =
      _$SymbolCopyWithImpl<$Res, Symbol>;
  @useResult
  $Res call(
      {String name, String fullName, int decimals, Address rootTokenContract});

  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class _$SymbolCopyWithImpl<$Res, $Val extends Symbol>
    implements $SymbolCopyWith<$Res> {
  _$SymbolCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? decimals = null,
    Object? rootTokenContract = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      rootTokenContract: null == rootTokenContract
          ? _value.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootTokenContract {
    return $AddressCopyWith<$Res>(_value.rootTokenContract, (value) {
      return _then(_value.copyWith(rootTokenContract: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$SymbolImplCopyWith<$Res> implements $SymbolCopyWith<$Res> {
  factory _$$SymbolImplCopyWith(
          _$SymbolImpl value, $Res Function(_$SymbolImpl) then) =
      __$$SymbolImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String fullName, int decimals, Address rootTokenContract});

  @override
  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class __$$SymbolImplCopyWithImpl<$Res>
    extends _$SymbolCopyWithImpl<$Res, _$SymbolImpl>
    implements _$$SymbolImplCopyWith<$Res> {
  __$$SymbolImplCopyWithImpl(
      _$SymbolImpl _value, $Res Function(_$SymbolImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? decimals = null,
    Object? rootTokenContract = null,
  }) {
    return _then(_$SymbolImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      rootTokenContract: null == rootTokenContract
          ? _value.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$SymbolImpl implements _Symbol {
  const _$SymbolImpl(
      {required this.name,
      required this.fullName,
      required this.decimals,
      required this.rootTokenContract});

  factory _$SymbolImpl.fromJson(Map<String, dynamic> json) =>
      _$$SymbolImplFromJson(json);

  @override
  final String name;
  @override
  final String fullName;
  @override
  final int decimals;
  @override
  final Address rootTokenContract;

  @override
  String toString() {
    return 'Symbol(name: $name, fullName: $fullName, decimals: $decimals, rootTokenContract: $rootTokenContract)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SymbolImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.rootTokenContract, rootTokenContract) ||
                other.rootTokenContract == rootTokenContract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, fullName, decimals, rootTokenContract);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$SymbolImplCopyWith<_$SymbolImpl> get copyWith =>
      __$$SymbolImplCopyWithImpl<_$SymbolImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$SymbolImplToJson(
      this,
    );
  }
}

abstract class _Symbol implements Symbol {
  const factory _Symbol(
      {required final String name,
      required final String fullName,
      required final int decimals,
      required final Address rootTokenContract}) = _$SymbolImpl;

  factory _Symbol.fromJson(Map<String, dynamic> json) = _$SymbolImpl.fromJson;

  @override
  String get name;
  @override
  String get fullName;
  @override
  int get decimals;
  @override
  Address get rootTokenContract;
  @override
  @JsonKey(ignore: true)
  _$$SymbolImplCopyWith<_$SymbolImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
