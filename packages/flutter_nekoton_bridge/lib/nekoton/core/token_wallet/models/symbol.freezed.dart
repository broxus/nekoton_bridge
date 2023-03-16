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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Symbol _$SymbolFromJson(Map<String, dynamic> json) {
  return _Symbol.fromJson(json);
}

/// @nodoc
mixin _$Symbol {
  String get name => throw _privateConstructorUsedError;
  String get fullName => throw _privateConstructorUsedError;
  int get decimals => throw _privateConstructorUsedError;
  String get rootTokenContract => throw _privateConstructorUsedError;

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
      {String name, String fullName, int decimals, String rootTokenContract});
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
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SymbolCopyWith<$Res> implements $SymbolCopyWith<$Res> {
  factory _$$_SymbolCopyWith(_$_Symbol value, $Res Function(_$_Symbol) then) =
      __$$_SymbolCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String fullName, int decimals, String rootTokenContract});
}

/// @nodoc
class __$$_SymbolCopyWithImpl<$Res>
    extends _$SymbolCopyWithImpl<$Res, _$_Symbol>
    implements _$$_SymbolCopyWith<$Res> {
  __$$_SymbolCopyWithImpl(_$_Symbol _value, $Res Function(_$_Symbol) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? decimals = null,
    Object? rootTokenContract = null,
  }) {
    return _then(_$_Symbol(
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
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Symbol implements _Symbol {
  const _$_Symbol(
      {required this.name,
      required this.fullName,
      required this.decimals,
      required this.rootTokenContract});

  factory _$_Symbol.fromJson(Map<String, dynamic> json) =>
      _$$_SymbolFromJson(json);

  @override
  final String name;
  @override
  final String fullName;
  @override
  final int decimals;
  @override
  final String rootTokenContract;

  @override
  String toString() {
    return 'Symbol(name: $name, fullName: $fullName, decimals: $decimals, rootTokenContract: $rootTokenContract)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Symbol &&
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
  _$$_SymbolCopyWith<_$_Symbol> get copyWith =>
      __$$_SymbolCopyWithImpl<_$_Symbol>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SymbolToJson(
      this,
    );
  }
}

abstract class _Symbol implements Symbol {
  const factory _Symbol(
      {required final String name,
      required final String fullName,
      required final int decimals,
      required final String rootTokenContract}) = _$_Symbol;

  factory _Symbol.fromJson(Map<String, dynamic> json) = _$_Symbol.fromJson;

  @override
  String get name;
  @override
  String get fullName;
  @override
  int get decimals;
  @override
  String get rootTokenContract;
  @override
  @JsonKey(ignore: true)
  _$$_SymbolCopyWith<_$_Symbol> get copyWith =>
      throw _privateConstructorUsedError;
}
