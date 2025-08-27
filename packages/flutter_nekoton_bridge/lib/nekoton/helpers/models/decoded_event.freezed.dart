// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DecodedEvent {
  String get event;
  TokensObject get data;

  /// Create a copy of DecodedEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DecodedEventCopyWith<DecodedEvent> get copyWith =>
      _$DecodedEventCopyWithImpl<DecodedEvent>(
          this as DecodedEvent, _$identity);

  /// Serializes this DecodedEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DecodedEvent &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, event, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'DecodedEvent(event: $event, data: $data)';
  }
}

/// @nodoc
abstract mixin class $DecodedEventCopyWith<$Res> {
  factory $DecodedEventCopyWith(
          DecodedEvent value, $Res Function(DecodedEvent) _then) =
      _$DecodedEventCopyWithImpl;
  @useResult
  $Res call({String event, TokensObject data});
}

/// @nodoc
class _$DecodedEventCopyWithImpl<$Res> implements $DecodedEventCopyWith<$Res> {
  _$DecodedEventCopyWithImpl(this._self, this._then);

  final DecodedEvent _self;
  final $Res Function(DecodedEvent) _then;

  /// Create a copy of DecodedEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_self.copyWith(
      event: null == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokensObject,
    ));
  }
}

/// Adds pattern-matching-related methods to [DecodedEvent].
extension DecodedEventPatterns on DecodedEvent {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DecodedEvent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DecodedEvent() when $default != null:
        return $default(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DecodedEvent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecodedEvent():
        return $default(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_DecodedEvent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecodedEvent() when $default != null:
        return $default(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String event, TokensObject data)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DecodedEvent() when $default != null:
        return $default(_that.event, _that.data);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String event, TokensObject data) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecodedEvent():
        return $default(_that.event, _that.data);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function(String event, TokensObject data)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecodedEvent() when $default != null:
        return $default(_that.event, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DecodedEvent implements DecodedEvent {
  const _DecodedEvent({required this.event, required final TokensObject data})
      : _data = data;
  factory _DecodedEvent.fromJson(Map<String, dynamic> json) =>
      _$DecodedEventFromJson(json);

  @override
  final String event;
  final TokensObject _data;
  @override
  TokensObject get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// Create a copy of DecodedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DecodedEventCopyWith<_DecodedEvent> get copyWith =>
      __$DecodedEventCopyWithImpl<_DecodedEvent>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DecodedEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DecodedEvent &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, event, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'DecodedEvent(event: $event, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$DecodedEventCopyWith<$Res>
    implements $DecodedEventCopyWith<$Res> {
  factory _$DecodedEventCopyWith(
          _DecodedEvent value, $Res Function(_DecodedEvent) _then) =
      __$DecodedEventCopyWithImpl;
  @override
  @useResult
  $Res call({String event, TokensObject data});
}

/// @nodoc
class __$DecodedEventCopyWithImpl<$Res>
    implements _$DecodedEventCopyWith<$Res> {
  __$DecodedEventCopyWithImpl(this._self, this._then);

  final _DecodedEvent _self;
  final $Res Function(_DecodedEvent) _then;

  /// Create a copy of DecodedEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_DecodedEvent(
      event: null == event
          ? _self.event
          : event // ignore: cast_nullable_to_non_nullable
              as String,
      data: null == data
          ? _self._data
          : data // ignore: cast_nullable_to_non_nullable
              as TokensObject,
    ));
  }
}

// dart format on
