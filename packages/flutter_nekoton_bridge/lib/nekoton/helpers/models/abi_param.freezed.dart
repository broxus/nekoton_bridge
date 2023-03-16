// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'abi_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

AbiParam _$AbiParamFromJson(Map<String, dynamic> json) {
  return _AbiParam.fromJson(json);
}

/// @nodoc
mixin _$AbiParam {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<AbiParam>? get components => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AbiParamCopyWith<AbiParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbiParamCopyWith<$Res> {
  factory $AbiParamCopyWith(AbiParam value, $Res Function(AbiParam) then) =
      _$AbiParamCopyWithImpl<$Res>;
  $Res call({String name, String type, List<AbiParam>? components});
}

/// @nodoc
class _$AbiParamCopyWithImpl<$Res> implements $AbiParamCopyWith<$Res> {
  _$AbiParamCopyWithImpl(this._value, this._then);

  final AbiParam _value;
  // ignore: unused_field
  final $Res Function(AbiParam) _then;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? components = freezed,
  }) {
    return _then(_value.copyWith(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      components: components == freezed
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<AbiParam>?,
    ));
  }
}

/// @nodoc
abstract class _$$_AbiParamCopyWith<$Res> implements $AbiParamCopyWith<$Res> {
  factory _$$_AbiParamCopyWith(
          _$_AbiParam value, $Res Function(_$_AbiParam) then) =
      __$$_AbiParamCopyWithImpl<$Res>;
  @override
  $Res call({String name, String type, List<AbiParam>? components});
}

/// @nodoc
class __$$_AbiParamCopyWithImpl<$Res> extends _$AbiParamCopyWithImpl<$Res>
    implements _$$_AbiParamCopyWith<$Res> {
  __$$_AbiParamCopyWithImpl(
      _$_AbiParam _value, $Res Function(_$_AbiParam) _then)
      : super(_value, (v) => _then(v as _$_AbiParam));

  @override
  _$_AbiParam get _value => super._value as _$_AbiParam;

  @override
  $Res call({
    Object? name = freezed,
    Object? type = freezed,
    Object? components = freezed,
  }) {
    return _then(_$_AbiParam(
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      components: components == freezed
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<AbiParam>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AbiParam implements _AbiParam {
  const _$_AbiParam(
      {required this.name,
      required this.type,
      final List<AbiParam>? components})
      : _components = components;

  factory _$_AbiParam.fromJson(Map<String, dynamic> json) =>
      _$$_AbiParamFromJson(json);

  @override
  final String name;
  @override
  final String type;
  final List<AbiParam>? _components;
  @override
  List<AbiParam>? get components {
    final value = _components;
    if (value == null) return null;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AbiParam(name: $name, type: $type, components: $components)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AbiParam &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other._components, _components));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(_components));

  @JsonKey(ignore: true)
  @override
  _$$_AbiParamCopyWith<_$_AbiParam> get copyWith =>
      __$$_AbiParamCopyWithImpl<_$_AbiParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AbiParamToJson(
      this,
    );
  }
}

abstract class _AbiParam implements AbiParam {
  const factory _AbiParam(
      {required final String name,
      required final String type,
      final List<AbiParam>? components}) = _$_AbiParam;

  factory _AbiParam.fromJson(Map<String, dynamic> json) = _$_AbiParam.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  List<AbiParam>? get components;
  @override
  @JsonKey(ignore: true)
  _$$_AbiParamCopyWith<_$_AbiParam> get copyWith =>
      throw _privateConstructorUsedError;
}
