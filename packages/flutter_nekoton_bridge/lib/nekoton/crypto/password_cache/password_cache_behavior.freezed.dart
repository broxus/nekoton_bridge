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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
abstract class _$$_StoreCopyWith<$Res> {
  factory _$$_StoreCopyWith(_$_Store value, $Res Function(_$_Store) then) =
      __$$_StoreCopyWithImpl<$Res>;
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$$_StoreCopyWithImpl<$Res>
    extends _$PasswordCacheBehaviorCopyWithImpl<$Res, _$_Store>
    implements _$$_StoreCopyWith<$Res> {
  __$$_StoreCopyWithImpl(_$_Store _value, $Res Function(_$_Store) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Store(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Store implements _Store {
  const _$_Store(this.data, {final String? $type}) : $type = $type ?? 'store';

  factory _$_Store.fromJson(Map<String, dynamic> json) =>
      _$$_StoreFromJson(json);

  @override
  final int data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PasswordCacheBehavior.store(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Store &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      __$$_StoreCopyWithImpl<_$_Store>(this, _$identity);

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
    return _$$_StoreToJson(
      this,
    );
  }
}

abstract class _Store implements PasswordCacheBehavior {
  const factory _Store(final int data) = _$_Store;

  factory _Store.fromJson(Map<String, dynamic> json) = _$_Store.fromJson;

  int get data;
  @JsonKey(ignore: true)
  _$$_StoreCopyWith<_$_Store> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_RemoveCopyWith<$Res> {
  factory _$$_RemoveCopyWith(_$_Remove value, $Res Function(_$_Remove) then) =
      __$$_RemoveCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_RemoveCopyWithImpl<$Res>
    extends _$PasswordCacheBehaviorCopyWithImpl<$Res, _$_Remove>
    implements _$$_RemoveCopyWith<$Res> {
  __$$_RemoveCopyWithImpl(_$_Remove _value, $Res Function(_$_Remove) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Remove implements _Remove {
  const _$_Remove({final String? $type}) : $type = $type ?? 'remove';

  factory _$_Remove.fromJson(Map<String, dynamic> json) =>
      _$$_RemoveFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PasswordCacheBehavior.remove()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Remove);
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
    return _$$_RemoveToJson(
      this,
    );
  }
}

abstract class _Remove implements PasswordCacheBehavior {
  const factory _Remove() = _$_Remove;

  factory _Remove.fromJson(Map<String, dynamic> json) = _$_Remove.fromJson;
}

/// @nodoc
abstract class _$$_NopCopyWith<$Res> {
  factory _$$_NopCopyWith(_$_Nop value, $Res Function(_$_Nop) then) =
      __$$_NopCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NopCopyWithImpl<$Res>
    extends _$PasswordCacheBehaviorCopyWithImpl<$Res, _$_Nop>
    implements _$$_NopCopyWith<$Res> {
  __$$_NopCopyWithImpl(_$_Nop _value, $Res Function(_$_Nop) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_Nop implements _Nop {
  const _$_Nop({final String? $type}) : $type = $type ?? 'nop';

  factory _$_Nop.fromJson(Map<String, dynamic> json) => _$$_NopFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'PasswordCacheBehavior.nop()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Nop);
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
    return _$$_NopToJson(
      this,
    );
  }
}

abstract class _Nop implements PasswordCacheBehavior {
  const factory _Nop() = _$_Nop;

  factory _Nop.fromJson(Map<String, dynamic> json) = _$_Nop.fromJson;
}
