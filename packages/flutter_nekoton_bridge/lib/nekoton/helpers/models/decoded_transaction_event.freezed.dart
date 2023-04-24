// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DecodedTransactionEvent _$DecodedTransactionEventFromJson(
    Map<String, dynamic> json) {
  return _DecodedTransactionEvent.fromJson(json);
}

/// @nodoc
mixin _$DecodedTransactionEvent {
  String get event => throw _privateConstructorUsedError;
  Map<String, dynamic> get data => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DecodedTransactionEventCopyWith<DecodedTransactionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DecodedTransactionEventCopyWith<$Res> {
  factory $DecodedTransactionEventCopyWith(DecodedTransactionEvent value,
          $Res Function(DecodedTransactionEvent) then) =
      _$DecodedTransactionEventCopyWithImpl<$Res, DecodedTransactionEvent>;
  @useResult
  $Res call({String event, Map<String, dynamic> data});
}

/// @nodoc
class _$DecodedTransactionEventCopyWithImpl<$Res,
        $Val extends DecodedTransactionEvent>
    implements $DecodedTransactionEventCopyWith<$Res> {
  _$DecodedTransactionEventCopyWithImpl(this._value, this._then);

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
abstract class _$$_DecodedTransactionEventCopyWith<$Res>
    implements $DecodedTransactionEventCopyWith<$Res> {
  factory _$$_DecodedTransactionEventCopyWith(_$_DecodedTransactionEvent value,
          $Res Function(_$_DecodedTransactionEvent) then) =
      __$$_DecodedTransactionEventCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String event, Map<String, dynamic> data});
}

/// @nodoc
class __$$_DecodedTransactionEventCopyWithImpl<$Res>
    extends _$DecodedTransactionEventCopyWithImpl<$Res,
        _$_DecodedTransactionEvent>
    implements _$$_DecodedTransactionEventCopyWith<$Res> {
  __$$_DecodedTransactionEventCopyWithImpl(_$_DecodedTransactionEvent _value,
      $Res Function(_$_DecodedTransactionEvent) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_$_DecodedTransactionEvent(
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
class _$_DecodedTransactionEvent implements _DecodedTransactionEvent {
  const _$_DecodedTransactionEvent(
      {required this.event, required final Map<String, dynamic> data})
      : _data = data;

  factory _$_DecodedTransactionEvent.fromJson(Map<String, dynamic> json) =>
      _$$_DecodedTransactionEventFromJson(json);

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
    return 'DecodedTransactionEvent(event: $event, data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DecodedTransactionEvent &&
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
  _$$_DecodedTransactionEventCopyWith<_$_DecodedTransactionEvent>
      get copyWith =>
          __$$_DecodedTransactionEventCopyWithImpl<_$_DecodedTransactionEvent>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DecodedTransactionEventToJson(
      this,
    );
  }
}

abstract class _DecodedTransactionEvent implements DecodedTransactionEvent {
  const factory _DecodedTransactionEvent(
      {required final String event,
      required final Map<String, dynamic> data}) = _$_DecodedTransactionEvent;

  factory _DecodedTransactionEvent.fromJson(Map<String, dynamic> json) =
      _$_DecodedTransactionEvent.fromJson;

  @override
  String get event;
  @override
  Map<String, dynamic> get data;
  @override
  @JsonKey(ignore: true)
  _$$_DecodedTransactionEventCopyWith<_$_DecodedTransactionEvent>
      get copyWith => throw _privateConstructorUsedError;
}
