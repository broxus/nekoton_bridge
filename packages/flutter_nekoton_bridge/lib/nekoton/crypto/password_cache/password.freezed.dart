// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Password _$PasswordFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'explicit':
      return _Explicit.fromJson(json);
    case 'from_cache':
      return _FromCache.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Password', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Password {
  /// Serializes this Password to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Password);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Password()';
  }
}

/// @nodoc
class $PasswordCopyWith<$Res> {
  $PasswordCopyWith(Password _, $Res Function(Password) __);
}

/// @nodoc
@JsonSerializable()
class _Explicit implements Password {
  const _Explicit(this.data, {final String? $type})
      : $type = $type ?? 'explicit';
  factory _Explicit.fromJson(Map<String, dynamic> json) =>
      _$ExplicitFromJson(json);

  final PasswordExplicit data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ExplicitCopyWith<_Explicit> get copyWith =>
      __$ExplicitCopyWithImpl<_Explicit>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExplicitToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Explicit &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'Password.explicit(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$ExplicitCopyWith<$Res>
    implements $PasswordCopyWith<$Res> {
  factory _$ExplicitCopyWith(_Explicit value, $Res Function(_Explicit) _then) =
      __$ExplicitCopyWithImpl;
  @useResult
  $Res call({PasswordExplicit data});

  $PasswordExplicitCopyWith<$Res> get data;
}

/// @nodoc
class __$ExplicitCopyWithImpl<$Res> implements _$ExplicitCopyWith<$Res> {
  __$ExplicitCopyWithImpl(this._self, this._then);

  final _Explicit _self;
  final $Res Function(_Explicit) _then;

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_Explicit(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as PasswordExplicit,
    ));
  }

  /// Create a copy of Password
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PasswordExplicitCopyWith<$Res> get data {
    return $PasswordExplicitCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _FromCache implements Password {
  const _FromCache({final String? $type}) : $type = $type ?? 'from_cache';
  factory _FromCache.fromJson(Map<String, dynamic> json) =>
      _$FromCacheFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$FromCacheToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _FromCache);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Password.fromCache()';
  }
}

// dart format on
