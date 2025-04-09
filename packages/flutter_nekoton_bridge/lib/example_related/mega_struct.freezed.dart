// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'mega_struct.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Coords implements DiagnosticableTreeMixin {
  double get x;
  double get y;
  double get z;

  /// Create a copy of Coords
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $CoordsCopyWith<Coords> get copyWith =>
      _$CoordsCopyWithImpl<Coords>(this as Coords, _$identity);

  /// Serializes this Coords to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Coords'))
      ..add(DiagnosticsProperty('x', x))
      ..add(DiagnosticsProperty('y', y))
      ..add(DiagnosticsProperty('z', z));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is Coords &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, z);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Coords(x: $x, y: $y, z: $z)';
  }
}

/// @nodoc
abstract mixin class $CoordsCopyWith<$Res> {
  factory $CoordsCopyWith(Coords value, $Res Function(Coords) _then) =
      _$CoordsCopyWithImpl;
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class _$CoordsCopyWithImpl<$Res> implements $CoordsCopyWith<$Res> {
  _$CoordsCopyWithImpl(this._self, this._then);

  final Coords _self;
  final $Res Function(Coords) _then;

  /// Create a copy of Coords
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_self.copyWith(
      x: null == x
          ? _self.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _self.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _self.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Coords with DiagnosticableTreeMixin implements Coords {
  const _Coords({required this.x, required this.y, required this.z});
  factory _Coords.fromJson(Map<String, dynamic> json) => _$CoordsFromJson(json);

  @override
  final double x;
  @override
  final double y;
  @override
  final double z;

  /// Create a copy of Coords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$CoordsCopyWith<_Coords> get copyWith =>
      __$CoordsCopyWithImpl<_Coords>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$CoordsToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'Coords'))
      ..add(DiagnosticsProperty('x', x))
      ..add(DiagnosticsProperty('y', y))
      ..add(DiagnosticsProperty('z', z));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Coords &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.y, y) || other.y == y) &&
            (identical(other.z, z) || other.z == z));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, x, y, z);

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'Coords(x: $x, y: $y, z: $z)';
  }
}

/// @nodoc
abstract mixin class _$CoordsCopyWith<$Res> implements $CoordsCopyWith<$Res> {
  factory _$CoordsCopyWith(_Coords value, $Res Function(_Coords) _then) =
      __$CoordsCopyWithImpl;
  @override
  @useResult
  $Res call({double x, double y, double z});
}

/// @nodoc
class __$CoordsCopyWithImpl<$Res> implements _$CoordsCopyWith<$Res> {
  __$CoordsCopyWithImpl(this._self, this._then);

  final _Coords _self;
  final $Res Function(_Coords) _then;

  /// Create a copy of Coords
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? x = null,
    Object? y = null,
    Object? z = null,
  }) {
    return _then(_Coords(
      x: null == x
          ? _self.x
          : x // ignore: cast_nullable_to_non_nullable
              as double,
      y: null == y
          ? _self.y
          : y // ignore: cast_nullable_to_non_nullable
              as double,
      z: null == z
          ? _self.z
          : z // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc
mixin _$MegaStruct implements DiagnosticableTreeMixin {
  String get name;
  Coords get coords;
  Map<String, String> get props;

  /// Create a copy of MegaStruct
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $MegaStructCopyWith<MegaStruct> get copyWith =>
      _$MegaStructCopyWithImpl<MegaStruct>(this as MegaStruct, _$identity);

  /// Serializes this MegaStruct to a JSON map.
  Map<String, dynamic> toJson();

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MegaStruct'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('coords', coords))
      ..add(DiagnosticsProperty('props', props));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is MegaStruct &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coords, coords) || other.coords == coords) &&
            const DeepCollectionEquality().equals(other.props, props));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, coords, const DeepCollectionEquality().hash(props));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MegaStruct(name: $name, coords: $coords, props: $props)';
  }
}

/// @nodoc
abstract mixin class $MegaStructCopyWith<$Res> {
  factory $MegaStructCopyWith(
          MegaStruct value, $Res Function(MegaStruct) _then) =
      _$MegaStructCopyWithImpl;
  @useResult
  $Res call({String name, Coords coords, Map<String, String> props});

  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class _$MegaStructCopyWithImpl<$Res> implements $MegaStructCopyWith<$Res> {
  _$MegaStructCopyWithImpl(this._self, this._then);

  final MegaStruct _self;
  final $Res Function(MegaStruct) _then;

  /// Create a copy of MegaStruct
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? coords = null,
    Object? props = null,
  }) {
    return _then(_self.copyWith(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _self.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
      props: null == props
          ? _self.props
          : props // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }

  /// Create a copy of MegaStruct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordsCopyWith<$Res> get coords {
    return $CoordsCopyWith<$Res>(_self.coords, (value) {
      return _then(_self.copyWith(coords: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _MegaStruct with DiagnosticableTreeMixin implements MegaStruct {
  const _MegaStruct(
      {required this.name,
      required this.coords,
      required final Map<String, String> props})
      : _props = props;
  factory _MegaStruct.fromJson(Map<String, dynamic> json) =>
      _$MegaStructFromJson(json);

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

  /// Create a copy of MegaStruct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$MegaStructCopyWith<_MegaStruct> get copyWith =>
      __$MegaStructCopyWithImpl<_MegaStruct>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$MegaStructToJson(
      this,
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    properties
      ..add(DiagnosticsProperty('type', 'MegaStruct'))
      ..add(DiagnosticsProperty('name', name))
      ..add(DiagnosticsProperty('coords', coords))
      ..add(DiagnosticsProperty('props', props));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _MegaStruct &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.coords, coords) || other.coords == coords) &&
            const DeepCollectionEquality().equals(other._props, _props));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, name, coords, const DeepCollectionEquality().hash(_props));

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'MegaStruct(name: $name, coords: $coords, props: $props)';
  }
}

/// @nodoc
abstract mixin class _$MegaStructCopyWith<$Res>
    implements $MegaStructCopyWith<$Res> {
  factory _$MegaStructCopyWith(
          _MegaStruct value, $Res Function(_MegaStruct) _then) =
      __$MegaStructCopyWithImpl;
  @override
  @useResult
  $Res call({String name, Coords coords, Map<String, String> props});

  @override
  $CoordsCopyWith<$Res> get coords;
}

/// @nodoc
class __$MegaStructCopyWithImpl<$Res> implements _$MegaStructCopyWith<$Res> {
  __$MegaStructCopyWithImpl(this._self, this._then);

  final _MegaStruct _self;
  final $Res Function(_MegaStruct) _then;

  /// Create a copy of MegaStruct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = null,
    Object? coords = null,
    Object? props = null,
  }) {
    return _then(_MegaStruct(
      name: null == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      coords: null == coords
          ? _self.coords
          : coords // ignore: cast_nullable_to_non_nullable
              as Coords,
      props: null == props
          ? _self._props
          : props // ignore: cast_nullable_to_non_nullable
              as Map<String, String>,
    ));
  }

  /// Create a copy of MegaStruct
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $CoordsCopyWith<$Res> get coords {
    return $CoordsCopyWith<$Res>(_self.coords, (value) {
      return _then(_self.copyWith(coords: value));
    });
  }
}

// dart format on
