// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_update_key_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LedgerUpdateKeyInput _$LedgerUpdateKeyInputFromJson(Map<String, dynamic> json) {
  switch (json['type']) {
    case 'default':
      return _LedgerUpdateKeyInput.fromJson(json);
    case 'rename':
      return _LedgerUpdateKeyInputRename.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'LedgerUpdateKeyInput',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$LedgerUpdateKeyInput {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(LedgerUpdateKeyInputRename data) rename,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(LedgerUpdateKeyInputRename data)? rename,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(LedgerUpdateKeyInputRename data)? rename,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LedgerUpdateKeyInput value) $default, {
    required TResult Function(_LedgerUpdateKeyInputRename value) rename,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LedgerUpdateKeyInput value)? $default, {
    TResult? Function(_LedgerUpdateKeyInputRename value)? rename,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LedgerUpdateKeyInput value)? $default, {
    TResult Function(_LedgerUpdateKeyInputRename value)? rename,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LedgerUpdateKeyInputCopyWith<$Res> {
  factory $LedgerUpdateKeyInputCopyWith(LedgerUpdateKeyInput value,
          $Res Function(LedgerUpdateKeyInput) then) =
      _$LedgerUpdateKeyInputCopyWithImpl<$Res, LedgerUpdateKeyInput>;
}

/// @nodoc
class _$LedgerUpdateKeyInputCopyWithImpl<$Res,
        $Val extends LedgerUpdateKeyInput>
    implements $LedgerUpdateKeyInputCopyWith<$Res> {
  _$LedgerUpdateKeyInputCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_LedgerUpdateKeyInputCopyWith<$Res> {
  factory _$$_LedgerUpdateKeyInputCopyWith(_$_LedgerUpdateKeyInput value,
          $Res Function(_$_LedgerUpdateKeyInput) then) =
      __$$_LedgerUpdateKeyInputCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LedgerUpdateKeyInputCopyWithImpl<$Res>
    extends _$LedgerUpdateKeyInputCopyWithImpl<$Res, _$_LedgerUpdateKeyInput>
    implements _$$_LedgerUpdateKeyInputCopyWith<$Res> {
  __$$_LedgerUpdateKeyInputCopyWithImpl(_$_LedgerUpdateKeyInput _value,
      $Res Function(_$_LedgerUpdateKeyInput) _then)
      : super(_value, _then);
}

/// @nodoc
@JsonSerializable()
class _$_LedgerUpdateKeyInput implements _LedgerUpdateKeyInput {
  const _$_LedgerUpdateKeyInput({final String? $type})
      : $type = $type ?? 'default';

  factory _$_LedgerUpdateKeyInput.fromJson(Map<String, dynamic> json) =>
      _$$_LedgerUpdateKeyInputFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'LedgerUpdateKeyInput()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LedgerUpdateKeyInput);
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(LedgerUpdateKeyInputRename data) rename,
  }) {
    return $default();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(LedgerUpdateKeyInputRename data)? rename,
  }) {
    return $default?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(LedgerUpdateKeyInputRename data)? rename,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LedgerUpdateKeyInput value) $default, {
    required TResult Function(_LedgerUpdateKeyInputRename value) rename,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LedgerUpdateKeyInput value)? $default, {
    TResult? Function(_LedgerUpdateKeyInputRename value)? rename,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LedgerUpdateKeyInput value)? $default, {
    TResult Function(_LedgerUpdateKeyInputRename value)? rename,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LedgerUpdateKeyInputToJson(
      this,
    );
  }
}

abstract class _LedgerUpdateKeyInput implements LedgerUpdateKeyInput {
  const factory _LedgerUpdateKeyInput() = _$_LedgerUpdateKeyInput;

  factory _LedgerUpdateKeyInput.fromJson(Map<String, dynamic> json) =
      _$_LedgerUpdateKeyInput.fromJson;
}

/// @nodoc
abstract class _$$_LedgerUpdateKeyInputRenameCopyWith<$Res> {
  factory _$$_LedgerUpdateKeyInputRenameCopyWith(
          _$_LedgerUpdateKeyInputRename value,
          $Res Function(_$_LedgerUpdateKeyInputRename) then) =
      __$$_LedgerUpdateKeyInputRenameCopyWithImpl<$Res>;
  @useResult
  $Res call({LedgerUpdateKeyInputRename data});

  $LedgerUpdateKeyInputRenameCopyWith<$Res> get data;
}

/// @nodoc
class __$$_LedgerUpdateKeyInputRenameCopyWithImpl<$Res>
    extends _$LedgerUpdateKeyInputCopyWithImpl<$Res,
        _$_LedgerUpdateKeyInputRename>
    implements _$$_LedgerUpdateKeyInputRenameCopyWith<$Res> {
  __$$_LedgerUpdateKeyInputRenameCopyWithImpl(
      _$_LedgerUpdateKeyInputRename _value,
      $Res Function(_$_LedgerUpdateKeyInputRename) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_LedgerUpdateKeyInputRename(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LedgerUpdateKeyInputRename,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $LedgerUpdateKeyInputRenameCopyWith<$Res> get data {
    return $LedgerUpdateKeyInputRenameCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_LedgerUpdateKeyInputRename implements _LedgerUpdateKeyInputRename {
  const _$_LedgerUpdateKeyInputRename(this.data, {final String? $type})
      : $type = $type ?? 'rename';

  factory _$_LedgerUpdateKeyInputRename.fromJson(Map<String, dynamic> json) =>
      _$$_LedgerUpdateKeyInputRenameFromJson(json);

  @override
  final LedgerUpdateKeyInputRename data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'LedgerUpdateKeyInput.rename(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LedgerUpdateKeyInputRename &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LedgerUpdateKeyInputRenameCopyWith<_$_LedgerUpdateKeyInputRename>
      get copyWith => __$$_LedgerUpdateKeyInputRenameCopyWithImpl<
          _$_LedgerUpdateKeyInputRename>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function() $default, {
    required TResult Function(LedgerUpdateKeyInputRename data) rename,
  }) {
    return rename(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult? Function()? $default, {
    TResult? Function(LedgerUpdateKeyInputRename data)? rename,
  }) {
    return rename?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function()? $default, {
    TResult Function(LedgerUpdateKeyInputRename data)? rename,
    required TResult orElse(),
  }) {
    if (rename != null) {
      return rename(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_LedgerUpdateKeyInput value) $default, {
    required TResult Function(_LedgerUpdateKeyInputRename value) rename,
  }) {
    return rename(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult? Function(_LedgerUpdateKeyInput value)? $default, {
    TResult? Function(_LedgerUpdateKeyInputRename value)? rename,
  }) {
    return rename?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_LedgerUpdateKeyInput value)? $default, {
    TResult Function(_LedgerUpdateKeyInputRename value)? rename,
    required TResult orElse(),
  }) {
    if (rename != null) {
      return rename(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_LedgerUpdateKeyInputRenameToJson(
      this,
    );
  }
}

abstract class _LedgerUpdateKeyInputRename implements LedgerUpdateKeyInput {
  const factory _LedgerUpdateKeyInputRename(
      final LedgerUpdateKeyInputRename data) = _$_LedgerUpdateKeyInputRename;

  factory _LedgerUpdateKeyInputRename.fromJson(Map<String, dynamic> json) =
      _$_LedgerUpdateKeyInputRename.fromJson;

  LedgerUpdateKeyInputRename get data;
  @JsonKey(ignore: true)
  _$$_LedgerUpdateKeyInputRenameCopyWith<_$_LedgerUpdateKeyInputRename>
      get copyWith => throw _privateConstructorUsedError;
}
