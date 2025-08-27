// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'caller.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$DynamicValue {
  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DynamicValue);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DynamicValue()';
  }
}

/// @nodoc
class $DynamicValueCopyWith<$Res> {
  $DynamicValueCopyWith(DynamicValue _, $Res Function(DynamicValue) __);
}

/// Adds pattern-matching-related methods to [DynamicValue].
extension DynamicValuePatterns on DynamicValue {
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
    TResult Function(DynamicValue_U16 value)? u16,
    TResult Function(DynamicValue_U32 value)? u32,
    TResult Function(DynamicValue_I32 value)? i32,
    TResult Function(DynamicValue_U64 value)? u64,
    TResult Function(DynamicValue_I64 value)? i64,
    TResult Function(DynamicValue_F32 value)? f32,
    TResult Function(DynamicValue_F64 value)? f64,
    TResult Function(DynamicValue_String value)? string,
    TResult Function(DynamicValue_VecU8 value)? vecU8,
    TResult Function(DynamicValue_MegaStruct value)? megaStruct,
    TResult Function(DynamicValue_Error value)? error,
    TResult Function(DynamicValue_None value)? none,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DynamicValue_U16() when u16 != null:
        return u16(_that);
      case DynamicValue_U32() when u32 != null:
        return u32(_that);
      case DynamicValue_I32() when i32 != null:
        return i32(_that);
      case DynamicValue_U64() when u64 != null:
        return u64(_that);
      case DynamicValue_I64() when i64 != null:
        return i64(_that);
      case DynamicValue_F32() when f32 != null:
        return f32(_that);
      case DynamicValue_F64() when f64 != null:
        return f64(_that);
      case DynamicValue_String() when string != null:
        return string(_that);
      case DynamicValue_VecU8() when vecU8 != null:
        return vecU8(_that);
      case DynamicValue_MegaStruct() when megaStruct != null:
        return megaStruct(_that);
      case DynamicValue_Error() when error != null:
        return error(_that);
      case DynamicValue_None() when none != null:
        return none(_that);
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
    required TResult Function(DynamicValue_U16 value) u16,
    required TResult Function(DynamicValue_U32 value) u32,
    required TResult Function(DynamicValue_I32 value) i32,
    required TResult Function(DynamicValue_U64 value) u64,
    required TResult Function(DynamicValue_I64 value) i64,
    required TResult Function(DynamicValue_F32 value) f32,
    required TResult Function(DynamicValue_F64 value) f64,
    required TResult Function(DynamicValue_String value) string,
    required TResult Function(DynamicValue_VecU8 value) vecU8,
    required TResult Function(DynamicValue_MegaStruct value) megaStruct,
    required TResult Function(DynamicValue_Error value) error,
    required TResult Function(DynamicValue_None value) none,
  }) {
    final _that = this;
    switch (_that) {
      case DynamicValue_U16():
        return u16(_that);
      case DynamicValue_U32():
        return u32(_that);
      case DynamicValue_I32():
        return i32(_that);
      case DynamicValue_U64():
        return u64(_that);
      case DynamicValue_I64():
        return i64(_that);
      case DynamicValue_F32():
        return f32(_that);
      case DynamicValue_F64():
        return f64(_that);
      case DynamicValue_String():
        return string(_that);
      case DynamicValue_VecU8():
        return vecU8(_that);
      case DynamicValue_MegaStruct():
        return megaStruct(_that);
      case DynamicValue_Error():
        return error(_that);
      case DynamicValue_None():
        return none(_that);
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
    TResult? Function(DynamicValue_U16 value)? u16,
    TResult? Function(DynamicValue_U32 value)? u32,
    TResult? Function(DynamicValue_I32 value)? i32,
    TResult? Function(DynamicValue_U64 value)? u64,
    TResult? Function(DynamicValue_I64 value)? i64,
    TResult? Function(DynamicValue_F32 value)? f32,
    TResult? Function(DynamicValue_F64 value)? f64,
    TResult? Function(DynamicValue_String value)? string,
    TResult? Function(DynamicValue_VecU8 value)? vecU8,
    TResult? Function(DynamicValue_MegaStruct value)? megaStruct,
    TResult? Function(DynamicValue_Error value)? error,
    TResult? Function(DynamicValue_None value)? none,
  }) {
    final _that = this;
    switch (_that) {
      case DynamicValue_U16() when u16 != null:
        return u16(_that);
      case DynamicValue_U32() when u32 != null:
        return u32(_that);
      case DynamicValue_I32() when i32 != null:
        return i32(_that);
      case DynamicValue_U64() when u64 != null:
        return u64(_that);
      case DynamicValue_I64() when i64 != null:
        return i64(_that);
      case DynamicValue_F32() when f32 != null:
        return f32(_that);
      case DynamicValue_F64() when f64 != null:
        return f64(_that);
      case DynamicValue_String() when string != null:
        return string(_that);
      case DynamicValue_VecU8() when vecU8 != null:
        return vecU8(_that);
      case DynamicValue_MegaStruct() when megaStruct != null:
        return megaStruct(_that);
      case DynamicValue_Error() when error != null:
        return error(_that);
      case DynamicValue_None() when none != null:
        return none(_that);
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
    TResult Function(int field0)? u16,
    TResult Function(int field0)? u32,
    TResult Function(int field0)? i32,
    TResult Function(BigInt field0)? u64,
    TResult Function(PlatformInt64 field0)? i64,
    TResult Function(double field0)? f32,
    TResult Function(double field0)? f64,
    TResult Function(String field0)? string,
    TResult Function(Uint8List field0)? vecU8,
    TResult Function(String field0)? megaStruct,
    TResult Function(ErrorCode field0)? error,
    TResult Function()? none,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case DynamicValue_U16() when u16 != null:
        return u16(_that.field0);
      case DynamicValue_U32() when u32 != null:
        return u32(_that.field0);
      case DynamicValue_I32() when i32 != null:
        return i32(_that.field0);
      case DynamicValue_U64() when u64 != null:
        return u64(_that.field0);
      case DynamicValue_I64() when i64 != null:
        return i64(_that.field0);
      case DynamicValue_F32() when f32 != null:
        return f32(_that.field0);
      case DynamicValue_F64() when f64 != null:
        return f64(_that.field0);
      case DynamicValue_String() when string != null:
        return string(_that.field0);
      case DynamicValue_VecU8() when vecU8 != null:
        return vecU8(_that.field0);
      case DynamicValue_MegaStruct() when megaStruct != null:
        return megaStruct(_that.field0);
      case DynamicValue_Error() when error != null:
        return error(_that.field0);
      case DynamicValue_None() when none != null:
        return none();
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
    required TResult Function(int field0) u16,
    required TResult Function(int field0) u32,
    required TResult Function(int field0) i32,
    required TResult Function(BigInt field0) u64,
    required TResult Function(PlatformInt64 field0) i64,
    required TResult Function(double field0) f32,
    required TResult Function(double field0) f64,
    required TResult Function(String field0) string,
    required TResult Function(Uint8List field0) vecU8,
    required TResult Function(String field0) megaStruct,
    required TResult Function(ErrorCode field0) error,
    required TResult Function() none,
  }) {
    final _that = this;
    switch (_that) {
      case DynamicValue_U16():
        return u16(_that.field0);
      case DynamicValue_U32():
        return u32(_that.field0);
      case DynamicValue_I32():
        return i32(_that.field0);
      case DynamicValue_U64():
        return u64(_that.field0);
      case DynamicValue_I64():
        return i64(_that.field0);
      case DynamicValue_F32():
        return f32(_that.field0);
      case DynamicValue_F64():
        return f64(_that.field0);
      case DynamicValue_String():
        return string(_that.field0);
      case DynamicValue_VecU8():
        return vecU8(_that.field0);
      case DynamicValue_MegaStruct():
        return megaStruct(_that.field0);
      case DynamicValue_Error():
        return error(_that.field0);
      case DynamicValue_None():
        return none();
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
    TResult? Function(int field0)? u16,
    TResult? Function(int field0)? u32,
    TResult? Function(int field0)? i32,
    TResult? Function(BigInt field0)? u64,
    TResult? Function(PlatformInt64 field0)? i64,
    TResult? Function(double field0)? f32,
    TResult? Function(double field0)? f64,
    TResult? Function(String field0)? string,
    TResult? Function(Uint8List field0)? vecU8,
    TResult? Function(String field0)? megaStruct,
    TResult? Function(ErrorCode field0)? error,
    TResult? Function()? none,
  }) {
    final _that = this;
    switch (_that) {
      case DynamicValue_U16() when u16 != null:
        return u16(_that.field0);
      case DynamicValue_U32() when u32 != null:
        return u32(_that.field0);
      case DynamicValue_I32() when i32 != null:
        return i32(_that.field0);
      case DynamicValue_U64() when u64 != null:
        return u64(_that.field0);
      case DynamicValue_I64() when i64 != null:
        return i64(_that.field0);
      case DynamicValue_F32() when f32 != null:
        return f32(_that.field0);
      case DynamicValue_F64() when f64 != null:
        return f64(_that.field0);
      case DynamicValue_String() when string != null:
        return string(_that.field0);
      case DynamicValue_VecU8() when vecU8 != null:
        return vecU8(_that.field0);
      case DynamicValue_MegaStruct() when megaStruct != null:
        return megaStruct(_that.field0);
      case DynamicValue_Error() when error != null:
        return error(_that.field0);
      case DynamicValue_None() when none != null:
        return none();
      case _:
        return null;
    }
  }
}

/// @nodoc

class DynamicValue_U16 extends DynamicValue {
  const DynamicValue_U16(this.field0) : super._();

  final int field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_U16CopyWith<DynamicValue_U16> get copyWith =>
      _$DynamicValue_U16CopyWithImpl<DynamicValue_U16>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_U16 &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'DynamicValue.u16(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_U16CopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_U16CopyWith(
          DynamicValue_U16 value, $Res Function(DynamicValue_U16) _then) =
      _$DynamicValue_U16CopyWithImpl;
  @useResult
  $Res call({int field0});
}

/// @nodoc
class _$DynamicValue_U16CopyWithImpl<$Res>
    implements $DynamicValue_U16CopyWith<$Res> {
  _$DynamicValue_U16CopyWithImpl(this._self, this._then);

  final DynamicValue_U16 _self;
  final $Res Function(DynamicValue_U16) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_U16(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class DynamicValue_U32 extends DynamicValue {
  const DynamicValue_U32(this.field0) : super._();

  final int field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_U32CopyWith<DynamicValue_U32> get copyWith =>
      _$DynamicValue_U32CopyWithImpl<DynamicValue_U32>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_U32 &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'DynamicValue.u32(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_U32CopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_U32CopyWith(
          DynamicValue_U32 value, $Res Function(DynamicValue_U32) _then) =
      _$DynamicValue_U32CopyWithImpl;
  @useResult
  $Res call({int field0});
}

/// @nodoc
class _$DynamicValue_U32CopyWithImpl<$Res>
    implements $DynamicValue_U32CopyWith<$Res> {
  _$DynamicValue_U32CopyWithImpl(this._self, this._then);

  final DynamicValue_U32 _self;
  final $Res Function(DynamicValue_U32) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_U32(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class DynamicValue_I32 extends DynamicValue {
  const DynamicValue_I32(this.field0) : super._();

  final int field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_I32CopyWith<DynamicValue_I32> get copyWith =>
      _$DynamicValue_I32CopyWithImpl<DynamicValue_I32>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_I32 &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'DynamicValue.i32(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_I32CopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_I32CopyWith(
          DynamicValue_I32 value, $Res Function(DynamicValue_I32) _then) =
      _$DynamicValue_I32CopyWithImpl;
  @useResult
  $Res call({int field0});
}

/// @nodoc
class _$DynamicValue_I32CopyWithImpl<$Res>
    implements $DynamicValue_I32CopyWith<$Res> {
  _$DynamicValue_I32CopyWithImpl(this._self, this._then);

  final DynamicValue_I32 _self;
  final $Res Function(DynamicValue_I32) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_I32(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class DynamicValue_U64 extends DynamicValue {
  const DynamicValue_U64(this.field0) : super._();

  final BigInt field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_U64CopyWith<DynamicValue_U64> get copyWith =>
      _$DynamicValue_U64CopyWithImpl<DynamicValue_U64>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_U64 &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'DynamicValue.u64(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_U64CopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_U64CopyWith(
          DynamicValue_U64 value, $Res Function(DynamicValue_U64) _then) =
      _$DynamicValue_U64CopyWithImpl;
  @useResult
  $Res call({BigInt field0});
}

/// @nodoc
class _$DynamicValue_U64CopyWithImpl<$Res>
    implements $DynamicValue_U64CopyWith<$Res> {
  _$DynamicValue_U64CopyWithImpl(this._self, this._then);

  final DynamicValue_U64 _self;
  final $Res Function(DynamicValue_U64) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_U64(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as BigInt,
    ));
  }
}

/// @nodoc

class DynamicValue_I64 extends DynamicValue {
  const DynamicValue_I64(this.field0) : super._();

  final PlatformInt64 field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_I64CopyWith<DynamicValue_I64> get copyWith =>
      _$DynamicValue_I64CopyWithImpl<DynamicValue_I64>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_I64 &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'DynamicValue.i64(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_I64CopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_I64CopyWith(
          DynamicValue_I64 value, $Res Function(DynamicValue_I64) _then) =
      _$DynamicValue_I64CopyWithImpl;
  @useResult
  $Res call({PlatformInt64 field0});
}

/// @nodoc
class _$DynamicValue_I64CopyWithImpl<$Res>
    implements $DynamicValue_I64CopyWith<$Res> {
  _$DynamicValue_I64CopyWithImpl(this._self, this._then);

  final DynamicValue_I64 _self;
  final $Res Function(DynamicValue_I64) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_I64(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as PlatformInt64,
    ));
  }
}

/// @nodoc

class DynamicValue_F32 extends DynamicValue {
  const DynamicValue_F32(this.field0) : super._();

  final double field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_F32CopyWith<DynamicValue_F32> get copyWith =>
      _$DynamicValue_F32CopyWithImpl<DynamicValue_F32>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_F32 &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'DynamicValue.f32(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_F32CopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_F32CopyWith(
          DynamicValue_F32 value, $Res Function(DynamicValue_F32) _then) =
      _$DynamicValue_F32CopyWithImpl;
  @useResult
  $Res call({double field0});
}

/// @nodoc
class _$DynamicValue_F32CopyWithImpl<$Res>
    implements $DynamicValue_F32CopyWith<$Res> {
  _$DynamicValue_F32CopyWithImpl(this._self, this._then);

  final DynamicValue_F32 _self;
  final $Res Function(DynamicValue_F32) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_F32(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class DynamicValue_F64 extends DynamicValue {
  const DynamicValue_F64(this.field0) : super._();

  final double field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_F64CopyWith<DynamicValue_F64> get copyWith =>
      _$DynamicValue_F64CopyWithImpl<DynamicValue_F64>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_F64 &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'DynamicValue.f64(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_F64CopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_F64CopyWith(
          DynamicValue_F64 value, $Res Function(DynamicValue_F64) _then) =
      _$DynamicValue_F64CopyWithImpl;
  @useResult
  $Res call({double field0});
}

/// @nodoc
class _$DynamicValue_F64CopyWithImpl<$Res>
    implements $DynamicValue_F64CopyWith<$Res> {
  _$DynamicValue_F64CopyWithImpl(this._self, this._then);

  final DynamicValue_F64 _self;
  final $Res Function(DynamicValue_F64) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_F64(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as double,
    ));
  }
}

/// @nodoc

class DynamicValue_String extends DynamicValue {
  const DynamicValue_String(this.field0) : super._();

  final String field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_StringCopyWith<DynamicValue_String> get copyWith =>
      _$DynamicValue_StringCopyWithImpl<DynamicValue_String>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_String &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'DynamicValue.string(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_StringCopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_StringCopyWith(
          DynamicValue_String value, $Res Function(DynamicValue_String) _then) =
      _$DynamicValue_StringCopyWithImpl;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class _$DynamicValue_StringCopyWithImpl<$Res>
    implements $DynamicValue_StringCopyWith<$Res> {
  _$DynamicValue_StringCopyWithImpl(this._self, this._then);

  final DynamicValue_String _self;
  final $Res Function(DynamicValue_String) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_String(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DynamicValue_VecU8 extends DynamicValue {
  const DynamicValue_VecU8(this.field0) : super._();

  final Uint8List field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_VecU8CopyWith<DynamicValue_VecU8> get copyWith =>
      _$DynamicValue_VecU8CopyWithImpl<DynamicValue_VecU8>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_VecU8 &&
            const DeepCollectionEquality().equals(other.field0, field0));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(field0));

  @override
  String toString() {
    return 'DynamicValue.vecU8(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_VecU8CopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_VecU8CopyWith(
          DynamicValue_VecU8 value, $Res Function(DynamicValue_VecU8) _then) =
      _$DynamicValue_VecU8CopyWithImpl;
  @useResult
  $Res call({Uint8List field0});
}

/// @nodoc
class _$DynamicValue_VecU8CopyWithImpl<$Res>
    implements $DynamicValue_VecU8CopyWith<$Res> {
  _$DynamicValue_VecU8CopyWithImpl(this._self, this._then);

  final DynamicValue_VecU8 _self;
  final $Res Function(DynamicValue_VecU8) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_VecU8(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as Uint8List,
    ));
  }
}

/// @nodoc

class DynamicValue_MegaStruct extends DynamicValue {
  const DynamicValue_MegaStruct(this.field0) : super._();

  final String field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_MegaStructCopyWith<DynamicValue_MegaStruct> get copyWith =>
      _$DynamicValue_MegaStructCopyWithImpl<DynamicValue_MegaStruct>(
          this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_MegaStruct &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'DynamicValue.megaStruct(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_MegaStructCopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_MegaStructCopyWith(DynamicValue_MegaStruct value,
          $Res Function(DynamicValue_MegaStruct) _then) =
      _$DynamicValue_MegaStructCopyWithImpl;
  @useResult
  $Res call({String field0});
}

/// @nodoc
class _$DynamicValue_MegaStructCopyWithImpl<$Res>
    implements $DynamicValue_MegaStructCopyWith<$Res> {
  _$DynamicValue_MegaStructCopyWithImpl(this._self, this._then);

  final DynamicValue_MegaStruct _self;
  final $Res Function(DynamicValue_MegaStruct) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_MegaStruct(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class DynamicValue_Error extends DynamicValue {
  const DynamicValue_Error(this.field0) : super._();

  final ErrorCode field0;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $DynamicValue_ErrorCopyWith<DynamicValue_Error> get copyWith =>
      _$DynamicValue_ErrorCopyWithImpl<DynamicValue_Error>(this, _$identity);

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DynamicValue_Error &&
            (identical(other.field0, field0) || other.field0 == field0));
  }

  @override
  int get hashCode => Object.hash(runtimeType, field0);

  @override
  String toString() {
    return 'DynamicValue.error(field0: $field0)';
  }
}

/// @nodoc
abstract mixin class $DynamicValue_ErrorCopyWith<$Res>
    implements $DynamicValueCopyWith<$Res> {
  factory $DynamicValue_ErrorCopyWith(
          DynamicValue_Error value, $Res Function(DynamicValue_Error) _then) =
      _$DynamicValue_ErrorCopyWithImpl;
  @useResult
  $Res call({ErrorCode field0});
}

/// @nodoc
class _$DynamicValue_ErrorCopyWithImpl<$Res>
    implements $DynamicValue_ErrorCopyWith<$Res> {
  _$DynamicValue_ErrorCopyWithImpl(this._self, this._then);

  final DynamicValue_Error _self;
  final $Res Function(DynamicValue_Error) _then;

  /// Create a copy of DynamicValue
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? field0 = null,
  }) {
    return _then(DynamicValue_Error(
      null == field0
          ? _self.field0
          : field0 // ignore: cast_nullable_to_non_nullable
              as ErrorCode,
    ));
  }
}

/// @nodoc

class DynamicValue_None extends DynamicValue {
  const DynamicValue_None() : super._();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is DynamicValue_None);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'DynamicValue.none()';
  }
}

// dart format on
