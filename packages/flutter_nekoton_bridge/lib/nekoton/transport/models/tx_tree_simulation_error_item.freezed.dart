// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tx_tree_simulation_error_item.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

TxTreeSimulationErrorItem _$TxTreeSimulationErrorItemFromJson(
    Map<String, dynamic> json) {
  return _TxTreeSimulationErrorItem.fromJson(json);
}

/// @nodoc
mixin _$TxTreeSimulationErrorItem {
  Address get address => throw _privateConstructorUsedError;
  TxTreeSimulationError get error => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TxTreeSimulationErrorItemCopyWith<TxTreeSimulationErrorItem> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TxTreeSimulationErrorItemCopyWith<$Res> {
  factory $TxTreeSimulationErrorItemCopyWith(TxTreeSimulationErrorItem value,
          $Res Function(TxTreeSimulationErrorItem) then) =
      _$TxTreeSimulationErrorItemCopyWithImpl<$Res, TxTreeSimulationErrorItem>;
  @useResult
  $Res call({Address address, TxTreeSimulationError error});

  $AddressCopyWith<$Res> get address;
  $TxTreeSimulationErrorCopyWith<$Res> get error;
}

/// @nodoc
class _$TxTreeSimulationErrorItemCopyWithImpl<$Res,
        $Val extends TxTreeSimulationErrorItem>
    implements $TxTreeSimulationErrorItemCopyWith<$Res> {
  _$TxTreeSimulationErrorItemCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TxTreeSimulationError,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get address {
    return $AddressCopyWith<$Res>(_value.address, (value) {
      return _then(_value.copyWith(address: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $TxTreeSimulationErrorCopyWith<$Res> get error {
    return $TxTreeSimulationErrorCopyWith<$Res>(_value.error, (value) {
      return _then(_value.copyWith(error: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$TxTreeSimulationErrorItemImplCopyWith<$Res>
    implements $TxTreeSimulationErrorItemCopyWith<$Res> {
  factory _$$TxTreeSimulationErrorItemImplCopyWith(
          _$TxTreeSimulationErrorItemImpl value,
          $Res Function(_$TxTreeSimulationErrorItemImpl) then) =
      __$$TxTreeSimulationErrorItemImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Address address, TxTreeSimulationError error});

  @override
  $AddressCopyWith<$Res> get address;
  @override
  $TxTreeSimulationErrorCopyWith<$Res> get error;
}

/// @nodoc
class __$$TxTreeSimulationErrorItemImplCopyWithImpl<$Res>
    extends _$TxTreeSimulationErrorItemCopyWithImpl<$Res,
        _$TxTreeSimulationErrorItemImpl>
    implements _$$TxTreeSimulationErrorItemImplCopyWith<$Res> {
  __$$TxTreeSimulationErrorItemImplCopyWithImpl(
      _$TxTreeSimulationErrorItemImpl _value,
      $Res Function(_$TxTreeSimulationErrorItemImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = null,
    Object? error = null,
  }) {
    return _then(_$TxTreeSimulationErrorItemImpl(
      address: null == address
          ? _value.address
          : address // ignore: cast_nullable_to_non_nullable
              as Address,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as TxTreeSimulationError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TxTreeSimulationErrorItemImpl extends _TxTreeSimulationErrorItem {
  const _$TxTreeSimulationErrorItemImpl(
      {required this.address, required this.error})
      : super._();

  factory _$TxTreeSimulationErrorItemImpl.fromJson(Map<String, dynamic> json) =>
      _$$TxTreeSimulationErrorItemImplFromJson(json);

  @override
  final Address address;
  @override
  final TxTreeSimulationError error;

  @override
  String toString() {
    return 'TxTreeSimulationErrorItem(address: $address, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TxTreeSimulationErrorItemImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.error, error) || other.error == error));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, address, error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TxTreeSimulationErrorItemImplCopyWith<_$TxTreeSimulationErrorItemImpl>
      get copyWith => __$$TxTreeSimulationErrorItemImplCopyWithImpl<
          _$TxTreeSimulationErrorItemImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TxTreeSimulationErrorItemImplToJson(
      this,
    );
  }
}

abstract class _TxTreeSimulationErrorItem extends TxTreeSimulationErrorItem {
  const factory _TxTreeSimulationErrorItem(
          {required final Address address,
          required final TxTreeSimulationError error}) =
      _$TxTreeSimulationErrorItemImpl;
  const _TxTreeSimulationErrorItem._() : super._();

  factory _TxTreeSimulationErrorItem.fromJson(Map<String, dynamic> json) =
      _$TxTreeSimulationErrorItemImpl.fromJson;

  @override
  Address get address;
  @override
  TxTreeSimulationError get error;
  @override
  @JsonKey(ignore: true)
  _$$TxTreeSimulationErrorItemImplCopyWith<_$TxTreeSimulationErrorItemImpl>
      get copyWith => throw _privateConstructorUsedError;
}
