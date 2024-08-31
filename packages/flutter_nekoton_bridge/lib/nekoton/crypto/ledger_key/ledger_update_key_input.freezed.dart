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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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

  /// Serializes this LedgerUpdateKeyInput to a JSON map.
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

  /// Create a copy of LedgerUpdateKeyInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LedgerUpdateKeyInputImplCopyWith<$Res> {
  factory _$$LedgerUpdateKeyInputImplCopyWith(_$LedgerUpdateKeyInputImpl value,
          $Res Function(_$LedgerUpdateKeyInputImpl) then) =
      __$$LedgerUpdateKeyInputImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LedgerUpdateKeyInputImplCopyWithImpl<$Res>
    extends _$LedgerUpdateKeyInputCopyWithImpl<$Res, _$LedgerUpdateKeyInputImpl>
    implements _$$LedgerUpdateKeyInputImplCopyWith<$Res> {
  __$$LedgerUpdateKeyInputImplCopyWithImpl(_$LedgerUpdateKeyInputImpl _value,
      $Res Function(_$LedgerUpdateKeyInputImpl) _then)
      : super(_value, _then);

  /// Create a copy of LedgerUpdateKeyInput
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$LedgerUpdateKeyInputImpl implements _LedgerUpdateKeyInput {
  const _$LedgerUpdateKeyInputImpl({final String? $type})
      : $type = $type ?? 'default';

  factory _$LedgerUpdateKeyInputImpl.fromJson(Map<String, dynamic> json) =>
      _$$LedgerUpdateKeyInputImplFromJson(json);

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'LedgerUpdateKeyInput()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerUpdateKeyInputImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
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
    return _$$LedgerUpdateKeyInputImplToJson(
      this,
    );
  }
}

abstract class _LedgerUpdateKeyInput implements LedgerUpdateKeyInput {
  const factory _LedgerUpdateKeyInput() = _$LedgerUpdateKeyInputImpl;

  factory _LedgerUpdateKeyInput.fromJson(Map<String, dynamic> json) =
      _$LedgerUpdateKeyInputImpl.fromJson;
}

/// @nodoc
abstract class _$$LedgerUpdateKeyInputRenameImplCopyWith<$Res> {
  factory _$$LedgerUpdateKeyInputRenameImplCopyWith(
          _$LedgerUpdateKeyInputRenameImpl value,
          $Res Function(_$LedgerUpdateKeyInputRenameImpl) then) =
      __$$LedgerUpdateKeyInputRenameImplCopyWithImpl<$Res>;
  @useResult
  $Res call({LedgerUpdateKeyInputRename data});

  $LedgerUpdateKeyInputRenameCopyWith<$Res> get data;
}

/// @nodoc
class __$$LedgerUpdateKeyInputRenameImplCopyWithImpl<$Res>
    extends _$LedgerUpdateKeyInputCopyWithImpl<$Res,
        _$LedgerUpdateKeyInputRenameImpl>
    implements _$$LedgerUpdateKeyInputRenameImplCopyWith<$Res> {
  __$$LedgerUpdateKeyInputRenameImplCopyWithImpl(
      _$LedgerUpdateKeyInputRenameImpl _value,
      $Res Function(_$LedgerUpdateKeyInputRenameImpl) _then)
      : super(_value, _then);

  /// Create a copy of LedgerUpdateKeyInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$LedgerUpdateKeyInputRenameImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as LedgerUpdateKeyInputRename,
    ));
  }

  /// Create a copy of LedgerUpdateKeyInput
  /// with the given fields replaced by the non-null parameter values.
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
class _$LedgerUpdateKeyInputRenameImpl implements _LedgerUpdateKeyInputRename {
  const _$LedgerUpdateKeyInputRenameImpl(this.data, {final String? $type})
      : $type = $type ?? 'rename';

  factory _$LedgerUpdateKeyInputRenameImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$LedgerUpdateKeyInputRenameImplFromJson(json);

  @override
  final LedgerUpdateKeyInputRename data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'LedgerUpdateKeyInput.rename(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LedgerUpdateKeyInputRenameImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  /// Create a copy of LedgerUpdateKeyInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LedgerUpdateKeyInputRenameImplCopyWith<_$LedgerUpdateKeyInputRenameImpl>
      get copyWith => __$$LedgerUpdateKeyInputRenameImplCopyWithImpl<
          _$LedgerUpdateKeyInputRenameImpl>(this, _$identity);

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
    return _$$LedgerUpdateKeyInputRenameImplToJson(
      this,
    );
  }
}

abstract class _LedgerUpdateKeyInputRename implements LedgerUpdateKeyInput {
  const factory _LedgerUpdateKeyInputRename(
      final LedgerUpdateKeyInputRename data) = _$LedgerUpdateKeyInputRenameImpl;

  factory _LedgerUpdateKeyInputRename.fromJson(Map<String, dynamic> json) =
      _$LedgerUpdateKeyInputRenameImpl.fromJson;

  LedgerUpdateKeyInputRename get data;

  /// Create a copy of LedgerUpdateKeyInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LedgerUpdateKeyInputRenameImplCopyWith<_$LedgerUpdateKeyInputRenameImpl>
      get copyWith => throw _privateConstructorUsedError;
}
