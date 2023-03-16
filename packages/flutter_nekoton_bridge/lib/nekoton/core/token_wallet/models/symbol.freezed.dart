// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

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
      _$SymbolCopyWithImpl<$Res>;
  $Res call(
      {String name, String fullName, int decimals, String rootTokenContract});
}

/// @nodoc
class _$SymbolCopyWithImpl<$Res> implements $SymbolCopyWith<$Res> {
  _$SymbolCopyWithImpl(this._value, this._then);

  final Symbol _value;
  // ignore: unused_field
  final $Res Function(Symbol) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? decimals = freezed,
    Object? rootTokenContract = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: decimals == freezed
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      rootTokenContract: rootTokenContract == freezed
          ? _value.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_SymbolCopyWith<$Res> implements $SymbolCopyWith<$Res> {
  factory _$$_SymbolCopyWith(_$_Symbol value, $Res Function(_$_Symbol) then) =
      __$$_SymbolCopyWithImpl<$Res>;
  @override
  $Res call(
      {String name, String fullName, int decimals, String rootTokenContract});
}

/// @nodoc
class __$$_SymbolCopyWithImpl<$Res> extends _$SymbolCopyWithImpl<$Res>
    implements _$$_SymbolCopyWith<$Res> {
  __$$_SymbolCopyWithImpl(_$_Symbol _value, $Res Function(_$_Symbol) _then)
      : super(_value, (v) => _then(v as _$_Symbol));

  @override
  _$_Symbol get _value => super._value as _$_Symbol;

  @override
  $Res call({
    Object? name = freezed,
    Object? fullName = freezed,
    Object? decimals = freezed,
    Object? rootTokenContract = freezed,
  }) {
    return _then(_$_Symbol(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: fullName == freezed
          ? _value.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: decimals == freezed
          ? _value.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      rootTokenContract: rootTokenContract == freezed
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
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.fullName, fullName) &&
            const DeepCollectionEquality().equals(other.decimals, decimals) &&
            const DeepCollectionEquality()
                .equals(other.rootTokenContract, rootTokenContract));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(fullName),
      const DeepCollectionEquality().hash(decimals),
      const DeepCollectionEquality().hash(rootTokenContract));

  @JsonKey(ignore: true)
  @override
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
