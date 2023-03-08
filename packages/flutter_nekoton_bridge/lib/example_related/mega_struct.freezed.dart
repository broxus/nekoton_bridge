// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mega_struct.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Coords _$CoordsFromJson(Map<String, dynamic> json) {
  return _Coords.fromJson(json);
}

/// @nodoc
mixin _$Coords {
  double get x => throw _privateConstructorUsedError;
  double get y => throw _privateConstructorUsedError;
  double get z => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CoordsCopyWith<Coords> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CoordsCopyWith<$Res> {
  factory $CoordsCopyWith(Coords value, $Res Function(Coords) then) =
      _$CoordsCopyWithImpl<$Res, Coords>;
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class _$CoordsCopyWithImpl<$Res, $Val extends Coords>
    implements $CoordsCopyWith<$Res> {
  _$CoordsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_value.copyWith(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CoordsCopyWith<$Res> implements $CoordsCopyWith<$Res> {
  factory _$$_CoordsCopyWith(_$_Coords value, $Res Function(_$_Coords) then) =
      __$$_CoordsCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class __$$_CoordsCopyWithImpl<$Res>
    extends _$CoordsCopyWithImpl<$Res, _$_Coords>
    implements _$$_CoordsCopyWith<$Res> {
  __$$_CoordsCopyWithImpl(_$_Coords _value, $Res Function(_$_Coords) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_$_Coords(
      x: null == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _value.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _value.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Coords with DiagnosticableTreeMixin implements _Coords {
  const _$_Coords({required this.x, required this.y, required this.z});

  factory _$_Coords.fromJson(Map<String, dynamic> json) =>
      _$$_CoordsFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final double z;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Coords(x: $x, y: $y, z: $z)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'Coords'))
      ..add(DiagnosticsProperty('x', x))
      ..add(DiagnosticsProperty('y', y))
      ..add(DiagnosticsProperty('z', z));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Coords &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, z);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CoordsCopyWith<_$_Coords> get copyWith =>
      __$$_CoordsCopyWithImpl<_$_Coords>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CoordsToJson(
      this,
    );
  }
}

abstract class _Coords implements Coords {
  const factory _Coords(
      {required final double x,
      required final double y,
      required final double z}) = _$_Coords;

  factory _Coords.fromJson(Map<String, dynamic> json) = _$_Coords.fromJson;

  @override
  double get x;
  @override
  double get y;
  @override
  double get z;
  @override
  @JsonKey(ignore: true)
  _$$_CoordsCopyWith<_$_Coords> get copyWith =>
      throw _privateConstructorUsedError;
}

MegaStruct _$MegaStructFromJson(Map<String, dynamic> json) {
  return _MegaStruct.fromJson(json);
}

/// @nodoc
mixin _$MegaStruct {
  String get name => throw _privateConstructorUsedError;
  Coords get coords => throw _privateConstructorUsedError;
  Map<String, String> get props => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MegaStructCopyWith<MegaStruct> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MegaStructCopyWith<$Res> {
  factory $MegaStructCopyWith(
          MegaStruct value, $Res Function(MegaStruct) then) =
      _$MegaStructCopyWithImpl<$Res, MegaStruct>;
  @useResult
  $Res call({String name, Coords coords, Map<String, String> props});

  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class _$MegaStructCopyWithImpl<$Res, $Val extends MegaStruct>
    implements $MegaStructCopyWith<$Res> {
  _$MegaStructCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coords = null,
    Object? props = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
      props: null == props
          ? _value.props
          : props // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $CoordsCopyWith<$Res> get coords {
    return $CoordsCopyWith<$Res>(_value.coords, (value) {
      return _then(_value.copyWith(coords: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_MegaStructCopyWith<$Res>
    implements $MegaStructCopyWith<$Res> {
  factory _$$_MegaStructCopyWith(
          _$_MegaStruct value, $Res Function(_$_MegaStruct) then) =
      __$$_MegaStructCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, Coords coords, Map<String, String> props});

  @override
  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class __$$_MegaStructCopyWithImpl<$Res>
    extends _$MegaStructCopyWithImpl<$Res, _$_MegaStruct>
    implements _$$_MegaStructCopyWith<$Res> {
  __$$_MegaStructCopyWithImpl(
      _$_MegaStruct _value, $Res Function(_$_MegaStruct) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coords = null,
    Object? props = null,
  }) {
    return _then(_$_MegaStruct(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _value.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
      props: null == props
          ? _value._props
          : props // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MegaStruct with DiagnosticableTreeMixin implements _MegaStruct {
  const _$_MegaStruct(
      {required this.name,
      required this.coords,
      required final Map<String, String> props})
      : _props = props;

  factory _$_MegaStruct.fromJson(Map<String, dynamic> json) =>
      _$$_MegaStructFromJson(json);

  @override
  final String name;
  @override
  final Coords coords;
  final Map<String, String> _props;
  @override
  Map<String, String> get props {
    if (_props is EqualUnmodifiableMapView) return _props;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_props);
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MegaStruct(name: $name, coords: $coords, props: $props)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'MegaStruct'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('coords', coords))
      ..add(DiagnosticsProperty('props', props));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MegaStruct &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coords, coords) || other.coords == coords) &&
            const DeepCollectionEquality().equals(other._props, _props));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, coords, const DeepCollectionEquality().hash(_props));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_MegaStructCopyWith<_$_MegaStruct> get copyWith =>
      __$$_MegaStructCopyWithImpl<_$_MegaStruct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MegaStructToJson(
      this,
    );
  }
}

abstract class _MegaStruct implements MegaStruct {
  const factory _MegaStruct(
      {required final String name,
      required final Coords coords,
      required final Map<String, String> props}) = _$_MegaStruct;

  factory _MegaStruct.fromJson(Map<String, dynamic> json) =
      _$_MegaStruct.fromJson;

  @override
  String get name;
  @override
  Coords get coords;
  @override
  Map<String, String> get props;
  @override
  @JsonKey(ignore: true)
  _$$_MegaStructCopyWith<_$_MegaStruct> get copyWith =>
      throw _privateConstructorUsedError;
}
