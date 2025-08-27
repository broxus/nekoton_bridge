// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'models.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$KeySigner {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is KeySigner);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'KeySigner()';
  }
}

/// @nodoc
class $KeySignerCopyWith<$Res> {
  $KeySignerCopyWith(KeySigner _, $Res Function(KeySigner) __);
}

/// Adds pattern-matching-related methods to [KeySigner].
extension KeySignerPatterns on KeySigner {
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
    TResult Function(KeySigner_Encrypted value)? encrypted,
    TResult Function(KeySigner_Derived value)? derived,
    TResult Function(KeySigner_Ledger value)? ledger,
    TResult Function(KeySigner_Stub value)? stub,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case KeySigner_Encrypted() when encrypted != null:
        return encrypted(_that);
      case KeySigner_Derived() when derived != null:
        return derived(_that);
      case KeySigner_Ledger() when ledger != null:
        return ledger(_that);
      case KeySigner_Stub() when stub != null:
        return stub(_that);
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
    required TResult Function(KeySigner_Encrypted value) encrypted,
    required TResult Function(KeySigner_Derived value) derived,
    required TResult Function(KeySigner_Ledger value) ledger,
    required TResult Function(KeySigner_Stub value) stub,
  }) {
    final _that = this;
    switch (_that) {
      case KeySigner_Encrypted():
        return encrypted(_that);
      case KeySigner_Derived():
        return derived(_that);
      case KeySigner_Ledger():
        return ledger(_that);
      case KeySigner_Stub():
        return stub(_that);
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
    TResult? Function(KeySigner_Encrypted value)? encrypted,
    TResult? Function(KeySigner_Derived value)? derived,
    TResult? Function(KeySigner_Ledger value)? ledger,
    TResult? Function(KeySigner_Stub value)? stub,
  }) {
    final _that = this;
    switch (_that) {
      case KeySigner_Encrypted() when encrypted != null:
        return encrypted(_that);
      case KeySigner_Derived() when derived != null:
        return derived(_that);
      case KeySigner_Ledger() when ledger != null:
        return ledger(_that);
      case KeySigner_Stub() when stub != null:
        return stub(_that);
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
    TResult Function()? encrypted,
    TResult Function()? derived,
    TResult Function()? ledger,
    TResult Function(bool field0)? stub,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case KeySigner_Encrypted() when encrypted != null:
        return encrypted();
      case KeySigner_Derived() when derived != null:
        return derived();
      case KeySigner_Ledger() when ledger != null:
        return ledger();
      case KeySigner_Stub() when stub != null:
        return stub(_that.field0);
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
    required TResult Function() encrypted,
    required TResult Function() derived,
    required TResult Function() ledger,
    required TResult Function(bool field0) stub,
  }) {
    final _that = this;
    switch (_that) {
      case KeySigner_Encrypted():
        return encrypted();
      case KeySigner_Derived():
        return derived();
      case KeySigner_Ledger():
        return ledger();
      case KeySigner_Stub():
        return stub(_that.field0);
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
    TResult? Function()? encrypted,
    TResult? Function()? derived,
    TResult? Function()? ledger,
    TResult? Function(bool field0)? stub,
  }) {
    final _that = this;
    switch (_that) {
      case KeySigner_Encrypted() when encrypted != null:
        return encrypted();
      case KeySigner_Derived() when derived != null:
        return derived();
      case KeySigner_Ledger() when ledger != null:
        return ledger();
      case KeySigner_Stub() when stub != null:
        return stub(_that.field0);
      case _:
        return null;
    }
  }
}

/// @nodoc

class KeySigner_Encrypted extends KeySigner {
  const KeySigner_Encrypted() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is KeySigner_Encrypted);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'KeySigner.encrypted()';
  }
}

/// @nodoc

class KeySigner_Derived extends KeySigner {
  const KeySigner_Derived() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is KeySigner_Derived);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'KeySigner.derived()';
  }
}

/// @nodoc

class KeySigner_Ledger extends KeySigner {
  const KeySigner_Ledger() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is KeySigner_Ledger);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'KeySigner.ledger()';
  }
}

/// @nodoc

class KeySigner_Stub extends KeySigner {
  const KeySigner_Stub(this.field0) : super._();

  final bool field0;

  /// Create a copy of KeySigner
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $KeySigner_StubCopyWith<KeySigner_Stub> get copyWith =>
      _$KeySigner_StubCopyWithImpl<KeySigner_Stub>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is KeySigner_Stub &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'KeySigner.stub(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $KeySigner_StubCopyWith<$Res>
    implements $KeySignerCopyWith<$Res> {
  factory $KeySigner_StubCopyWith(
          KeySigner_Stub value, $Res Function(KeySigner_Stub) _then) =
      _$KeySigner_StubCopyWithImpl;
  @useResult
  $Res call({bool field0});
}

/// @nodoc
class _$KeySigner_StubCopyWithImpl<$Res>
    implements $KeySigner_StubCopyWith<$Res> {
  _$KeySigner_StubCopyWithImpl(this._self, this._then);

  final KeySigner_Stub _self;
  final $Res Function(KeySigner_Stub) _then;

  /// Create a copy of KeySigner
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(KeySigner_Stub(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

// dart format on
