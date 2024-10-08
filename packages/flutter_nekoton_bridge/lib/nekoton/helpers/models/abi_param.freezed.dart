// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abi_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

AbiParam _$AbiParamFromJson(Map<String, dynamic> json) {
  return _AbiParam.fromJson(json);
}

/// @nodoc
mixin _$AbiParam {
  String get name => throw _privateConstructorUsedError;
  String get type => throw _privateConstructorUsedError;
  List<AbiParam>? get components => throw _privateConstructorUsedError;

  /// Serializes this AbiParam to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of AbiParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $AbiParamCopyWith<AbiParam> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AbiParamCopyWith<$Res> {
  factory $AbiParamCopyWith(AbiParam value, $Res Function(AbiParam) then) =
      _$AbiParamCopyWithImpl<$Res, AbiParam>;
  @useResult
  $Res call({String name, String type, List<AbiParam>? components});
}

/// @nodoc
class _$AbiParamCopyWithImpl<$Res, $Val extends AbiParam>
    implements $AbiParamCopyWith<$Res> {
  _$AbiParamCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AbiParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? components = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      components: freezed == components
          ? _value.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<AbiParam>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$AbiParamImplCopyWith<$Res>
    implements $AbiParamCopyWith<$Res> {
  factory _$$AbiParamImplCopyWith(
          _$AbiParamImpl value, $Res Function(_$AbiParamImpl) then) =
      __$$AbiParamImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String type, List<AbiParam>? components});
}

/// @nodoc
class __$$AbiParamImplCopyWithImpl<$Res>
    extends _$AbiParamCopyWithImpl<$Res, _$AbiParamImpl>
    implements _$$AbiParamImplCopyWith<$Res> {
  __$$AbiParamImplCopyWithImpl(
      _$AbiParamImpl _value, $Res Function(_$AbiParamImpl) _then)
      : super(_value, _then);

  /// Create a copy of AbiParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? components = freezed,
  }) {
    return _then(_$AbiParamImpl(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      components: freezed == components
          ? _value._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<AbiParam>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$AbiParamImpl implements _AbiParam {
  const _$AbiParamImpl(
      {required this.name,
      required this.type,
      final List<AbiParam>? components})
      : _components = components;

  factory _$AbiParamImpl.fromJson(Map<String, dynamic> json) =>
      _$$AbiParamImplFromJson(json);

  @override
  final String name;
  @override
  final String type;
  final List<AbiParam>? _components;
  @override
  List<AbiParam>? get components {
    final value = _components;
    if (value == null) return null;
    if (_components is EqualUnmodifiableListView) return _components;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'AbiParam(name: $name, type: $type, components: $components)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AbiParamImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._components, _components));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type,
      const DeepCollectionEquality().hash(_components));

  /// Create a copy of AbiParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AbiParamImplCopyWith<_$AbiParamImpl> get copyWith =>
      __$$AbiParamImplCopyWithImpl<_$AbiParamImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$AbiParamImplToJson(
      this,
    );
  }
}

abstract class _AbiParam implements AbiParam {
  const factory _AbiParam(
      {required final String name,
      required final String type,
      final List<AbiParam>? components}) = _$AbiParamImpl;

  factory _AbiParam.fromJson(Map<String, dynamic> json) =
      _$AbiParamImpl.fromJson;

  @override
  String get name;
  @override
  String get type;
  @override
  List<AbiParam>? get components;

  /// Create a copy of AbiParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AbiParamImplCopyWith<_$AbiParamImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
