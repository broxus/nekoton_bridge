// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'internal_message.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

InternalMessage _$InternalMessageFromJson(Map<String, dynamic> json) {
  return _InternalMessage.fromJson(json);
}

/// @nodoc
mixin _$InternalMessage {
  Address? get source => throw _privateConstructorUsedError;
  Address get destination => throw _privateConstructorUsedError;
  @amountJsonConverter
  BigInt get amount => throw _privateConstructorUsedError;
  bool get bounce => throw _privateConstructorUsedError;
  String get body => throw _privateConstructorUsedError;

  /// Serializes this InternalMessage to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of InternalMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $InternalMessageCopyWith<InternalMessage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InternalMessageCopyWith<$Res> {
  factory $InternalMessageCopyWith(
          InternalMessage value, $Res Function(InternalMessage) then) =
      _$InternalMessageCopyWithImpl<$Res, InternalMessage>;
  @useResult
  $Res call(
      {Address? source,
      Address destination,
      @amountJsonConverter BigInt amount,
      bool bounce,
      String body});

  $AddressCopyWith<$Res>? get source;
  $AddressCopyWith<$Res> get destination;
}

/// @nodoc
class _$InternalMessageCopyWithImpl<$Res, $Val extends InternalMessage>
    implements $InternalMessageCopyWith<$Res> {
  _$InternalMessageCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of InternalMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? destination = null,
    Object? amount = null,
    Object? bounce = null,
    Object? body = null,
  }) {
    return _then(_value.copyWith(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Address?,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }

  /// Create a copy of InternalMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res>? get source {
    if (_value.source == null) {
      return null;
    }

    return $AddressCopyWith<$Res>(_value.source!, (value) {
      return _then(_value.copyWith(source: value) as $Val);
    });
  }

  /// Create a copy of InternalMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get destination {
    return $AddressCopyWith<$Res>(_value.destination, (value) {
      return _then(_value.copyWith(destination: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$InternalMessageImplCopyWith<$Res>
    implements $InternalMessageCopyWith<$Res> {
  factory _$$InternalMessageImplCopyWith(_$InternalMessageImpl value,
          $Res Function(_$InternalMessageImpl) then) =
      __$$InternalMessageImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {Address? source,
      Address destination,
      @amountJsonConverter BigInt amount,
      bool bounce,
      String body});

  @override
  $AddressCopyWith<$Res>? get source;
  @override
  $AddressCopyWith<$Res> get destination;
}

/// @nodoc
class __$$InternalMessageImplCopyWithImpl<$Res>
    extends _$InternalMessageCopyWithImpl<$Res, _$InternalMessageImpl>
    implements _$$InternalMessageImplCopyWith<$Res> {
  __$$InternalMessageImplCopyWithImpl(
      _$InternalMessageImpl _value, $Res Function(_$InternalMessageImpl) _then)
      : super(_value, _then);

  /// Create a copy of InternalMessage
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? source = freezed,
    Object? destination = null,
    Object? amount = null,
    Object? bounce = null,
    Object? body = null,
  }) {
    return _then(_$InternalMessageImpl(
      source: freezed == source
          ? _value.source
          : source // ignore: cast_nullable_to_non_nullable
              as Address?,
      destination: null == destination
          ? _value.destination
          : destination // ignore: cast_nullable_to_non_nullable
              as Address,
      amount: null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as BigInt,
      bounce: null == bounce
          ? _value.bounce
          : bounce // ignore: cast_nullable_to_non_nullable
              as bool,
      body: null == body
          ? _value.body
          : body // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$InternalMessageImpl implements _InternalMessage {
  _$InternalMessageImpl(
      {this.source,
      required this.destination,
      @amountJsonConverter required this.amount,
      required this.bounce,
      required this.body});

  factory _$InternalMessageImpl.fromJson(Map<String, dynamic> json) =>
      _$$InternalMessageImplFromJson(json);

  @override
  final Address? source;
  @override
  final Address destination;
  @override
  @amountJsonConverter
  final BigInt amount;
  @override
  final bool bounce;
  @override
  final String body;

  @override
  String toString() {
    return 'InternalMessage(source: $source, destination: $destination, amount: $amount, bounce: $bounce, body: $body)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InternalMessageImpl &&
            (identical(other.source, source) || other.source == source) &&
            (identical(other.destination, destination) ||
                other.destination == destination) &&
            (identical(other.amount, amount) || other.amount == amount) &&
            (identical(other.bounce, bounce) || other.bounce == bounce) &&
            (identical(other.body, body) || other.body == body));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, source, destination, amount, bounce, body);

  /// Create a copy of InternalMessage
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InternalMessageImplCopyWith<_$InternalMessageImpl> get copyWith =>
      __$$InternalMessageImplCopyWithImpl<_$InternalMessageImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$InternalMessageImplToJson(
      this,
    );
  }
}

abstract class _InternalMessage implements InternalMessage {
  factory _InternalMessage(
      {final Address? source,
      required final Address destination,
      @amountJsonConverter required final BigInt amount,
      required final bool bounce,
      required final String body}) = _$InternalMessageImpl;

  factory _InternalMessage.fromJson(Map<String, dynamic> json) =
      _$InternalMessageImpl.fromJson;

  @override
  Address? get source;
  @override
  Address get destination;
  @override
  @amountJsonConverter
  BigInt get amount;
  @override
  bool get bounce;
  @override
  String get body;

  /// Create a copy of InternalMessage
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InternalMessageImplCopyWith<_$InternalMessageImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
