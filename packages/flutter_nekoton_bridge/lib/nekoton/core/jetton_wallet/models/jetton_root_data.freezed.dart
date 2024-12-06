// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'jetton_root_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

JettonRootData _$JettonRootDataFromJson(Map<String, dynamic> json) {
  return _JettonRootData.fromJson(json);
}

/// @nodoc
mixin _$JettonRootData {
  bool get mintable => throw _privateConstructorUsedError;
  Address get adminAddress => throw _privateConstructorUsedError;
  JettonMetaData get content => throw _privateConstructorUsedError;

  /// Serializes this JettonRootData to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of JettonRootData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $JettonRootDataCopyWith<JettonRootData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $JettonRootDataCopyWith<$Res> {
  factory $JettonRootDataCopyWith(
          JettonRootData value, $Res Function(JettonRootData) then) =
      _$JettonRootDataCopyWithImpl<$Res, JettonRootData>;
  @useResult
  $Res call({bool mintable, Address adminAddress, JettonMetaData content});

  $AddressCopyWith<$Res> get adminAddress;
  $JettonMetaDataCopyWith<$Res> get content;
}

/// @nodoc
class _$JettonRootDataCopyWithImpl<$Res, $Val extends JettonRootData>
    implements $JettonRootDataCopyWith<$Res> {
  _$JettonRootDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of JettonRootData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mintable = null,
    Object? adminAddress = null,
    Object? content = null,
  }) {
    return _then(_value.copyWith(
      mintable: null == mintable
          ? _value.mintable
          : mintable // ignore: cast_nullable_to_non_nullable
              as bool,
      adminAddress: null == adminAddress
          ? _value.adminAddress
          : adminAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as JettonMetaData,
    ) as $Val);
  }

  /// Create a copy of JettonRootData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $AddressCopyWith<$Res> get adminAddress {
    return $AddressCopyWith<$Res>(_value.adminAddress, (value) {
      return _then(_value.copyWith(adminAddress: value) as $Val);
    });
  }

  /// Create a copy of JettonRootData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JettonMetaDataCopyWith<$Res> get content {
    return $JettonMetaDataCopyWith<$Res>(_value.content, (value) {
      return _then(_value.copyWith(content: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$JettonRootDataImplCopyWith<$Res>
    implements $JettonRootDataCopyWith<$Res> {
  factory _$$JettonRootDataImplCopyWith(_$JettonRootDataImpl value,
          $Res Function(_$JettonRootDataImpl) then) =
      __$$JettonRootDataImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({bool mintable, Address adminAddress, JettonMetaData content});

  @override
  $AddressCopyWith<$Res> get adminAddress;
  @override
  $JettonMetaDataCopyWith<$Res> get content;
}

/// @nodoc
class __$$JettonRootDataImplCopyWithImpl<$Res>
    extends _$JettonRootDataCopyWithImpl<$Res, _$JettonRootDataImpl>
    implements _$$JettonRootDataImplCopyWith<$Res> {
  __$$JettonRootDataImplCopyWithImpl(
      _$JettonRootDataImpl _value, $Res Function(_$JettonRootDataImpl) _then)
      : super(_value, _then);

  /// Create a copy of JettonRootData
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mintable = null,
    Object? adminAddress = null,
    Object? content = null,
  }) {
    return _then(_$JettonRootDataImpl(
      mintable: null == mintable
          ? _value.mintable
          : mintable // ignore: cast_nullable_to_non_nullable
              as bool,
      adminAddress: null == adminAddress
          ? _value.adminAddress
          : adminAddress // ignore: cast_nullable_to_non_nullable
              as Address,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as JettonMetaData,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$JettonRootDataImpl implements _JettonRootData {
  const _$JettonRootDataImpl(
      {required this.mintable,
      required this.adminAddress,
      required this.content});

  factory _$JettonRootDataImpl.fromJson(Map<String, dynamic> json) =>
      _$$JettonRootDataImplFromJson(json);

  @override
  final bool mintable;
  @override
  final Address adminAddress;
  @override
  final JettonMetaData content;

  @override
  String toString() {
    return 'JettonRootData(mintable: $mintable, adminAddress: $adminAddress, content: $content)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$JettonRootDataImpl &&
            (identical(other.mintable, mintable) ||
                other.mintable == mintable) &&
            (identical(other.adminAddress, adminAddress) ||
                other.adminAddress == adminAddress) &&
            (identical(other.content, content) || other.content == content));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, mintable, adminAddress, content);

  /// Create a copy of JettonRootData
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$JettonRootDataImplCopyWith<_$JettonRootDataImpl> get copyWith =>
      __$$JettonRootDataImplCopyWithImpl<_$JettonRootDataImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$JettonRootDataImplToJson(
      this,
    );
  }
}

abstract class _JettonRootData implements JettonRootData {
  const factory _JettonRootData(
      {required final bool mintable,
      required final Address adminAddress,
      required final JettonMetaData content}) = _$JettonRootDataImpl;

  factory _JettonRootData.fromJson(Map<String, dynamic> json) =
      _$JettonRootDataImpl.fromJson;

  @override
  bool get mintable;
  @override
  Address get adminAddress;
  @override
  JettonMetaData get content;

  /// Create a copy of JettonRootData
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$JettonRootDataImplCopyWith<_$JettonRootDataImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
