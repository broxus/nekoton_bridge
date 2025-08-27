// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'de_pool_receive_answer_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DePoolReceiveAnswerNotification {
  int get errorCode;
  String get comment;

  /// Create a copy of DePoolReceiveAnswerNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DePoolReceiveAnswerNotificationCopyWith<DePoolReceiveAnswerNotification>
      get copyWith => _$DePoolReceiveAnswerNotificationCopyWithImpl<
              DePoolReceiveAnswerNotification>(
          this as DePoolReceiveAnswerNotification, _$identity);

  /// Serializes this DePoolReceiveAnswerNotification to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DePoolReceiveAnswerNotification &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode, comment);

  @override
  String toString() {
    return 'DePoolReceiveAnswerNotification(errorCode: $errorCode, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class $DePoolReceiveAnswerNotificationCopyWith<$Res> {
  factory $DePoolReceiveAnswerNotificationCopyWith(
          DePoolReceiveAnswerNotification value,
          $Res Function(DePoolReceiveAnswerNotification) _then) =
      _$DePoolReceiveAnswerNotificationCopyWithImpl;
  @useResult
  $Res call({int errorCode, String comment});
}

/// @nodoc
class _$DePoolReceiveAnswerNotificationCopyWithImpl<$Res>
    implements $DePoolReceiveAnswerNotificationCopyWith<$Res> {
  _$DePoolReceiveAnswerNotificationCopyWithImpl(this._self, this._then);

  final DePoolReceiveAnswerNotification _self;
  final $Res Function(DePoolReceiveAnswerNotification) _then;

  /// Create a copy of DePoolReceiveAnswerNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? comment = null,
  }) {
    return _then(_self.copyWith(
      errorCode: null == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [DePoolReceiveAnswerNotification].
extension DePoolReceiveAnswerNotificationPatterns
    on DePoolReceiveAnswerNotification {
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
    TResult Function(_DePoolReceiveAnswerNotification value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DePoolReceiveAnswerNotification() when $default != null:
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
    TResult Function(_DePoolReceiveAnswerNotification value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DePoolReceiveAnswerNotification():
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
    TResult? Function(_DePoolReceiveAnswerNotification value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DePoolReceiveAnswerNotification() when $default != null:
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
    TResult Function(int errorCode, String comment)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _DePoolReceiveAnswerNotification() when $default != null:
        return $default(_that.errorCode, _that.comment);
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
    TResult Function(int errorCode, String comment) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DePoolReceiveAnswerNotification():
        return $default(_that.errorCode, _that.comment);
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
    TResult? Function(int errorCode, String comment)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _DePoolReceiveAnswerNotification() when $default != null:
        return $default(_that.errorCode, _that.comment);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _DePoolReceiveAnswerNotification
    implements DePoolReceiveAnswerNotification {
  const _DePoolReceiveAnswerNotification(
      {required this.errorCode, required this.comment});
  factory _DePoolReceiveAnswerNotification.fromJson(
          Map<String, dynamic> json) =>
      _$DePoolReceiveAnswerNotificationFromJson(json);

  @override
  final int errorCode;
  @override
  final String comment;

  /// Create a copy of DePoolReceiveAnswerNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DePoolReceiveAnswerNotificationCopyWith<_DePoolReceiveAnswerNotification>
      get copyWith => __$DePoolReceiveAnswerNotificationCopyWithImpl<
          _DePoolReceiveAnswerNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DePoolReceiveAnswerNotificationToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DePoolReceiveAnswerNotification &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode, comment);

  @override
  String toString() {
    return 'DePoolReceiveAnswerNotification(errorCode: $errorCode, comment: $comment)';
  }
}

/// @nodoc
abstract mixin class _$DePoolReceiveAnswerNotificationCopyWith<$Res>
    implements $DePoolReceiveAnswerNotificationCopyWith<$Res> {
  factory _$DePoolReceiveAnswerNotificationCopyWith(
          _DePoolReceiveAnswerNotification value,
          $Res Function(_DePoolReceiveAnswerNotification) _then) =
      __$DePoolReceiveAnswerNotificationCopyWithImpl;
  @override
  @useResult
  $Res call({int errorCode, String comment});
}

/// @nodoc
class __$DePoolReceiveAnswerNotificationCopyWithImpl<$Res>
    implements _$DePoolReceiveAnswerNotificationCopyWith<$Res> {
  __$DePoolReceiveAnswerNotificationCopyWithImpl(this._self, this._then);

  final _DePoolReceiveAnswerNotification _self;
  final $Res Function(_DePoolReceiveAnswerNotification) _then;

  /// Create a copy of DePoolReceiveAnswerNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? errorCode = null,
    Object? comment = null,
  }) {
    return _then(_DePoolReceiveAnswerNotification(
      errorCode: null == errorCode
          ? _self.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _self.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
