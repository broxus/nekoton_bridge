// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'ledger_key_create_input.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$LedgerKeyCreateInput {
  String? get name;
  int get accountId;

  /// Create a copy of LedgerKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $LedgerKeyCreateInputCopyWith<LedgerKeyCreateInput> get copyWith =>
      _$LedgerKeyCreateInputCopyWithImpl<LedgerKeyCreateInput>(
          this as LedgerKeyCreateInput, _$identity);

  /// Serializes this LedgerKeyCreateInput to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is LedgerKeyCreateInput &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, accountId);

  @override
  String toString() {
    return 'LedgerKeyCreateInput(name: $name, accountId: $accountId)';
  }
}

/// @nodoc
abstract mixin class $LedgerKeyCreateInputCopyWith<$Res> {
  factory $LedgerKeyCreateInputCopyWith(LedgerKeyCreateInput value,
          $Res Function(LedgerKeyCreateInput) _then) =
      _$LedgerKeyCreateInputCopyWithImpl;
  @useResult
  $Res call({String? name, int accountId});
}

/// @nodoc
class _$LedgerKeyCreateInputCopyWithImpl<$Res>
    implements $LedgerKeyCreateInputCopyWith<$Res> {
  _$LedgerKeyCreateInputCopyWithImpl(this._self, this._then);

  final LedgerKeyCreateInput _self;
  final $Res Function(LedgerKeyCreateInput) _then;

  /// Create a copy of LedgerKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = freezed,
    Object? accountId = null,
  }) {
    return _then(_self.copyWith(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake)
class _LedgerKeyCreateInput implements LedgerKeyCreateInput {
  const _LedgerKeyCreateInput({this.name, required this.accountId});
  factory _LedgerKeyCreateInput.fromJson(Map<String, dynamic> json) =>
      _$LedgerKeyCreateInputFromJson(json);

  @override
  final String? name;
  @override
  final int accountId;

  /// Create a copy of LedgerKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$LedgerKeyCreateInputCopyWith<_LedgerKeyCreateInput> get copyWith =>
      __$LedgerKeyCreateInputCopyWithImpl<_LedgerKeyCreateInput>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$LedgerKeyCreateInputToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _LedgerKeyCreateInput &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.accountId, accountId) ||
                other.accountId == accountId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, accountId);

  @override
  String toString() {
    return 'LedgerKeyCreateInput(name: $name, accountId: $accountId)';
  }
}

/// @nodoc
abstract mixin class _$LedgerKeyCreateInputCopyWith<$Res>
    implements $LedgerKeyCreateInputCopyWith<$Res> {
  factory _$LedgerKeyCreateInputCopyWith(_LedgerKeyCreateInput value,
          $Res Function(_LedgerKeyCreateInput) _then) =
      __$LedgerKeyCreateInputCopyWithImpl;
  @override
  @useResult
  $Res call({String? name, int accountId});
}

/// @nodoc
class __$LedgerKeyCreateInputCopyWithImpl<$Res>
    implements _$LedgerKeyCreateInputCopyWith<$Res> {
  __$LedgerKeyCreateInputCopyWithImpl(this._self, this._then);

  final _LedgerKeyCreateInput _self;
  final $Res Function(_LedgerKeyCreateInput) _then;

  /// Create a copy of LedgerKeyCreateInput
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? name = freezed,
    Object? accountId = null,
  }) {
    return _then(_LedgerKeyCreateInput(
      name: freezed == name
          ? _self.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      accountId: null == accountId
          ? _self.accountId
          : accountId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

// dart format on
