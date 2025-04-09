// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'symbol.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Symbol {
  String get name;
  String get fullName;
  int get decimals;
  Address get rootTokenContract;

  /// Create a copy of Symbol
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $SymbolCopyWith<Symbol> get copyWith =>
      _$SymbolCopyWithImpl<Symbol>(this as Symbol, _$identity);

  /// Serializes this Symbol to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Symbol &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.rootTokenContract, rootTokenContract) ||
                other.rootTokenContract == rootTokenContract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, fullName, decimals, rootTokenContract);

  @override
  String toString() {
    return 'Symbol(name: $name, fullName: $fullName, decimals: $decimals, rootTokenContract: $rootTokenContract)';
  }
}

/// @nodoc
abstract mixin class $SymbolCopyWith<$Res> {
  factory $SymbolCopyWith(Symbol value, $Res Function(Symbol) _then) =
      _$SymbolCopyWithImpl;
  @useResult
  $Res call(
      {String name, String fullName, int decimals, Address rootTokenContract});

  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class _$SymbolCopyWithImpl<$Res> implements $SymbolCopyWith<$Res> {
  _$SymbolCopyWithImpl(this._self, this._then);

  final Symbol _self;
  final $Res Function(Symbol) _then;

  /// Create a copy of Symbol
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? decimals = null,
    Object? rootTokenContract = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _self.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      rootTokenContract: null == rootTokenContract
          ? _self.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of Symbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootTokenContract {
    return $AddressCopyWith<$Res>(_self.rootTokenContract, (value) {
      return _then(_self.copyWith(rootTokenContract: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _Symbol implements Symbol {
  const _Symbol(
      {required this.name,
      required this.fullName,
      required this.decimals,
      required this.rootTokenContract});
  factory _Symbol.fromJson(Map<String, dynamic> json) => _$SymbolFromJson(json);

  @override
  final String name;
  @override
  final String fullName;
  @override
  final int decimals;
  @override
  final Address rootTokenContract;

  /// Create a copy of Symbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$SymbolCopyWith<_Symbol> get copyWith =>
      __$SymbolCopyWithImpl<_Symbol>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$SymbolToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Symbol &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.fullName, fullName) ||
                other.fullName == fullName) &&
            (identical(other.decimals, decimals) ||
                other.decimals == decimals) &&
            (identical(other.rootTokenContract, rootTokenContract) ||
                other.rootTokenContract == rootTokenContract));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, name, fullName, decimals, rootTokenContract);

  @override
  String toString() {
    return 'Symbol(name: $name, fullName: $fullName, decimals: $decimals, rootTokenContract: $rootTokenContract)';
  }
}

/// @nodoc
abstract mixin class _$SymbolCopyWith<$Res> implements $SymbolCopyWith<$Res> {
  factory _$SymbolCopyWith(_Symbol value, $Res Function(_Symbol) _then) =
      __$SymbolCopyWithImpl;
  @override
  @useResult
  $Res call(
      {String name, String fullName, int decimals, Address rootTokenContract});

  @override
  $AddressCopyWith<$Res> get rootTokenContract;
}

/// @nodoc
class __$SymbolCopyWithImpl<$Res> implements _$SymbolCopyWith<$Res> {
  __$SymbolCopyWithImpl(this._self, this._then);

  final _Symbol _self;
  final $Res Function(_Symbol) _then;

  /// Create a copy of Symbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? fullName = null,
    Object? decimals = null,
    Object? rootTokenContract = null,
  }) {
    return _then(_Symbol(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      fullName: null == fullName
          ? _self.fullName
          : fullName // ignore: cast_nullable_to_non_nullable
              as String,
      decimals: null == decimals
          ? _self.decimals
          : decimals // ignore: cast_nullable_to_non_nullable
              as int,
      rootTokenContract: null == rootTokenContract
          ? _self.rootTokenContract
          : rootTokenContract // ignore: cast_nullable_to_non_nullable
              as Address,
    ));
  }

  /// Create a copy of Symbol
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get rootTokenContract {
    return $AddressCopyWith<$Res>(_self.rootTokenContract, (value) {
      return _then(_self.copyWith(rootTokenContract: value));
    });
  }
}

// dart format on
