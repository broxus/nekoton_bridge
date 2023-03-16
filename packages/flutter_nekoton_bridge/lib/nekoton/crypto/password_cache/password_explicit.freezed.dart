// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

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
      _$PasswordExplicitCopyWithImpl<$Res, PasswordExplicit>;
  @useResult
  $Res call({String password, PasswordCacheBehavior cacheBehavior});

  $PasswordCacheBehaviorCopyWith<$Res> get cacheBehavior;
}

/// @nodoc
class _$PasswordExplicitCopyWithImpl<$Res, $Val extends PasswordExplicit>
    implements $PasswordExplicitCopyWith<$Res> {
  _$PasswordExplicitCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? cacheBehavior = null,
  }) {
    return _then(_value.copyWith(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      cacheBehavior: null == cacheBehavior
          ? _value.cacheBehavior
          : cacheBehavior // ignore: cast_nullable_to_non_nullable
              as PasswordCacheBehavior,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PasswordCacheBehaviorCopyWith<$Res> get cacheBehavior {
    return $PasswordCacheBehaviorCopyWith<$Res>(_value.cacheBehavior, (value) {
      return _then(_value.copyWith(cacheBehavior: value) as $Val);
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
  @useResult
  $Res call({String password, PasswordCacheBehavior cacheBehavior});

  @override
  $PasswordCacheBehaviorCopyWith<$Res> get cacheBehavior;
}

/// @nodoc
class __$$_PasswordExplicitExplicitCopyWithImpl<$Res>
    extends _$PasswordExplicitCopyWithImpl<$Res, _$_PasswordExplicitExplicit>
    implements _$$_PasswordExplicitExplicitCopyWith<$Res> {
  __$$_PasswordExplicitExplicitCopyWithImpl(_$_PasswordExplicitExplicit _value,
      $Res Function(_$_PasswordExplicitExplicit) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
    Object? cacheBehavior = null,
  }) {
    return _then(_$_PasswordExplicitExplicit(
      password: null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      cacheBehavior: null == cacheBehavior
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
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.cacheBehavior, cacheBehavior) ||
                other.cacheBehavior == cacheBehavior));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, password, cacheBehavior);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
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
