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
      return _ByAccountId.fromJson(json);
    case 'by_public_key':
      return _ByPublicKey.fromJson(json);

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
class _ByAccountId implements DerivedKeyPassword {
  const _ByAccountId(this.data, {final String? $type})
      : $type = $type ?? 'by_account_id';
  factory _ByAccountId.fromJson(Map<String, dynamic> json) =>
      _$ByAccountIdFromJson(json);

  @override
  final DerivedKeyPasswordByAccountId data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of DerivedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ByAccountIdCopyWith<_ByAccountId> get copyWith =>
      __$ByAccountIdCopyWithImpl<_ByAccountId>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ByAccountIdToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ByAccountId &&
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
abstract mixin class _$ByAccountIdCopyWith<$Res>
    implements $DerivedKeyPasswordCopyWith<$Res> {
  factory _$ByAccountIdCopyWith(
          _ByAccountId value, $Res Function(_ByAccountId) _then) =
      __$ByAccountIdCopyWithImpl;
  @useResult
  $Res call({DerivedKeyPasswordByAccountId data});

  $DerivedKeyPasswordByAccountIdCopyWith<$Res> get data;
}

/// @nodoc
class __$ByAccountIdCopyWithImpl<$Res> implements _$ByAccountIdCopyWith<$Res> {
  __$ByAccountIdCopyWithImpl(this._self, this._then);

  final _ByAccountId _self;
  final $Res Function(_ByAccountId) _then;

  /// Create a copy of DerivedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_ByAccountId(
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
class _ByPublicKey implements DerivedKeyPassword {
  const _ByPublicKey(this.data, {final String? $type})
      : $type = $type ?? 'by_public_key';
  factory _ByPublicKey.fromJson(Map<String, dynamic> json) =>
      _$ByPublicKeyFromJson(json);

  @override
  final DerivedKeyPasswordByPublicKey data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of DerivedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ByPublicKeyCopyWith<_ByPublicKey> get copyWith =>
      __$ByPublicKeyCopyWithImpl<_ByPublicKey>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ByPublicKeyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ByPublicKey &&
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
abstract mixin class _$ByPublicKeyCopyWith<$Res>
    implements $DerivedKeyPasswordCopyWith<$Res> {
  factory _$ByPublicKeyCopyWith(
          _ByPublicKey value, $Res Function(_ByPublicKey) _then) =
      __$ByPublicKeyCopyWithImpl;
  @useResult
  $Res call({DerivedKeyPasswordByPublicKey data});

  $DerivedKeyPasswordByPublicKeyCopyWith<$Res> get data;
}

/// @nodoc
class __$ByPublicKeyCopyWithImpl<$Res> implements _$ByPublicKeyCopyWith<$Res> {
  __$ByPublicKeyCopyWithImpl(this._self, this._then);

  final _ByPublicKey _self;
  final $Res Function(_ByPublicKey) _then;

  /// Create a copy of DerivedKeyPassword
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_ByPublicKey(
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
