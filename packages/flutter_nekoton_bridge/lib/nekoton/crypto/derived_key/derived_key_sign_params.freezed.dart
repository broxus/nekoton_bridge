// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_sign_params.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DerivedKeyPassword _$DerivedKeyPasswordFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'by_account_id':
      return _DerivedKeyPasswordByAccountId.fromJson(json);
    case 'by_public_key':
      return _DerivedKeyPasswordByPublicKey.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'DerivedKeyPassword',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$DerivedKeyPassword {
  Object get data;

  /// Serializes this DerivedKeyPassword to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyPassword &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'DerivedKeyPassword(data: $data)';
  }
}

/// @nodoc
class $DerivedKeyPasswordCopyWith<$Res> {
  $DerivedKeyPasswordCopyWith(
      DerivedKeyPassword _, $Res Function(DerivedKeyPassword) __);
}

/// @nodoc
@JsonSerializable()
class _DerivedKeyPasswordByAccountId implements DerivedKeyPassword {
  const _DerivedKeyPasswordByAccountId(this.data, {final String? $type})
      : $type = $type ?? 'by_account_id';
  factory _DerivedKeyPasswordByAccountId.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyPasswordByAccountIdFromJson(json);

  @override
  final DerivedKeyPasswordByAccountId data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of DerivedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyPasswordByAccountIdCopyWith<_DerivedKeyPasswordByAccountId>
      get copyWith => __$DerivedKeyPasswordByAccountIdCopyWithImpl<
          _DerivedKeyPasswordByAccountId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyPasswordByAccountIdToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyPasswordByAccountId &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'DerivedKeyPassword.byAccountId(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyPasswordByAccountIdCopyWith<$Res>
    implements $DerivedKeyPasswordCopyWith<$Res> {
  factory _$DerivedKeyPasswordByAccountIdCopyWith(
          _DerivedKeyPasswordByAccountId value,
          $Res Function(_DerivedKeyPasswordByAccountId) _then) =
      __$DerivedKeyPasswordByAccountIdCopyWithImpl;
  @useResult
  $Res call({DerivedKeyPasswordByAccountId data});

  $DerivedKeyPasswordByAccountIdCopyWith<$Res> get data;
}

/// @nodoc
class __$DerivedKeyPasswordByAccountIdCopyWithImpl<$Res>
    implements _$DerivedKeyPasswordByAccountIdCopyWith<$Res> {
  __$DerivedKeyPasswordByAccountIdCopyWithImpl(this._self, this._then);

  final _DerivedKeyPasswordByAccountId _self;
  final $Res Function(_DerivedKeyPasswordByAccountId) _then;

  /// Create a copy of DerivedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_DerivedKeyPasswordByAccountId(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyPasswordByAccountId,
    ));
  }

  /// Create a copy of DerivedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyPasswordByAccountIdCopyWith<$Res> get data {
    return $DerivedKeyPasswordByAccountIdCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DerivedKeyPasswordByPublicKey implements DerivedKeyPassword {
  const _DerivedKeyPasswordByPublicKey(this.data, {final String? $type})
      : $type = $type ?? 'by_public_key';
  factory _DerivedKeyPasswordByPublicKey.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyPasswordByPublicKeyFromJson(json);

  @override
  final DerivedKeyPasswordByPublicKey data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of DerivedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyPasswordByPublicKeyCopyWith<_DerivedKeyPasswordByPublicKey>
      get copyWith => __$DerivedKeyPasswordByPublicKeyCopyWithImpl<
          _DerivedKeyPasswordByPublicKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyPasswordByPublicKeyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyPasswordByPublicKey &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'DerivedKeyPassword.byPublicKey(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyPasswordByPublicKeyCopyWith<$Res>
    implements $DerivedKeyPasswordCopyWith<$Res> {
  factory _$DerivedKeyPasswordByPublicKeyCopyWith(
          _DerivedKeyPasswordByPublicKey value,
          $Res Function(_DerivedKeyPasswordByPublicKey) _then) =
      __$DerivedKeyPasswordByPublicKeyCopyWithImpl;
  @useResult
  $Res call({DerivedKeyPasswordByPublicKey data});

  $DerivedKeyPasswordByPublicKeyCopyWith<$Res> get data;
}

/// @nodoc
class __$DerivedKeyPasswordByPublicKeyCopyWithImpl<$Res>
    implements _$DerivedKeyPasswordByPublicKeyCopyWith<$Res> {
  __$DerivedKeyPasswordByPublicKeyCopyWithImpl(this._self, this._then);

  final _DerivedKeyPasswordByPublicKey _self;
  final $Res Function(_DerivedKeyPasswordByPublicKey) _then;

  /// Create a copy of DerivedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_DerivedKeyPasswordByPublicKey(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyPasswordByPublicKey,
    ));
  }

  /// Create a copy of DerivedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyPasswordByPublicKeyCopyWith<$Res> get data {
    return $DerivedKeyPasswordByPublicKeyCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
