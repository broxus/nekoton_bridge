// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_message_expired_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OnMessageExpiredPayload _$OnMessageExpiredPayloadFromJson(
    Map<String, dynamic> json) {
  return _OnMessageExpiredPayload.fromJson(json);
}

/// @nodoc
mixin _$OnMessageExpiredPayload {
  PendingTransaction get pendingTransaction =>
      throw _privateConstructorUsedError;

  /// Serializes this OnMessageExpiredPayload to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OnMessageExpiredPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnMessageExpiredPayloadCopyWith<OnMessageExpiredPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnMessageExpiredPayloadCopyWith<$Res> {
  factory $OnMessageExpiredPayloadCopyWith(OnMessageExpiredPayload value,
          $Res Function(OnMessageExpiredPayload) then) =
      _$OnMessageExpiredPayloadCopyWithImpl<$Res, OnMessageExpiredPayload>;
  @useResult
  $Res call({PendingTransaction pendingTransaction});

  $PendingTransactionCopyWith<$Res> get pendingTransaction;
}

/// @nodoc
class _$OnMessageExpiredPayloadCopyWithImpl<$Res,
        $Val extends OnMessageExpiredPayload>
    implements $OnMessageExpiredPayloadCopyWith<$Res> {
  _$OnMessageExpiredPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnMessageExpiredPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingTransaction = null,
  }) {
    return _then(_value.copyWith(
      pendingTransaction: null == pendingTransaction
          ? _value.pendingTransaction
          : pendingTransaction // ignore: cast_nullable_to_non_nullable
              as PendingTransaction,
    ) as $Val);
  }

  /// Create a copy of OnMessageExpiredPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $PendingTransactionCopyWith<$Res> get pendingTransaction {
    return $PendingTransactionCopyWith<$Res>(_value.pendingTransaction,
        (value) {
      return _then(_value.copyWith(pendingTransaction: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$OnMessageExpiredPayloadImplCopyWith<$Res>
    implements $OnMessageExpiredPayloadCopyWith<$Res> {
  factory _$$OnMessageExpiredPayloadImplCopyWith(
          _$OnMessageExpiredPayloadImpl value,
          $Res Function(_$OnMessageExpiredPayloadImpl) then) =
      __$$OnMessageExpiredPayloadImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PendingTransaction pendingTransaction});

  @override
  $PendingTransactionCopyWith<$Res> get pendingTransaction;
}

/// @nodoc
class __$$OnMessageExpiredPayloadImplCopyWithImpl<$Res>
    extends _$OnMessageExpiredPayloadCopyWithImpl<$Res,
        _$OnMessageExpiredPayloadImpl>
    implements _$$OnMessageExpiredPayloadImplCopyWith<$Res> {
  __$$OnMessageExpiredPayloadImplCopyWithImpl(
      _$OnMessageExpiredPayloadImpl _value,
      $Res Function(_$OnMessageExpiredPayloadImpl) _then)
      : super(_value, _then);

  /// Create a copy of OnMessageExpiredPayload
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingTransaction = null,
  }) {
    return _then(_$OnMessageExpiredPayloadImpl(
      pendingTransaction: null == pendingTransaction
          ? _value.pendingTransaction
          : pendingTransaction // ignore: cast_nullable_to_non_nullable
              as PendingTransaction,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$OnMessageExpiredPayloadImpl implements _OnMessageExpiredPayload {
  const _$OnMessageExpiredPayloadImpl({required this.pendingTransaction});

  factory _$OnMessageExpiredPayloadImpl.fromJson(Map<String, dynamic> json) =>
      _$$OnMessageExpiredPayloadImplFromJson(json);

  @override
  final PendingTransaction pendingTransaction;

  @override
  String toString() {
    return 'OnMessageExpiredPayload(pendingTransaction: $pendingTransaction)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnMessageExpiredPayloadImpl &&
            (identical(other.pendingTransaction, pendingTransaction) ||
                other.pendingTransaction == pendingTransaction));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, pendingTransaction);

  /// Create a copy of OnMessageExpiredPayload
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnMessageExpiredPayloadImplCopyWith<_$OnMessageExpiredPayloadImpl>
      get copyWith => __$$OnMessageExpiredPayloadImplCopyWithImpl<
          _$OnMessageExpiredPayloadImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OnMessageExpiredPayloadImplToJson(
      this,
    );
  }
}

abstract class _OnMessageExpiredPayload implements OnMessageExpiredPayload {
  const factory _OnMessageExpiredPayload(
          {required final PendingTransaction pendingTransaction}) =
      _$OnMessageExpiredPayloadImpl;

  factory _OnMessageExpiredPayload.fromJson(Map<String, dynamic> json) =
      _$OnMessageExpiredPayloadImpl.fromJson;

  @override
  PendingTransaction get pendingTransaction;

  /// Create a copy of OnMessageExpiredPayload
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnMessageExpiredPayloadImplCopyWith<_$OnMessageExpiredPayloadImpl>
      get copyWith => throw _privateConstructorUsedError;
}
