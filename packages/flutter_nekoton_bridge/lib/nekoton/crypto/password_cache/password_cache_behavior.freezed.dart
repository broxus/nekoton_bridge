// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_cache_behavior.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

PasswordCacheBehavior _$PasswordCacheBehaviorFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'store':
      return _Store.fromJson(json);
    case 'remove':
      return _Remove.fromJson(json);
    case 'nop':
      return _Nop.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'PasswordCacheBehavior',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$PasswordCacheBehavior {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int data) store,
    required TResult Function() remove,
    required TResult Function() nop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int data)? store,
    TResult? Function()? remove,
    TResult? Function()? nop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int data)? store,
    TResult Function()? remove,
    TResult Function()? nop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Store value) store,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Nop value) nop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Store value)? store,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_Nop value)? nop,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Store value)? store,
    TResult Function(_Remove value)? remove,
    TResult Function(_Nop value)? nop,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordCacheBehaviorCopyWith<$Res> {
  factory $PasswordCacheBehaviorCopyWith(PasswordCacheBehavior value,
          $Res Function(PasswordCacheBehavior) then) =
      _$PasswordCacheBehaviorCopyWithImpl<$Res, PasswordCacheBehavior>;
}

/// @nodoc
class _$PasswordCacheBehaviorCopyWithImpl<$Res,
        $Val extends PasswordCacheBehavior>
    implements $PasswordCacheBehaviorCopyWith<$Res> {
  _$PasswordCacheBehaviorCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$StoreImplCopyWith<$Res> {
  factory _$$StoreImplCopyWith(
          _$StoreImpl value, $Res Function(_$StoreImpl) then) =
      __$$StoreImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$$StoreImplCopyWithImpl<$Res>
    extends _$PasswordCacheBehaviorCopyWithImpl<$Res, _$StoreImpl>
    implements _$$StoreImplCopyWith<$Res> {
  __$$StoreImplCopyWithImpl(
      _$StoreImpl _value, $Res Function(_$StoreImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$StoreImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StoreImpl implements _Store {
  const _$StoreImpl(this.data, {final String? $type})
      : $type = $type ?? 'store';

  factory _$StoreImpl.fromJson(Map<String, dynamic> json) =>
      _$$StoreImplFromJson(json);

  @override
  final int data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PasswordCacheBehavior.store(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StoreImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      __$$StoreImplCopyWithImpl<_$StoreImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int data) store,
    required TResult Function() remove,
    required TResult Function() nop,
  }) {
    return store(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int data)? store,
    TResult? Function()? remove,
    TResult? Function()? nop,
  }) {
    return store?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int data)? store,
    TResult Function()? remove,
    TResult Function()? nop,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Store value) store,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Nop value) nop,
  }) {
    return store(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Store value)? store,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_Nop value)? nop,
  }) {
    return store?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Store value)? store,
    TResult Function(_Remove value)? remove,
    TResult Function(_Nop value)? nop,
    required TResult orElse(),
  }) {
    if (store != null) {
      return store(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$StoreImplToJson(
      this,
    );
  }
}

abstract class _Store implements PasswordCacheBehavior {
  const factory _Store(final int data) = _$StoreImpl;

  factory _Store.fromJson(Map<String, dynamic> json) = _$StoreImpl.fromJson;

  int get data;
  @JsonKey(ignore: true)
  _$$StoreImplCopyWith<_$StoreImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveImplCopyWith<$Res> {
  factory _$$RemoveImplCopyWith(
          _$RemoveImpl value, $Res Function(_$RemoveImpl) then) =
      __$$RemoveImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$RemoveImplCopyWithImpl<$Res>
    extends _$PasswordCacheBehaviorCopyWithImpl<$Res, _$RemoveImpl>
    implements _$$RemoveImplCopyWith<$Res> {
  __$$RemoveImplCopyWithImpl(
      _$RemoveImpl _value, $Res Function(_$RemoveImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$RemoveImpl implements _Remove {
  const _$RemoveImpl({final String? $type}) : $type = $type ?? 'remove';

  factory _$RemoveImpl.fromJson(Map<String, dynamic> json) =>
      _$$RemoveImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PasswordCacheBehavior.remove()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$RemoveImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int data) store,
    required TResult Function() remove,
    required TResult Function() nop,
  }) {
    return remove();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int data)? store,
    TResult? Function()? remove,
    TResult? Function()? nop,
  }) {
    return remove?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int data)? store,
    TResult Function()? remove,
    TResult Function()? nop,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Store value) store,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Nop value) nop,
  }) {
    return remove(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Store value)? store,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_Nop value)? nop,
  }) {
    return remove?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Store value)? store,
    TResult Function(_Remove value)? remove,
    TResult Function(_Nop value)? nop,
    required TResult orElse(),
  }) {
    if (remove != null) {
      return remove(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$RemoveImplToJson(
      this,
    );
  }
}

abstract class _Remove implements PasswordCacheBehavior {
  const factory _Remove() = _$RemoveImpl;

  factory _Remove.fromJson(Map<String, dynamic> json) = _$RemoveImpl.fromJson;
}

/// @nodoc
abstract class _$$NopImplCopyWith<$Res> {
  factory _$$NopImplCopyWith(_$NopImpl value, $Res Function(_$NopImpl) then) =
      __$$NopImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NopImplCopyWithImpl<$Res>
    extends _$PasswordCacheBehaviorCopyWithImpl<$Res, _$NopImpl>
    implements _$$NopImplCopyWith<$Res> {
  __$$NopImplCopyWithImpl(_$NopImpl _value, $Res Function(_$NopImpl) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$NopImpl implements _Nop {
  const _$NopImpl({final String? $type}) : $type = $type ?? 'nop';

  factory _$NopImpl.fromJson(Map<String, dynamic> json) =>
      _$$NopImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PasswordCacheBehavior.nop()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NopImpl);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int data) store,
    required TResult Function() remove,
    required TResult Function() nop,
  }) {
    return nop();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int data)? store,
    TResult? Function()? remove,
    TResult? Function()? nop,
  }) {
    return nop?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int data)? store,
    TResult Function()? remove,
    TResult Function()? nop,
    required TResult orElse(),
  }) {
    if (nop != null) {
      return nop();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Store value) store,
    required TResult Function(_Remove value) remove,
    required TResult Function(_Nop value) nop,
  }) {
    return nop(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Store value)? store,
    TResult? Function(_Remove value)? remove,
    TResult? Function(_Nop value)? nop,
  }) {
    return nop?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Store value)? store,
    TResult Function(_Remove value)? remove,
    TResult Function(_Nop value)? nop,
    required TResult orElse(),
  }) {
    if (nop != null) {
      return nop(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$NopImplToJson(
      this,
    );
  }
}

abstract class _Nop implements PasswordCacheBehavior {
  const factory _Nop() = _$NopImpl;

  factory _Nop.fromJson(Map<String, dynamic> json) = _$NopImpl.fromJson;
}
