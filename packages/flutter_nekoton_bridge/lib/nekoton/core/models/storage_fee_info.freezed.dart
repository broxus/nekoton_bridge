// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'storage_fee_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

StorageFeeInfo _$StorageFeeInfoFromJson(Map<String, dynamic> json) {
  return _StorageFeeInfo.fromJson(json);
}

/// @nodoc
mixin _$StorageFeeInfo {
  String get storageFee => throw _privateConstructorUsedError;
  String? get storageFeeDebt => throw _privateConstructorUsedError;
  String get accountStatus => throw _privateConstructorUsedError;
  String get freezeDueLimit => throw _privateConstructorUsedError;
  String get deleteDueLimit => throw _privateConstructorUsedError;

  /// Serializes this StorageFeeInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of StorageFeeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $StorageFeeInfoCopyWith<StorageFeeInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageFeeInfoCopyWith<$Res> {
  factory $StorageFeeInfoCopyWith(
          StorageFeeInfo value, $Res Function(StorageFeeInfo) then) =
      _$StorageFeeInfoCopyWithImpl<$Res, StorageFeeInfo>;
  @useResult
  $Res call(
      {String storageFee,
      String? storageFeeDebt,
      String accountStatus,
      String freezeDueLimit,
      String deleteDueLimit});
}

/// @nodoc
class _$StorageFeeInfoCopyWithImpl<$Res, $Val extends StorageFeeInfo>
    implements $StorageFeeInfoCopyWith<$Res> {
  _$StorageFeeInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of StorageFeeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storageFee = null,
    Object? storageFeeDebt = freezed,
    Object? accountStatus = null,
    Object? freezeDueLimit = null,
    Object? deleteDueLimit = null,
  }) {
    return _then(_value.copyWith(
      storageFee: null == storageFee
          ? _value.storageFee
          : storageFee // ignore: cast_nullable_to_non_nullable
              as String,
      storageFeeDebt: freezed == storageFeeDebt
          ? _value.storageFeeDebt
          : storageFeeDebt // ignore: cast_nullable_to_non_nullable
              as String?,
      accountStatus: null == accountStatus
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as String,
      freezeDueLimit: null == freezeDueLimit
          ? _value.freezeDueLimit
          : freezeDueLimit // ignore: cast_nullable_to_non_nullable
              as String,
      deleteDueLimit: null == deleteDueLimit
          ? _value.deleteDueLimit
          : deleteDueLimit // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$StorageFeeInfoImplCopyWith<$Res>
    implements $StorageFeeInfoCopyWith<$Res> {
  factory _$$StorageFeeInfoImplCopyWith(_$StorageFeeInfoImpl value,
          $Res Function(_$StorageFeeInfoImpl) then) =
      __$$StorageFeeInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String storageFee,
      String? storageFeeDebt,
      String accountStatus,
      String freezeDueLimit,
      String deleteDueLimit});
}

/// @nodoc
class __$$StorageFeeInfoImplCopyWithImpl<$Res>
    extends _$StorageFeeInfoCopyWithImpl<$Res, _$StorageFeeInfoImpl>
    implements _$$StorageFeeInfoImplCopyWith<$Res> {
  __$$StorageFeeInfoImplCopyWithImpl(
      _$StorageFeeInfoImpl _value, $Res Function(_$StorageFeeInfoImpl) _then)
      : super(_value, _then);

  /// Create a copy of StorageFeeInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? storageFee = null,
    Object? storageFeeDebt = freezed,
    Object? accountStatus = null,
    Object? freezeDueLimit = null,
    Object? deleteDueLimit = null,
  }) {
    return _then(_$StorageFeeInfoImpl(
      storageFee: null == storageFee
          ? _value.storageFee
          : storageFee // ignore: cast_nullable_to_non_nullable
              as String,
      storageFeeDebt: freezed == storageFeeDebt
          ? _value.storageFeeDebt
          : storageFeeDebt // ignore: cast_nullable_to_non_nullable
              as String?,
      accountStatus: null == accountStatus
          ? _value.accountStatus
          : accountStatus // ignore: cast_nullable_to_non_nullable
              as String,
      freezeDueLimit: null == freezeDueLimit
          ? _value.freezeDueLimit
          : freezeDueLimit // ignore: cast_nullable_to_non_nullable
              as String,
      deleteDueLimit: null == deleteDueLimit
          ? _value.deleteDueLimit
          : deleteDueLimit // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$StorageFeeInfoImpl implements _StorageFeeInfo {
  const _$StorageFeeInfoImpl(
      {required this.storageFee,
      required this.storageFeeDebt,
      required this.accountStatus,
      required this.freezeDueLimit,
      required this.deleteDueLimit});

  factory _$StorageFeeInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$StorageFeeInfoImplFromJson(json);

  @override
  final String storageFee;
  @override
  final String? storageFeeDebt;
  @override
  final String accountStatus;
  @override
  final String freezeDueLimit;
  @override
  final String deleteDueLimit;

  @override
  String toString() {
    return 'StorageFeeInfo(storageFee: $storageFee, storageFeeDebt: $storageFeeDebt, accountStatus: $accountStatus, freezeDueLimit: $freezeDueLimit, deleteDueLimit: $deleteDueLimit)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$StorageFeeInfoImpl &&
            (identical(other.storageFee, storageFee) ||
                other.storageFee == storageFee) &&
            (identical(other.storageFeeDebt, storageFeeDebt) ||
                other.storageFeeDebt == storageFeeDebt) &&
            (identical(other.accountStatus, accountStatus) ||
                other.accountStatus == accountStatus) &&
            (identical(other.freezeDueLimit, freezeDueLimit) ||
                other.freezeDueLimit == freezeDueLimit) &&
            (identical(other.deleteDueLimit, deleteDueLimit) ||
                other.deleteDueLimit == deleteDueLimit));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, storageFee, storageFeeDebt,
      accountStatus, freezeDueLimit, deleteDueLimit);

  /// Create a copy of StorageFeeInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$StorageFeeInfoImplCopyWith<_$StorageFeeInfoImpl> get copyWith =>
      __$$StorageFeeInfoImplCopyWithImpl<_$StorageFeeInfoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$StorageFeeInfoImplToJson(
      this,
    );
  }
}

abstract class _StorageFeeInfo implements StorageFeeInfo {
  const factory _StorageFeeInfo(
      {required final String storageFee,
      required final String? storageFeeDebt,
      required final String accountStatus,
      required final String freezeDueLimit,
      required final String deleteDueLimit}) = _$StorageFeeInfoImpl;

  factory _StorageFeeInfo.fromJson(Map<String, dynamic> json) =
      _$StorageFeeInfoImpl.fromJson;

  @override
  String get storageFee;
  @override
  String? get storageFeeDebt;
  @override
  String get accountStatus;
  @override
  String get freezeDueLimit;
  @override
  String get deleteDueLimit;

  /// Create a copy of StorageFeeInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$StorageFeeInfoImplCopyWith<_$StorageFeeInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
