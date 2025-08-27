// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
RawContractState _$RawContractStateFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'notExists':
      return RawContractStateNotExists.fromJson(json);
    case 'exists':
      return RawContractStateExists.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'RawContractState',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$RawContractState {
  Object get data;

  /// Serializes this RawContractState to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RawContractState &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'RawContractState(data: $data)';
  }
}

/// @nodoc
class $RawContractStateCopyWith<$Res> {
  $RawContractStateCopyWith(
      RawContractState _, $Res Function(RawContractState) __);
}

/// Adds pattern-matching-related methods to [RawContractState].
extension RawContractStatePatterns on RawContractState {
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
  TResult maybeMap<TResult extends Object?>({
    TResult Function(RawContractStateNotExists value)? notExists,
    TResult Function(RawContractStateExists value)? exists,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RawContractStateNotExists() when notExists != null:
        return notExists(_that);
      case RawContractStateExists() when exists != null:
        return exists(_that);
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
  TResult map<TResult extends Object?>({
    required TResult Function(RawContractStateNotExists value) notExists,
    required TResult Function(RawContractStateExists value) exists,
  }) {
    final _that = this;
    switch (_that) {
      case RawContractStateNotExists():
        return notExists(_that);
      case RawContractStateExists():
        return exists(_that);
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
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(RawContractStateNotExists value)? notExists,
    TResult? Function(RawContractStateExists value)? exists,
  }) {
    final _that = this;
    switch (_that) {
      case RawContractStateNotExists() when notExists != null:
        return notExists(_that);
      case RawContractStateExists() when exists != null:
        return exists(_that);
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
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NotExistingContract data)? notExists,
    TResult Function(ExistingContract data)? exists,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case RawContractStateNotExists() when notExists != null:
        return notExists(_that.data);
      case RawContractStateExists() when exists != null:
        return exists(_that.data);
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
  TResult when<TResult extends Object?>({
    required TResult Function(NotExistingContract data) notExists,
    required TResult Function(ExistingContract data) exists,
  }) {
    final _that = this;
    switch (_that) {
      case RawContractStateNotExists():
        return notExists(_that.data);
      case RawContractStateExists():
        return exists(_that.data);
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
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NotExistingContract data)? notExists,
    TResult? Function(ExistingContract data)? exists,
  }) {
    final _that = this;
    switch (_that) {
      case RawContractStateNotExists() when notExists != null:
        return notExists(_that.data);
      case RawContractStateExists() when exists != null:
        return exists(_that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class RawContractStateNotExists extends RawContractState {
  const RawContractStateNotExists(this.data, {final String? $type})
      : $type = $type ?? 'notExists',
        super._();
  factory RawContractStateNotExists.fromJson(Map<String, dynamic> json) =>
      _$RawContractStateNotExistsFromJson(json);

  @override
  final NotExistingContract data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RawContractStateNotExistsCopyWith<RawContractStateNotExists> get copyWith =>
      _$RawContractStateNotExistsCopyWithImpl<RawContractStateNotExists>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RawContractStateNotExistsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RawContractStateNotExists &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'RawContractState.notExists(data: $data)';
  }
}

/// @nodoc
abstract mixin class $RawContractStateNotExistsCopyWith<$Res>
    implements $RawContractStateCopyWith<$Res> {
  factory $RawContractStateNotExistsCopyWith(RawContractStateNotExists value,
          $Res Function(RawContractStateNotExists) _then) =
      _$RawContractStateNotExistsCopyWithImpl;
  @useResult
  $Res call({NotExistingContract data});

  $NotExistingContractCopyWith<$Res> get data;
}

/// @nodoc
class _$RawContractStateNotExistsCopyWithImpl<$Res>
    implements $RawContractStateNotExistsCopyWith<$Res> {
  _$RawContractStateNotExistsCopyWithImpl(this._self, this._then);

  final RawContractStateNotExists _self;
  final $Res Function(RawContractStateNotExists) _then;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(RawContractStateNotExists(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as NotExistingContract,
    ));
  }

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $NotExistingContractCopyWith<$Res> get data {
    return $NotExistingContractCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class RawContractStateExists extends RawContractState {
  const RawContractStateExists(this.data, {final String? $type})
      : $type = $type ?? 'exists',
        super._();
  factory RawContractStateExists.fromJson(Map<String, dynamic> json) =>
      _$RawContractStateExistsFromJson(json);

  @override
  final ExistingContract data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $RawContractStateExistsCopyWith<RawContractStateExists> get copyWith =>
      _$RawContractStateExistsCopyWithImpl<RawContractStateExists>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$RawContractStateExistsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is RawContractStateExists &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'RawContractState.exists(data: $data)';
  }
}

/// @nodoc
abstract mixin class $RawContractStateExistsCopyWith<$Res>
    implements $RawContractStateCopyWith<$Res> {
  factory $RawContractStateExistsCopyWith(RawContractStateExists value,
          $Res Function(RawContractStateExists) _then) =
      _$RawContractStateExistsCopyWithImpl;
  @useResult
  $Res call({ExistingContract data});

  $ExistingContractCopyWith<$Res> get data;
}

/// @nodoc
class _$RawContractStateExistsCopyWithImpl<$Res>
    implements $RawContractStateExistsCopyWith<$Res> {
  _$RawContractStateExistsCopyWithImpl(this._self, this._then);

  final RawContractStateExists _self;
  final $Res Function(RawContractStateExists) _then;

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(RawContractStateExists(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExistingContract,
    ));
  }

  /// Create a copy of RawContractState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ExistingContractCopyWith<$Res> get data {
    return $ExistingContractCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
