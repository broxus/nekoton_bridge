// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'connection_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ConnectionData {
  String get name => throw _privateConstructorUsedError;
  int get networkId => throw _privateConstructorUsedError;
  String get group => throw _privateConstructorUsedError;
  TransportType get type => throw _privateConstructorUsedError;
  List<String> get endpoints => throw _privateConstructorUsedError;
  int get timeout => throw _privateConstructorUsedError;
  bool get local => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ConnectionDataCopyWith<ConnectionData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ConnectionDataCopyWith<$Res> {
  factory $ConnectionDataCopyWith(
          ConnectionData value, $Res Function(ConnectionData) then) =
      _$ConnectionDataCopyWithImpl<$Res, ConnectionData>;
  @useResult
  $Res call(
      {String name,
      int networkId,
      String group,
      TransportType type,
      List<String> endpoints,
      int timeout,
      bool local});
}

/// @nodoc
class _$ConnectionDataCopyWithImpl<$Res, $Val extends ConnectionData>
    implements $ConnectionDataCopyWith<$Res> {
  _$ConnectionDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? networkId = null,
    Object? group = null,
    Object? type = null,
    Object? endpoints = null,
    Object? timeout = null,
    Object? local = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      networkId: null == networkId
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as int,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransportType,
      endpoints: null == endpoints
          ? _value.endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ConnectionDataCopyWith<$Res>
    implements $ConnectionDataCopyWith<$Res> {
  factory _$$_ConnectionDataCopyWith(
          _$_ConnectionData value, $Res Function(_$_ConnectionData) then) =
      __$$_ConnectionDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name,
      int networkId,
      String group,
      TransportType type,
      List<String> endpoints,
      int timeout,
      bool local});
}

/// @nodoc
class __$$_ConnectionDataCopyWithImpl<$Res>
    extends _$ConnectionDataCopyWithImpl<$Res, _$_ConnectionData>
    implements _$$_ConnectionDataCopyWith<$Res> {
  __$$_ConnectionDataCopyWithImpl(
      _$_ConnectionData _value, $Res Function(_$_ConnectionData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? networkId = null,
    Object? group = null,
    Object? type = null,
    Object? endpoints = null,
    Object? timeout = null,
    Object? local = null,
  }) {
    return _then(_$_ConnectionData(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      networkId: null == networkId
          ? _value.networkId
          : networkId // ignore: cast_nullable_to_non_nullable
              as int,
      group: null == group
          ? _value.group
          : group // ignore: cast_nullable_to_non_nullable
              as String,
      type: null == type
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as TransportType,
      endpoints: null == endpoints
          ? _value._endpoints
          : endpoints // ignore: cast_nullable_to_non_nullable
              as List<String>,
      timeout: null == timeout
          ? _value.timeout
          : timeout // ignore: cast_nullable_to_non_nullable
              as int,
      local: null == local
          ? _value.local
          : local // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$_ConnectionData implements _ConnectionData {
  const _$_ConnectionData(
      {required this.name,
      required this.networkId,
      required this.group,
      required this.type,
      required final List<String> endpoints,
      required this.timeout,
      required this.local})
      : _endpoints = endpoints;

  @override
  final String name;
  @override
  final int networkId;
  @override
  final String group;
  @override
  final TransportType type;
  final List<String> _endpoints;
  @override
  List<String> get endpoints {
    if (_endpoints is EqualUnmodifiableListView) return _endpoints;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_endpoints);
  }

  @override
  final int timeout;
  @override
  final bool local;

  @override
  String toString() {
    return 'ConnectionData(name: $name, networkId: $networkId, group: $group, type: $type, endpoints: $endpoints, timeout: $timeout, local: $local)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ConnectionData &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.networkId, networkId) ||
                other.networkId == networkId) &&
            (identical(other.group, group) || other.group == group) &&
            (identical(other.type, type) || other.type == type) &&
            const DeepCollectionEquality()
                .equals(other._endpoints, _endpoints) &&
            (identical(other.timeout, timeout) || other.timeout == timeout) &&
            (identical(other.local, local) || other.local == local));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, networkId, group, type,
      const DeepCollectionEquality().hash(_endpoints), timeout, local);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ConnectionDataCopyWith<_$_ConnectionData> get copyWith =>
      __$$_ConnectionDataCopyWithImpl<_$_ConnectionData>(this, _$identity);
}

abstract class _ConnectionData implements ConnectionData {
  const factory _ConnectionData(
      {required final String name,
      required final int networkId,
      required final String group,
      required final TransportType type,
      required final List<String> endpoints,
      required final int timeout,
      required final bool local}) = _$_ConnectionData;

  @override
  String get name;
  @override
  int get networkId;
  @override
  String get group;
  @override
  TransportType get type;
  @override
  List<String> get endpoints;
  @override
  int get timeout;
  @override
  bool get local;
  @override
  @JsonKey(ignore: true)
  _$$_ConnectionDataCopyWith<_$_ConnectionData> get copyWith =>
      throw _privateConstructorUsedError;
}
