// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_state_changed_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OnStateChangedPayload {
  ContractState get newState;

  /// Create a copy of OnStateChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $OnStateChangedPayloadCopyWith<OnStateChangedPayload> get copyWith =>
      _$OnStateChangedPayloadCopyWithImpl<OnStateChangedPayload>(
          this as OnStateChangedPayload, _$identity);

  /// Serializes this OnStateChangedPayload to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is OnStateChangedPayload &&
            (identical(other.newState, newState) ||
                other.newState == newState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, newState);

  @override
  String toString() {
    return 'OnStateChangedPayload(newState: $newState)';
  }
}

/// @nodoc
abstract mixin class $OnStateChangedPayloadCopyWith<$Res> {
  factory $OnStateChangedPayloadCopyWith(OnStateChangedPayload value,
          $Res Function(OnStateChangedPayload) _then) =
      _$OnStateChangedPayloadCopyWithImpl;
  @useResult
  $Res call({ContractState newState});

  $ContractStateCopyWith<$Res> get newState;
}

/// @nodoc
class _$OnStateChangedPayloadCopyWithImpl<$Res>
    implements $OnStateChangedPayloadCopyWith<$Res> {
  _$OnStateChangedPayloadCopyWithImpl(this._self, this._then);

  final OnStateChangedPayload _self;
  final $Res Function(OnStateChangedPayload) _then;

  /// Create a copy of OnStateChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? newState = null,
  }) {
    return _then(_self.copyWith(
      newState: null == newState
          ? _self.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as ContractState,
    ));
  }

  /// Create a copy of OnStateChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractStateCopyWith<$Res> get newState {
    return $ContractStateCopyWith<$Res>(_self.newState, (value) {
      return _then(_self.copyWith(newState: value));
    });
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _OnStateChangedPayload implements OnStateChangedPayload {
  const _OnStateChangedPayload({required this.newState});
  factory _OnStateChangedPayload.fromJson(Map<String, dynamic> json) =>
      _$OnStateChangedPayloadFromJson(json);

  @override
  final ContractState newState;

  /// Create a copy of OnStateChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$OnStateChangedPayloadCopyWith<_OnStateChangedPayload> get copyWith =>
      __$OnStateChangedPayloadCopyWithImpl<_OnStateChangedPayload>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$OnStateChangedPayloadToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OnStateChangedPayload &&
            (identical(other.newState, newState) ||
                other.newState == newState));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, newState);

  @override
  String toString() {
    return 'OnStateChangedPayload(newState: $newState)';
  }
}

/// @nodoc
abstract mixin class _$OnStateChangedPayloadCopyWith<$Res>
    implements $OnStateChangedPayloadCopyWith<$Res> {
  factory _$OnStateChangedPayloadCopyWith(_OnStateChangedPayload value,
          $Res Function(_OnStateChangedPayload) _then) =
      __$OnStateChangedPayloadCopyWithImpl;
  @override
  @useResult
  $Res call({ContractState newState});

  @override
  $ContractStateCopyWith<$Res> get newState;
}

/// @nodoc
class __$OnStateChangedPayloadCopyWithImpl<$Res>
    implements _$OnStateChangedPayloadCopyWith<$Res> {
  __$OnStateChangedPayloadCopyWithImpl(this._self, this._then);

  final _OnStateChangedPayload _self;
  final $Res Function(_OnStateChangedPayload) _then;

  /// Create a copy of OnStateChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? newState = null,
  }) {
    return _then(_OnStateChangedPayload(
      newState: null == newState
          ? _self.newState
          : newState // ignore: cast_nullable_to_non_nullable
              as ContractState,
    ));
  }

  /// Create a copy of OnStateChangedPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $ContractStateCopyWith<$Res> get newState {
    return $ContractStateCopyWith<$Res>(_self.newState, (value) {
      return _then(_self.copyWith(newState: value));
    });
  }
}

// dart format on
