// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DecodedEvent _$DecodedEventFromJson(Map<String, dynamic> json) {
  return _DecodedEvent.fromJson(json);
}

/// @nodoc
mixin _$DecodedEvent {
  String get event => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DecodedEventCopyWith<DecodedEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecodedEventCopyWith<$Res> {
  factory $DecodedEventCopyWith(
          DecodedEvent value, $Res Function(DecodedEvent) then) =
      _$DecodedEventCopyWithImpl<$Res, DecodedEvent>;
  @useResult
  $Res call({String event, Map<String, dynamic> data});
}

/// @nodoc
class _$DecodedEventCopyWithImpl<$Res, $Val extends DecodedEvent>
    implements $DecodedEventCopyWith<$Res> {
  _$DecodedEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_value.copyWith(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$DecodedEventImplCopyWith<$Res>
    implements $DecodedEventCopyWith<$Res> {
  factory _$$DecodedEventImplCopyWith(
          _$DecodedEventImpl value, $Res Function(_$DecodedEventImpl) then) =
      __$$DecodedEventImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String event, Map<String, dynamic> data});
}

/// @nodoc
class __$$DecodedEventImplCopyWithImpl<$Res>
    extends _$DecodedEventCopyWithImpl<$Res, _$DecodedEventImpl>
    implements _$$DecodedEventImplCopyWith<$Res> {
  __$$DecodedEventImplCopyWithImpl(
      _$DecodedEventImpl _value, $Res Function(_$DecodedEventImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$DecodedEventImpl(
      event: null == event
          ? _value.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _value._data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<String, dynamic>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$DecodedEventImpl implements _DecodedEvent {
  const _$DecodedEventImpl(
      {required this.event, required final Map<String, dynamic> data})
      : _data = data;

  factory _$DecodedEventImpl.fromJson(Map<String, dynamic> json) =>
      _$$DecodedEventImplFromJson(json);

  @override
  final String event;
  final Map<String, dynamic> _data;
  @override
  Map<String, dynamic> get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  @override
  String toString() {
    return 'DecodedEvent(event: $event, data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DecodedEventImpl &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, event, const DeepCollectionEquality().hash(_data));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DecodedEventImplCopyWith<_$DecodedEventImpl> get copyWith =>
      __$$DecodedEventImplCopyWithImpl<_$DecodedEventImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DecodedEventImplToJson(
      this,
    );
  }
}

abstract class _DecodedEvent implements DecodedEvent {
  const factory _DecodedEvent(
      {required final String event,
      required final Map<String, dynamic> data}) = _$DecodedEventImpl;

  factory _DecodedEvent.fromJson(Map<String, dynamic> json) =
      _$DecodedEventImpl.fromJson;

  @override
  String get event;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$DecodedEventImplCopyWith<_$DecodedEventImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
