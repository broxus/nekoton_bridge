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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnMessageExpiredPayload _$OnMessageExpiredPayloadFromJson(
    Map<String, dynamic> json) {
  return _OnMessageExpiredPayload.fromJson(json);
}

/// @nodoc
mixin _$OnMessageExpiredPayload {
  PendingTransaction get pendingTransaction =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
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
abstract class _$$_OnMessageExpiredPayloadCopyWith<$Res>
    implements $OnMessageExpiredPayloadCopyWith<$Res> {
  factory _$$_OnMessageExpiredPayloadCopyWith(_$_OnMessageExpiredPayload value,
          $Res Function(_$_OnMessageExpiredPayload) then) =
      __$$_OnMessageExpiredPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({PendingTransaction pendingTransaction});

  @override
  $PendingTransactionCopyWith<$Res> get pendingTransaction;
}

/// @nodoc
class __$$_OnMessageExpiredPayloadCopyWithImpl<$Res>
    extends _$OnMessageExpiredPayloadCopyWithImpl<$Res,
        _$_OnMessageExpiredPayload>
    implements _$$_OnMessageExpiredPayloadCopyWith<$Res> {
  __$$_OnMessageExpiredPayloadCopyWithImpl(_$_OnMessageExpiredPayload _value,
      $Res Function(_$_OnMessageExpiredPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? pendingTransaction = null,
  }) {
    return _then(_$_OnMessageExpiredPayload(
      pendingTransaction: null == pendingTransaction
          ? _value.pendingTransaction
          : pendingTransaction // ignore: cast_nullable_to_non_nullable
              as PendingTransaction,
    ));
  }
}

/// @nodoc

@JsonSerializable(fieldRename: FieldRename.snake, explicitToJson: true)
class _$_OnMessageExpiredPayload implements _OnMessageExpiredPayload {
  const _$_OnMessageExpiredPayload({required this.pendingTransaction});

  factory _$_OnMessageExpiredPayload.fromJson(Map<String, dynamic> json) =>
      _$$_OnMessageExpiredPayloadFromJson(json);

  @override
  final PendingTransaction pendingTransaction;

  @override
  String toString() {
    return 'OnMessageExpiredPayload(pendingTransaction: $pendingTransaction)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnMessageExpiredPayload &&
            (identical(other.pendingTransaction, pendingTransaction) ||
                other.pendingTransaction == pendingTransaction));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, pendingTransaction);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnMessageExpiredPayloadCopyWith<_$_OnMessageExpiredPayload>
      get copyWith =>
          __$$_OnMessageExpiredPayloadCopyWithImpl<_$_OnMessageExpiredPayload>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnMessageExpiredPayloadToJson(
      this,
    );
  }
}

abstract class _OnMessageExpiredPayload implements OnMessageExpiredPayload {
  const factory _OnMessageExpiredPayload(
          {required final PendingTransaction pendingTransaction}) =
      _$_OnMessageExpiredPayload;

  factory _OnMessageExpiredPayload.fromJson(Map<String, dynamic> json) =
      _$_OnMessageExpiredPayload.fromJson;

  @override
  PendingTransaction get pendingTransaction;
  @override
  @JsonKey(ignore: true)
  _$$_OnMessageExpiredPayloadCopyWith<_$_OnMessageExpiredPayload>
      get copyWith => throw _privateConstructorUsedError;
}
