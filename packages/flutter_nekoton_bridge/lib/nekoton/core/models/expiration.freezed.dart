// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'expiration.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
Expiration _$ExpirationFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'never':
      return ExpirationNever.fromJson(json);
    case 'timeout':
      return ExpirationTimeout.fromJson(json);
    case 'timestamp':
      return ExpirationTimestamp.fromJson(json);

    default:
      throw CheckedFromJsonException(
          json, 'type', 'Expiration', 'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$Expiration {
  /// Serializes this Expiration to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is Expiration);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Expiration()';
  }
}

/// @nodoc
class $ExpirationCopyWith<$Res> {
  $ExpirationCopyWith(Expiration _, $Res Function(Expiration) __);
}

/// @nodoc
@JsonSerializable()
class ExpirationNever implements Expiration {
  const ExpirationNever({final String? $type}) : $type = $type ?? 'never';
  factory ExpirationNever.fromJson(Map<String, dynamic> json) =>
      _$ExpirationNeverFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  Map<String, dynamic> toJson() {
    return _$ExpirationNeverToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is ExpirationNever);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  String toString() {
    return 'Expiration.never()';
  }
}

/// @nodoc
@JsonSerializable()
class ExpirationTimeout implements Expiration {
  const ExpirationTimeout(this.data, {final String? $type})
      : $type = $type ?? 'timeout';
  factory ExpirationTimeout.fromJson(Map<String, dynamic> json) =>
      _$ExpirationTimeoutFromJson(json);

  final int data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Expiration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpirationTimeoutCopyWith<ExpirationTimeout> get copyWith =>
      _$ExpirationTimeoutCopyWithImpl<ExpirationTimeout>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpirationTimeoutToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpirationTimeout &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'Expiration.timeout(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ExpirationTimeoutCopyWith<$Res>
    implements $ExpirationCopyWith<$Res> {
  factory $ExpirationTimeoutCopyWith(
          ExpirationTimeout value, $Res Function(ExpirationTimeout) _then) =
      _$ExpirationTimeoutCopyWithImpl;
  @useResult
  $Res call({int data});
}

/// @nodoc
class _$ExpirationTimeoutCopyWithImpl<$Res>
    implements $ExpirationTimeoutCopyWith<$Res> {
  _$ExpirationTimeoutCopyWithImpl(this._self, this._then);

  final ExpirationTimeout _self;
  final $Res Function(ExpirationTimeout) _then;

  /// Create a copy of Expiration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(ExpirationTimeout(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class ExpirationTimestamp implements Expiration {
  const ExpirationTimestamp(this.data, {final String? $type})
      : $type = $type ?? 'timestamp';
  factory ExpirationTimestamp.fromJson(Map<String, dynamic> json) =>
      _$ExpirationTimestampFromJson(json);

  final int data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of Expiration
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ExpirationTimestampCopyWith<ExpirationTimestamp> get copyWith =>
      _$ExpirationTimestampCopyWithImpl<ExpirationTimestamp>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ExpirationTimestampToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ExpirationTimestamp &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'Expiration.timestamp(data: $data)';
  }
}

/// @nodoc
abstract mixin class $ExpirationTimestampCopyWith<$Res>
    implements $ExpirationCopyWith<$Res> {
  factory $ExpirationTimestampCopyWith(
          ExpirationTimestamp value, $Res Function(ExpirationTimestamp) _then) =
      _$ExpirationTimestampCopyWithImpl;
  @useResult
  $Res call({int data});
}

/// @nodoc
class _$ExpirationTimestampCopyWithImpl<$Res>
    implements $ExpirationTimestampCopyWith<$Res> {
  _$ExpirationTimestampCopyWithImpl(this._self, this._then);

  final ExpirationTimestamp _self;
  final $Res Function(ExpirationTimestamp) _then;

  /// Create a copy of Expiration
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(ExpirationTimestamp(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
