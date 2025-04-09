// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'abi_param.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AbiParam {
  String get name;
  String get type;
  List<AbiParam>? get components;

  /// Create a copy of AbiParam
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $AbiParamCopyWith<AbiParam> get copyWith =>
      _$AbiParamCopyWithImpl<AbiParam>(this as AbiParam, _$identity);

  /// Serializes this AbiParam to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is AbiParam &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other.components, components));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, type, const DeepCollectionEquality().hash(components));

  @override
  String toString() {
    return 'AbiParam(name: $name, type: $type, components: $components)';
  }
}

/// @nodoc
abstract mixin class $AbiParamCopyWith<$Res> {
  factory $AbiParamCopyWith(AbiParam value, $Res Function(AbiParam) _then) =
      _$AbiParamCopyWithImpl;
  @useResult
  $Res call({String name, String type, List<AbiParam>? components});
}

/// @nodoc
class _$AbiParamCopyWithImpl<$Res> implements $AbiParamCopyWith<$Res> {
  _$AbiParamCopyWithImpl(this._self, this._then);

  final AbiParam _self;
  final $Res Function(AbiParam) _then;

  /// Create a copy of AbiParam
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? components = freezed,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      components: freezed == components
          ? _self.components
          : components // ignore: cast_nullable_to_non_nullable
              as List<AbiParam>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _AbiParam implements AbiParam {
  const _AbiParam(
      {required this.name,
      required this.type,
      final List<AbiParam>? components})
      : _components = components;
  factory _AbiParam.fromJson(Map<String, dynamic> json) =>
      _$AbiParamFromJson(json);

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

  /// Create a copy of AbiParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$AbiParamCopyWith<_AbiParam> get copyWith =>
      __$AbiParamCopyWithImpl<_AbiParam>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$AbiParamToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AbiParam &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._components, _components));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, type,
      const DeepCollectionEquality().hash(_components));

  @override
  String toString() {
    return 'AbiParam(name: $name, type: $type, components: $components)';
  }
}

/// @nodoc
abstract mixin class _$AbiParamCopyWith<$Res>
    implements $AbiParamCopyWith<$Res> {
  factory _$AbiParamCopyWith(_AbiParam value, $Res Function(_AbiParam) _then) =
      __$AbiParamCopyWithImpl;
  @override
  @useResult
  $Res call({String name, String type, List<AbiParam>? components});
}

/// @nodoc
class __$AbiParamCopyWithImpl<$Res> implements _$AbiParamCopyWith<$Res> {
  __$AbiParamCopyWithImpl(this._self, this._then);

  final _AbiParam _self;
  final $Res Function(_AbiParam) _then;

  /// Create a copy of AbiParam
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? type = null,
    Object? components = freezed,
  }) {
    return _then(_AbiParam(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _self.type
          : type // ignore: cast_nullable_to_non_nullable
              as String,
      components: freezed == components
          ? _self._components
          : components // ignore: cast_nullable_to_non_nullable
              as List<AbiParam>?,
    ));
  }
}

// dart format on
