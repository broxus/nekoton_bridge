// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'derived_key_create_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

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
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeyCreateInputImport data) import,
    required TResult Function(DerivedKeyCreateInputDerive data) derive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeyCreateInputImport data)? import,
    TResult? Function(DerivedKeyCreateInputDerive data)? derive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeyCreateInputImport data)? import,
    TResult Function(DerivedKeyCreateInputDerive data)? derive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Import value) import,
    required TResult Function(_Derive value) derive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Import value)? import,
    TResult? Function(_Derive value)? derive,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Import value)? import,
    TResult Function(_Derive value)? derive,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DerivedKeyCreateInputCopyWith<$Res> {
  factory $DerivedKeyCreateInputCopyWith(DerivedKeyCreateInput value,
          $Res Function(DerivedKeyCreateInput) then) =
      _$DerivedKeyCreateInputCopyWithImpl<$Res, DerivedKeyCreateInput>;
}

/// @nodoc
class _$DerivedKeyCreateInputCopyWithImpl<$Res,
        $Val extends DerivedKeyCreateInput>
    implements $DerivedKeyCreateInputCopyWith<$Res> {
  _$DerivedKeyCreateInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_ImportCopyWith<$Res> {
  factory _$$_ImportCopyWith(_$_Import value, $Res Function(_$_Import) then) =
      __$$_ImportCopyWithImpl<$Res>;
  @useResult
  $Res call({DerivedKeyCreateInputImport data});

  $DerivedKeyCreateInputImportCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ImportCopyWithImpl<$Res>
    extends _$DerivedKeyCreateInputCopyWithImpl<$Res, _$_Import>
    implements _$$_ImportCopyWith<$Res> {
  __$$_ImportCopyWithImpl(_$_Import _value, $Res Function(_$_Import) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Import(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyCreateInputImport,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyCreateInputImportCopyWith<$Res> get data {
    return $DerivedKeyCreateInputImportCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_Import implements _Import {
  const _$_Import(this.data, {final String? $type}) : $type = $type ?? 'import';

  factory _$_Import.fromJson(Map<String, dynamic> json) =>
      _$$_ImportFromJson(json);

  @override
  final DerivedKeyCreateInputImport data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DerivedKeyCreateInput.import(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Import &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImportCopyWith<_$_Import> get copyWith =>
      __$$_ImportCopyWithImpl<_$_Import>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeyCreateInputImport data) import,
    required TResult Function(DerivedKeyCreateInputDerive data) derive,
  }) {
    return import(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeyCreateInputImport data)? import,
    TResult? Function(DerivedKeyCreateInputDerive data)? derive,
  }) {
    return import?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeyCreateInputImport data)? import,
    TResult Function(DerivedKeyCreateInputDerive data)? derive,
    required TResult orElse(),
  }) {
    if (import != null) {
      return import(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Import value) import,
    required TResult Function(_Derive value) derive,
  }) {
    return import(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Import value)? import,
    TResult? Function(_Derive value)? derive,
  }) {
    return import?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Import value)? import,
    TResult Function(_Derive value)? derive,
    required TResult orElse(),
  }) {
    if (import != null) {
      return import(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImportToJson(
      this,
    );
  }
}

abstract class _Import implements DerivedKeyCreateInput {
  const factory _Import(final DerivedKeyCreateInputImport data) = _$_Import;

  factory _Import.fromJson(Map<String, dynamic> json) = _$_Import.fromJson;

  @override
  DerivedKeyCreateInputImport get data;
  @JsonKey(ignore: true)
  _$$_ImportCopyWith<_$_Import> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DeriveCopyWith<$Res> {
  factory _$$_DeriveCopyWith(_$_Derive value, $Res Function(_$_Derive) then) =
      __$$_DeriveCopyWithImpl<$Res>;
  @useResult
  $Res call({DerivedKeyCreateInputDerive data});

  $DerivedKeyCreateInputDeriveCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DeriveCopyWithImpl<$Res>
    extends _$DerivedKeyCreateInputCopyWithImpl<$Res, _$_Derive>
    implements _$$_DeriveCopyWith<$Res> {
  __$$_DeriveCopyWithImpl(_$_Derive _value, $Res Function(_$_Derive) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Derive(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DerivedKeyCreateInputDerive,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DerivedKeyCreateInputDeriveCopyWith<$Res> get data {
    return $DerivedKeyCreateInputDeriveCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_Derive implements _Derive {
  const _$_Derive(this.data, {final String? $type}) : $type = $type ?? 'derive';

  factory _$_Derive.fromJson(Map<String, dynamic> json) =>
      _$$_DeriveFromJson(json);

  @override
  final DerivedKeyCreateInputDerive data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'DerivedKeyCreateInput.derive(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Derive &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DeriveCopyWith<_$_Derive> get copyWith =>
      __$$_DeriveCopyWithImpl<_$_Derive>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(DerivedKeyCreateInputImport data) import,
    required TResult Function(DerivedKeyCreateInputDerive data) derive,
  }) {
    return derive(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(DerivedKeyCreateInputImport data)? import,
    TResult? Function(DerivedKeyCreateInputDerive data)? derive,
  }) {
    return derive?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(DerivedKeyCreateInputImport data)? import,
    TResult Function(DerivedKeyCreateInputDerive data)? derive,
    required TResult orElse(),
  }) {
    if (derive != null) {
      return derive(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Import value) import,
    required TResult Function(_Derive value) derive,
  }) {
    return derive(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Import value)? import,
    TResult? Function(_Derive value)? derive,
  }) {
    return derive?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Import value)? import,
    TResult Function(_Derive value)? derive,
    required TResult orElse(),
  }) {
    if (derive != null) {
      return derive(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DeriveToJson(
      this,
    );
  }
}

abstract class _Derive implements DerivedKeyCreateInput {
  const factory _Derive(final DerivedKeyCreateInputDerive data) = _$_Derive;

  factory _Derive.fromJson(Map<String, dynamic> json) = _$_Derive.fromJson;

  @override
  DerivedKeyCreateInputDerive get data;
  @JsonKey(ignore: true)
  _$$_DeriveCopyWith<_$_Derive> get copyWith =>
      throw _privateConstructorUsedError;
}
