// dart format width=80
// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_tree_simulation_error_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$TxTreeSimulationErrorItem {
  Address get address;
  TxTreeSimulationError get error;

  /// Create a copy of TxTreeSimulationErrorItem
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TxTreeSimulationErrorItemCopyWith<TxTreeSimulationErrorItem> get copyWith =>
      _$TxTreeSimulationErrorItemCopyWithImpl<TxTreeSimulationErrorItem>(
          this as TxTreeSimulationErrorItem, _$identity);

  /// Serializes this TxTreeSimulationErrorItem to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TxTreeSimulationErrorItem &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, error);

  @override
  String toString() {
    return 'TxTreeSimulationErrorItem(address: $address, error: $error)';
  }
}

/// @nodoc
abstract mixin class $TxTreeSimulationErrorItemCopyWith<$Res> {
  factory $TxTreeSimulationErrorItemCopyWith(TxTreeSimulationErrorItem value,
          $Res Function(TxTreeSimulationErrorItem) _then) =
      _$TxTreeSimulationErrorItemCopyWithImpl;
  @useResult
  $Res call({Address address, TxTreeSimulationError error});

  $AddressCopyWith<$Res> get address;
  $TxTreeSimulationErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$TxTreeSimulationErrorItemCopyWithImpl<$Res>
    implements $TxTreeSimulationErrorItemCopyWith<$Res> {
  _$TxTreeSimulationErrorItemCopyWithImpl(this._self, this._then);

  final TxTreeSimulationErrorItem _self;
  final $Res Function(TxTreeSimulationErrorItem) _then;

  /// Create a copy of TxTreeSimulationErrorItem
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? error = null,
  }) {
    return _then(_self.copyWith(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as TxTreeSimulationError,
    ));
  }

  /// Create a copy of TxTreeSimulationErrorItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of TxTreeSimulationErrorItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TxTreeSimulationErrorCopyWith<$Res> get error {
    return $TxTreeSimulationErrorCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _TxTreeSimulationErrorItem extends TxTreeSimulationErrorItem {
  const _TxTreeSimulationErrorItem({required this.address, required this.error})
      : super._();
  factory _TxTreeSimulationErrorItem.fromJson(Map<String, dynamic> json) =>
      _$TxTreeSimulationErrorItemFromJson(json);

  @override
  final Address address;
  @override
  final TxTreeSimulationError error;

  /// Create a copy of TxTreeSimulationErrorItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  _$TxTreeSimulationErrorItemCopyWith<_TxTreeSimulationErrorItem>
      get copyWith =>
          __$TxTreeSimulationErrorItemCopyWithImpl<_TxTreeSimulationErrorItem>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TxTreeSimulationErrorItemToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _TxTreeSimulationErrorItem &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, address, error);

  @override
  String toString() {
    return 'TxTreeSimulationErrorItem(address: $address, error: $error)';
  }
}

/// @nodoc
abstract mixin class _$TxTreeSimulationErrorItemCopyWith<$Res>
    implements $TxTreeSimulationErrorItemCopyWith<$Res> {
  factory _$TxTreeSimulationErrorItemCopyWith(_TxTreeSimulationErrorItem value,
          $Res Function(_TxTreeSimulationErrorItem) _then) =
      __$TxTreeSimulationErrorItemCopyWithImpl;
  @override
  @useResult
  $Res call({Address address, TxTreeSimulationError error});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $TxTreeSimulationErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$TxTreeSimulationErrorItemCopyWithImpl<$Res>
    implements _$TxTreeSimulationErrorItemCopyWith<$Res> {
  __$TxTreeSimulationErrorItemCopyWithImpl(this._self, this._then);

  final _TxTreeSimulationErrorItem _self;
  final $Res Function(_TxTreeSimulationErrorItem) _then;

  /// Create a copy of TxTreeSimulationErrorItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $Res call({
    Object? address = null,
    Object? error = null,
  }) {
    return _then(_TxTreeSimulationErrorItem(
      address: null == address
          ? _self.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      error: null == error
          ? _self.error
          : error // ignore: cast_nullable_to_non_nullable
              as TxTreeSimulationError,
    ));
  }

  /// Create a copy of TxTreeSimulationErrorItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_self.address, (value) {
      return _then(_self.copyWith(address: value));
    });
  }

  /// Create a copy of TxTreeSimulationErrorItem
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TxTreeSimulationErrorCopyWith<$Res> get error {
    return $TxTreeSimulationErrorCopyWith<$Res>(_self.error, (value) {
      return _then(_self.copyWith(error: value));
    });
  }
}

// dart format on
