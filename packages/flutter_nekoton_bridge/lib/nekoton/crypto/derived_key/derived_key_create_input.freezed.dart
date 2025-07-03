// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_create_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
DerivedKeyCreateInput _$DerivedKeyCreateInputFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'import':
      return _DerivedKeyCreateInputImport.fromJson(json);
    case 'derive':
      return _DerivedKeyCreateInputDerive.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'DerivedKeyCreateInput',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$DerivedKeyCreateInput {
  Object get data;

  /// Serializes this DerivedKeyCreateInput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is DerivedKeyCreateInput &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'DerivedKeyCreateInput(data: $data)';
  }
}

/// @nodoc
class $DerivedKeyCreateInputCopyWith<$Res> {
  $DerivedKeyCreateInputCopyWith(
      DerivedKeyCreateInput _, $Res Function(DerivedKeyCreateInput) __);
}

/// @nodoc
@JsonSerializable()
class _DerivedKeyCreateInputImport implements DerivedKeyCreateInput {
  const _DerivedKeyCreateInputImport(this.data, {final String? $type})
      : $type = $type ?? 'import';
  factory _DerivedKeyCreateInputImport.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyCreateInputImportFromJson(json);

  @override
  final DerivedKeyCreateInputImport data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of DerivedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyCreateInputImportCopyWith<_DerivedKeyCreateInputImport>
      get copyWith => __$DerivedKeyCreateInputImportCopyWithImpl<
          _DerivedKeyCreateInputImport>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyCreateInputImportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyCreateInputImport &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'DerivedKeyCreateInput.import(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyCreateInputImportCopyWith<$Res>
    implements $DerivedKeyCreateInputCopyWith<$Res> {
  factory _$DerivedKeyCreateInputImportCopyWith(
          _DerivedKeyCreateInputImport value,
          $Res Function(_DerivedKeyCreateInputImport) _then) =
      __$DerivedKeyCreateInputImportCopyWithImpl;
  @useResult
  $Res call({DerivedKeyCreateInputImport data});

  $DerivedKeyCreateInputImportCopyWith<$Res> get data;
}

/// @nodoc
class __$DerivedKeyCreateInputImportCopyWithImpl<$Res>
    implements _$DerivedKeyCreateInputImportCopyWith<$Res> {
  __$DerivedKeyCreateInputImportCopyWithImpl(this._self, this._then);

  final _DerivedKeyCreateInputImport _self;
  final $Res Function(_DerivedKeyCreateInputImport) _then;

  /// Create a copy of DerivedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_DerivedKeyCreateInputImport(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyCreateInputImport,
    ));
  }

  /// Create a copy of DerivedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyCreateInputImportCopyWith<$Res> get data {
    return $DerivedKeyCreateInputImportCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _DerivedKeyCreateInputDerive implements DerivedKeyCreateInput {
  const _DerivedKeyCreateInputDerive(this.data, {final String? $type})
      : $type = $type ?? 'derive';
  factory _DerivedKeyCreateInputDerive.fromJson(Map<String, dynamic> json) =>
      _$DerivedKeyCreateInputDeriveFromJson(json);

  @override
  final DerivedKeyCreateInputDerive data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of DerivedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DerivedKeyCreateInputDeriveCopyWith<_DerivedKeyCreateInputDerive>
      get copyWith => __$DerivedKeyCreateInputDeriveCopyWithImpl<
          _DerivedKeyCreateInputDerive>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DerivedKeyCreateInputDeriveToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DerivedKeyCreateInputDerive &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'DerivedKeyCreateInput.derive(data: $data)';
  }
}

/// @nodoc
abstract mixin class _$DerivedKeyCreateInputDeriveCopyWith<$Res>
    implements $DerivedKeyCreateInputCopyWith<$Res> {
  factory _$DerivedKeyCreateInputDeriveCopyWith(
          _DerivedKeyCreateInputDerive value,
          $Res Function(_DerivedKeyCreateInputDerive) _then) =
      __$DerivedKeyCreateInputDeriveCopyWithImpl;
  @useResult
  $Res call({DerivedKeyCreateInputDerive data});

  $DerivedKeyCreateInputDeriveCopyWith<$Res> get data;
}

/// @nodoc
class __$DerivedKeyCreateInputDeriveCopyWithImpl<$Res>
    implements _$DerivedKeyCreateInputDeriveCopyWith<$Res> {
  __$DerivedKeyCreateInputDeriveCopyWithImpl(this._self, this._then);

  final _DerivedKeyCreateInputDerive _self;
  final $Res Function(_DerivedKeyCreateInputDerive) _then;

  /// Create a copy of DerivedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_DerivedKeyCreateInputDerive(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyCreateInputDerive,
    ));
  }

  /// Create a copy of DerivedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyCreateInputDeriveCopyWith<$Res> get data {
    return $DerivedKeyCreateInputDeriveCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
