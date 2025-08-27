// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'decoded_transaction_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DecodedTransactionEvent {
  String get event;
  TokensObject get data;

  /// Create a copy of DecodedTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DecodedTransactionEventCopyWith<DecodedTransactionEvent> get copyWith =>
      _$DecodedTransactionEventCopyWithImpl<DecodedTransactionEvent>(
          this as DecodedTransactionEvent, _$identity);

  /// Serializes this DecodedTransactionEvent to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DecodedTransactionEvent &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, event, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'DecodedTransactionEvent(event: $event, data: $data)';
  }
}

/// @nodoc
abstract mixin class $DecodedTransactionEventCopyWith<$Res> {
  factory $DecodedTransactionEventCopyWith(DecodedTransactionEvent value,
          $Res Function(DecodedTransactionEvent) _then) =
      _$DecodedTransactionEventCopyWithImpl;
  @useResult
  $Res call({String event, TokensObject data});
}

/// @nodoc
class _$DecodedTransactionEventCopyWithImpl<$Res>
    implements $DecodedTransactionEventCopyWith<$Res> {
  _$DecodedTransactionEventCopyWithImpl(this._self, this._then);

  final DecodedTransactionEvent _self;
  final $Res Function(DecodedTransactionEvent) _then;

  /// Create a copy of DecodedTransactionEvent
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

/// Adds pattern-matching-related methods to [DecodedTransactionEvent].
extension DecodedTransactionEventPatterns on DecodedTransactionEvent {
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
    TResult Function(_DecodedTransactionEvent value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DecodedTransactionEvent() when $default != null:
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
    TResult Function(_DecodedTransactionEvent value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecodedTransactionEvent():
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
    TResult? Function(_DecodedTransactionEvent value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DecodedTransactionEvent() when $default != null:
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
      case _DecodedTransactionEvent() when $default != null:
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
      case _DecodedTransactionEvent():
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
      case _DecodedTransactionEvent() when $default != null:
        return $default(_that.event, _that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DecodedTransactionEvent implements DecodedTransactionEvent {
  const _DecodedTransactionEvent(
      {required this.event, required final TokensObject data})
      : _data = data;
  factory _DecodedTransactionEvent.fromJson(Map<String, dynamic> json) =>
      _$DecodedTransactionEventFromJson(json);

  @override
  final String event;
  final TokensObject _data;
  @override
  TokensObject get data {
    if (_data is EqualUnmodifiableMapView) return _data;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(_data);
  }

  /// Create a copy of DecodedTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DecodedTransactionEventCopyWith<_DecodedTransactionEvent> get copyWith =>
      __$DecodedTransactionEventCopyWithImpl<_DecodedTransactionEvent>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DecodedTransactionEventToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DecodedTransactionEvent &&
            (identical(other.event, event) || other.event == event) &&
            const DeepCollectionEquality().equals(other._data, _data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
      runtimeType, event, const DeepCollectionEquality().hash(_data));

  @override
  String toString() {
    return 'DecodedTransactionEvent(event: $event, data: $data)';
  }
}

/// @nodoc
abstract mixin class _$DecodedTransactionEventCopyWith<$Res>
    implements $DecodedTransactionEventCopyWith<$Res> {
  factory _$DecodedTransactionEventCopyWith(_DecodedTransactionEvent value,
          $Res Function(_DecodedTransactionEvent) _then) =
      __$DecodedTransactionEventCopyWithImpl;
  @override
  @useResult
  $Res call({String event, TokensObject data});
}

/// @nodoc
class __$DecodedTransactionEventCopyWithImpl<$Res>
    implements _$DecodedTransactionEventCopyWith<$Res> {
  __$DecodedTransactionEventCopyWithImpl(this._self, this._then);

  final _DecodedTransactionEvent _self;
  final $Res Function(_DecodedTransactionEvent) _then;

  /// Create a copy of DecodedTransactionEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? event = null,
    Object? data = null,
  }) {
    return _then(_DecodedTransactionEvent(
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
