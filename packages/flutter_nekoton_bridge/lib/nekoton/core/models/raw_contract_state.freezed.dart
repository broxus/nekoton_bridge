// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'raw_contract_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

RawContractState _$RawContractStateFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'notExists':
      return _NotExists.fromJson(json);
    case 'exists':
      return _Exists.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'RawContractState',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$RawContractState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notExists,
    required TResult Function(ExistingContract data) exists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notExists,
    TResult? Function(ExistingContract data)? exists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notExists,
    TResult Function(ExistingContract data)? exists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_Exists value) exists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_Exists value)? exists,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_Exists value)? exists,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RawContractStateCopyWith<$Res> {
  factory $RawContractStateCopyWith(
          RawContractState value, $Res Function(RawContractState) then) =
      _$RawContractStateCopyWithImpl<$Res, RawContractState>;
}

/// @nodoc
class _$RawContractStateCopyWithImpl<$Res, $Val extends RawContractState>
    implements $RawContractStateCopyWith<$Res> {
  _$RawContractStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_NotExistsCopyWith<$Res> {
  factory _$$_NotExistsCopyWith(
          _$_NotExists value, $Res Function(_$_NotExists) then) =
      __$$_NotExistsCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NotExistsCopyWithImpl<$Res>
    extends _$RawContractStateCopyWithImpl<$Res, _$_NotExists>
    implements _$$_NotExistsCopyWith<$Res> {
  __$$_NotExistsCopyWithImpl(
      _$_NotExists _value, $Res Function(_$_NotExists) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_NotExists implements _NotExists {
  const _$_NotExists({final String? $type}) : $type = $type ?? 'notExists';

  factory _$_NotExists.fromJson(Map<String, dynamic> json) =>
      _$$_NotExistsFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'RawContractState.notExists()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_NotExists);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notExists,
    required TResult Function(ExistingContract data) exists,
  }) {
    return notExists();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notExists,
    TResult? Function(ExistingContract data)? exists,
  }) {
    return notExists?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notExists,
    TResult Function(ExistingContract data)? exists,
    required TResult orElse(),
  }) {
    if (notExists != null) {
      return notExists();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_Exists value) exists,
  }) {
    return notExists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_Exists value)? exists,
  }) {
    return notExists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_Exists value)? exists,
    required TResult orElse(),
  }) {
    if (notExists != null) {
      return notExists(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_NotExistsToJson(
      this,
    );
  }
}

abstract class _NotExists implements RawContractState {
  const factory _NotExists() = _$_NotExists;

  factory _NotExists.fromJson(Map<String, dynamic> json) =
      _$_NotExists.fromJson;
}

/// @nodoc
abstract class _$$_ExistsCopyWith<$Res> {
  factory _$$_ExistsCopyWith(_$_Exists value, $Res Function(_$_Exists) then) =
      __$$_ExistsCopyWithImpl<$Res>;
  @useResult
  $Res call({ExistingContract data});

  $ExistingContractCopyWith<$Res> get data;
}

/// @nodoc
class __$$_ExistsCopyWithImpl<$Res>
    extends _$RawContractStateCopyWithImpl<$Res, _$_Exists>
    implements _$$_ExistsCopyWith<$Res> {
  __$$_ExistsCopyWithImpl(_$_Exists _value, $Res Function(_$_Exists) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Exists(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as ExistingContract,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $ExistingContractCopyWith<$Res> get data {
    return $ExistingContractCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_Exists implements _Exists {
  const _$_Exists(this.data, {final String? $type}) : $type = $type ?? 'exists';

  factory _$_Exists.fromJson(Map<String, dynamic> json) =>
      _$$_ExistsFromJson(json);

  @override
  final ExistingContract data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'RawContractState.exists(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Exists &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ExistsCopyWith<_$_Exists> get copyWith =>
      __$$_ExistsCopyWithImpl<_$_Exists>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() notExists,
    required TResult Function(ExistingContract data) exists,
  }) {
    return exists(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? notExists,
    TResult? Function(ExistingContract data)? exists,
  }) {
    return exists?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? notExists,
    TResult Function(ExistingContract data)? exists,
    required TResult orElse(),
  }) {
    if (exists != null) {
      return exists(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NotExists value) notExists,
    required TResult Function(_Exists value) exists,
  }) {
    return exists(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_NotExists value)? notExists,
    TResult? Function(_Exists value)? exists,
  }) {
    return exists?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NotExists value)? notExists,
    TResult Function(_Exists value)? exists,
    required TResult orElse(),
  }) {
    if (exists != null) {
      return exists(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExistsToJson(
      this,
    );
  }
}

abstract class _Exists implements RawContractState {
  const factory _Exists(final ExistingContract data) = _$_Exists;

  factory _Exists.fromJson(Map<String, dynamic> json) = _$_Exists.fromJson;

  ExistingContract get data;
  @JsonKey(ignore: true)
  _$$_ExistsCopyWith<_$_Exists> get copyWith =>
      throw _privateConstructorUsedError;
}
