// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'password_cache_behavior.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
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
  /// Serializes this PasswordCacheBehavior to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is PasswordCacheBehavior);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PasswordCacheBehavior()';
  }
}

/// @nodoc
class $PasswordCacheBehaviorCopyWith<$Res> {
  $PasswordCacheBehaviorCopyWith(
      PasswordCacheBehavior _, $Res Function(PasswordCacheBehavior) __);
}

/// @nodoc
@JsonSerializable()
class _Store implements PasswordCacheBehavior {
  const _Store(this.data, {final String? $type}) : $type = $type ?? 'store';
  factory _Store.fromJson(Map<String, dynamic> json) => _$StoreFromJson(json);

  final int data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of PasswordCacheBehavior
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$StoreCopyWith<_Store> get copyWith =>
      __$StoreCopyWithImpl<_Store>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$StoreToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Store &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'PasswordCacheBehavior.store(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$StoreCopyWith<$Res>
    implements $PasswordCacheBehaviorCopyWith<$Res> {
  factory _$StoreCopyWith(_Store value, $Res Function(_Store) _then) =
      __$StoreCopyWithImpl;
  @useResult
  $Res call({int data});
}

/// @nodoc
class __$StoreCopyWithImpl<$Res> implements _$StoreCopyWith<$Res> {
  __$StoreCopyWithImpl(this._self, this._then);

  final _Store _self;
  final $Res Function(_Store) _then;

  /// Create a copy of PasswordCacheBehavior
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_Store(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _Remove implements PasswordCacheBehavior {
  const _Remove({final String? $type}) : $type = $type ?? 'remove';
  factory _Remove.fromJson(Map<String, dynamic> json) => _$RemoveFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$RemoveToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Remove);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PasswordCacheBehavior.remove()';
  }
}

/// @nodoc
@JsonSerializable()
class _Nop implements PasswordCacheBehavior {
  const _Nop({final String? $type}) : $type = $type ?? 'nop';
  factory _Nop.fromJson(Map<String, dynamic> json) => _$NopFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$NopToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Nop);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'PasswordCacheBehavior.nop()';
  }
}

// dart format on
