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
      return _Import.fromJson(json);
    case 'derive':
      return _Derive.fromJson(json);

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
class _Import implements DerivedKeyCreateInput {
  const _Import(this.data, {final String? $type}) : $type = $type ?? 'import';
  factory _Import.fromJson(Map<String, dynamic> json) => _$ImportFromJson(json);

  @override
  final DerivedKeyCreateInputImport data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of DerivedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$ImportCopyWith<_Import> get copyWith =>
      __$ImportCopyWithImpl<_Import>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$ImportToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Import &&
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
abstract mixin class _$ImportCopyWith<$Res>
    implements $DerivedKeyCreateInputCopyWith<$Res> {
  factory _$ImportCopyWith(_Import value, $Res Function(_Import) _then) =
      __$ImportCopyWithImpl;
  @useResult
  $Res call({DerivedKeyCreateInputImport data});

  $DerivedKeyCreateInputImportCopyWith<$Res> get data;
}

/// @nodoc
class __$ImportCopyWithImpl<$Res> implements _$ImportCopyWith<$Res> {
  __$ImportCopyWithImpl(this._self, this._then);

  final _Import _self;
  final $Res Function(_Import) _then;

  /// Create a copy of DerivedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_Import(
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
class _Derive implements DerivedKeyCreateInput {
  const _Derive(this.data, {final String? $type}) : $type = $type ?? 'derive';
  factory _Derive.fromJson(Map<String, dynamic> json) => _$DeriveFromJson(json);

  @override
  final DerivedKeyCreateInputDerive data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of DerivedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$DeriveCopyWith<_Derive> get copyWith =>
      __$DeriveCopyWithImpl<_Derive>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$DeriveToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Derive &&
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
abstract mixin class _$DeriveCopyWith<$Res>
    implements $DerivedKeyCreateInputCopyWith<$Res> {
  factory _$DeriveCopyWith(_Derive value, $Res Function(_Derive) _then) =
      __$DeriveCopyWithImpl;
  @useResult
  $Res call({DerivedKeyCreateInputDerive data});

  $DerivedKeyCreateInputDeriveCopyWith<$Res> get data;
}

/// @nodoc
class __$DeriveCopyWithImpl<$Res> implements _$DeriveCopyWith<$Res> {
  __$DeriveCopyWithImpl(this._self, this._then);

  final _Derive _self;
  final $Res Function(_Derive) _then;

  /// Create a copy of DerivedKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(_Derive(
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
