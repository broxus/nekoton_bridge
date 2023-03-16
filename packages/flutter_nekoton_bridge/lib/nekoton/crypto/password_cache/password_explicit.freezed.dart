// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'password_explicit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PasswordExplicit _$PasswordExplicitFromJson(Map<String, dynamic> json) {
  return _PasswordExplicitExplicit.fromJson(json);
}

/// @nodoc
mixin _$PasswordExplicit {
  String get password => throw _privateConstructorUsedError;
  PasswordCacheBehavior get cacheBehavior => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PasswordExplicitCopyWith<PasswordExplicit> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PasswordExplicitCopyWith<$Res> {
  factory $PasswordExplicitCopyWith(
          PasswordExplicit value, $Res Function(PasswordExplicit) then) =
      _$PasswordExplicitCopyWithImpl<$Res>;
  $Res call({String password, PasswordCacheBehavior cacheBehavior});

  $PasswordCacheBehaviorCopyWith<$Res> get cacheBehavior;
}

/// @nodoc
class _$PasswordExplicitCopyWithImpl<$Res>
    implements $PasswordExplicitCopyWith<$Res> {
  _$PasswordExplicitCopyWithImpl(this._value, this._then);

  final PasswordExplicit _value;
  // ignore: unused_field
  final $Res Function(PasswordExplicit) _then;

  @override
  $Res call({
    Object? password = freezed,
    Object? cacheBehavior = freezed,
  }) {
    return _then(_value.copyWith(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      cacheBehavior: cacheBehavior == freezed
          ? _value.cacheBehavior
          : cacheBehavior // ignore: cast_nullable_to_non_nullable
              as PasswordCacheBehavior,
    ));
  }

  @override
  $PasswordCacheBehaviorCopyWith<$Res> get cacheBehavior {
    return $PasswordCacheBehaviorCopyWith<$Res>(_value.cacheBehavior, (value) {
      return _then(_value.copyWith(cacheBehavior: value));
    });
  }
}

/// @nodoc
abstract class _$$_PasswordExplicitExplicitCopyWith<$Res>
    implements $PasswordExplicitCopyWith<$Res> {
  factory _$$_PasswordExplicitExplicitCopyWith(
          _$_PasswordExplicitExplicit value,
          $Res Function(_$_PasswordExplicitExplicit) then) =
      __$$_PasswordExplicitExplicitCopyWithImpl<$Res>;
  @override
  $Res call({String password, PasswordCacheBehavior cacheBehavior});

  @override
  $PasswordCacheBehaviorCopyWith<$Res> get cacheBehavior;
}

/// @nodoc
class __$$_PasswordExplicitExplicitCopyWithImpl<$Res>
    extends _$PasswordExplicitCopyWithImpl<$Res>
    implements _$$_PasswordExplicitExplicitCopyWith<$Res> {
  __$$_PasswordExplicitExplicitCopyWithImpl(_$_PasswordExplicitExplicit _value,
      $Res Function(_$_PasswordExplicitExplicit) _then)
      : super(_value, (v) => _then(v as _$_PasswordExplicitExplicit));

  @override
  _$_PasswordExplicitExplicit get _value =>
      super._value as _$_PasswordExplicitExplicit;

  @override
  $Res call({
    Object? password = freezed,
    Object? cacheBehavior = freezed,
  }) {
    return _then(_$_PasswordExplicitExplicit(
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      cacheBehavior: cacheBehavior == freezed
          ? _value.cacheBehavior
          : cacheBehavior // ignore: cast_nullable_to_non_nullable
              as PasswordCacheBehavior,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _$_PasswordExplicitExplicit implements _PasswordExplicitExplicit {
  const _$_PasswordExplicitExplicit(
      {required this.password, required this.cacheBehavior});

  factory _$_PasswordExplicitExplicit.fromJson(Map<String, dynamic> json) =>
      _$$_PasswordExplicitExplicitFromJson(json);

  @override
  final String password;
  @override
  final PasswordCacheBehavior cacheBehavior;

  @override
  String toString() {
    return 'PasswordExplicit(password: $password, cacheBehavior: $cacheBehavior)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_PasswordExplicitExplicit &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.cacheBehavior, cacheBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(cacheBehavior));

  @JsonKey(ignore: true)
  @override
  _$$_PasswordExplicitExplicitCopyWith<_$_PasswordExplicitExplicit>
      get copyWith => __$$_PasswordExplicitExplicitCopyWithImpl<
          _$_PasswordExplicitExplicit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_PasswordExplicitExplicitToJson(
      this,
    );
  }
}

abstract class _PasswordExplicitExplicit implements PasswordExplicit {
  const factory _PasswordExplicitExplicit(
          {required final String password,
          required final PasswordCacheBehavior cacheBehavior}) =
      _$_PasswordExplicitExplicit;

  factory _PasswordExplicitExplicit.fromJson(Map<String, dynamic> json) =
      _$_PasswordExplicitExplicit.fromJson;

  @override
  String get password;
  @override
  PasswordCacheBehavior get cacheBehavior;
  @override
  @JsonKey(ignore: true)
  _$$_PasswordExplicitExplicitCopyWith<_$_PasswordExplicitExplicit>
      get copyWith => throw _privateConstructorUsedError;
}
