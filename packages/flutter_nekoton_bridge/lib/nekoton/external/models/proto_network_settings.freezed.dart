// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'proto_network_settings.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProtoNetworkSettings {
  String get endpoint;

  /// Create a copy of ProtoNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $ProtoNetworkSettingsCopyWith<ProtoNetworkSettings> get copyWith =>
      _$ProtoNetworkSettingsCopyWithImpl<ProtoNetworkSettings>(
          this as ProtoNetworkSettings, _$identity);

  /// Serializes this ProtoNetworkSettings to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ProtoNetworkSettings &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, endpoint);

  @override
  String toString() {
    return 'ProtoNetworkSettings(endpoint: $endpoint)';
  }
}

/// @nodoc
abstract mixin class $ProtoNetworkSettingsCopyWith<$Res> {
  factory $ProtoNetworkSettingsCopyWith(ProtoNetworkSettings value,
          $Res Function(ProtoNetworkSettings) _then) =
      _$ProtoNetworkSettingsCopyWithImpl;
  @useResult
  $Res call({String endpoint});
}

/// @nodoc
class _$ProtoNetworkSettingsCopyWithImpl<$Res>
    implements $ProtoNetworkSettingsCopyWith<$Res> {
  _$ProtoNetworkSettingsCopyWithImpl(this._self, this._then);

  final ProtoNetworkSettings _self;
  final $Res Function(ProtoNetworkSettings) _then;

  /// Create a copy of ProtoNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? endpoint = null,
  }) {
    return _then(_self.copyWith(
      endpoint: null == endpoint
          ? _self.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// Adds pattern-matching-related methods to [ProtoNetworkSettings].
extension ProtoNetworkSettingsPatterns on ProtoNetworkSettings {
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
    TResult Function(_ProtoNetworkSettings value)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProtoNetworkSettings() when $default != null:
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
    TResult Function(_ProtoNetworkSettings value) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProtoNetworkSettings():
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
    TResult? Function(_ProtoNetworkSettings value)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProtoNetworkSettings() when $default != null:
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
    TResult Function(String endpoint)? $default, {
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case _ProtoNetworkSettings() when $default != null:
        return $default(_that.endpoint);
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
    TResult Function(String endpoint) $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProtoNetworkSettings():
        return $default(_that.endpoint);
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
    TResult? Function(String endpoint)? $default,
  ) {
    final _that = this;
    switch (_that) {
      case _ProtoNetworkSettings() when $default != null:
        return $default(_that.endpoint);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class _ProtoNetworkSettings implements ProtoNetworkSettings {
  const _ProtoNetworkSettings({required this.endpoint});
  factory _ProtoNetworkSettings.fromJson(Map<String, dynamic> json) =>
      _$ProtoNetworkSettingsFromJson(json);

  @override
  final String endpoint;

  /// Create a copy of ProtoNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ProtoNetworkSettingsCopyWith<_ProtoNetworkSettings> get copyWith =>
      __$ProtoNetworkSettingsCopyWithImpl<_ProtoNetworkSettings>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ProtoNetworkSettingsToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ProtoNetworkSettings &&
            (identical(other.endpoint, endpoint) ||
                other.endpoint == endpoint));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, endpoint);

  @override
  String toString() {
    return 'ProtoNetworkSettings(endpoint: $endpoint)';
  }
}

/// @nodoc
abstract mixin class _$ProtoNetworkSettingsCopyWith<$Res>
    implements $ProtoNetworkSettingsCopyWith<$Res> {
  factory _$ProtoNetworkSettingsCopyWith(_ProtoNetworkSettings value,
          $Res Function(_ProtoNetworkSettings) _then) =
      __$ProtoNetworkSettingsCopyWithImpl;
  @override
  @useResult
  $Res call({String endpoint});
}

/// @nodoc
class __$ProtoNetworkSettingsCopyWithImpl<$Res>
    implements _$ProtoNetworkSettingsCopyWith<$Res> {
  __$ProtoNetworkSettingsCopyWithImpl(this._self, this._then);

  final _ProtoNetworkSettings _self;
  final $Res Function(_ProtoNetworkSettings) _then;

  /// Create a copy of ProtoNetworkSettings
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? endpoint = null,
  }) {
    return _then(_ProtoNetworkSettings(
      endpoint: null == endpoint
          ? _self.endpoint
          : endpoint // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

// dart format on
