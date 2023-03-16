// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'on_balance_changed_payload.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnBalanceChangedPayload _$OnBalanceChangedPayloadFromJson(
    Map<String, dynamic> json) {
  return _OnBalanceChangedPayload.fromJson(json);
}

/// @nodoc
mixin _$OnBalanceChangedPayload {
  String get balance => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnBalanceChangedPayloadCopyWith<OnBalanceChangedPayload> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBalanceChangedPayloadCopyWith<$Res> {
  factory $OnBalanceChangedPayloadCopyWith(OnBalanceChangedPayload value,
          $Res Function(OnBalanceChangedPayload) then) =
      _$OnBalanceChangedPayloadCopyWithImpl<$Res, OnBalanceChangedPayload>;
  @useResult
  $Res call({String balance});
}

/// @nodoc
class _$OnBalanceChangedPayloadCopyWithImpl<$Res,
        $Val extends OnBalanceChangedPayload>
    implements $OnBalanceChangedPayloadCopyWith<$Res> {
  _$OnBalanceChangedPayloadCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_value.copyWith(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnBalanceChangedPayloadCopyWith<$Res>
    implements $OnBalanceChangedPayloadCopyWith<$Res> {
  factory _$$_OnBalanceChangedPayloadCopyWith(_$_OnBalanceChangedPayload value,
          $Res Function(_$_OnBalanceChangedPayload) then) =
      __$$_OnBalanceChangedPayloadCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String balance});
}

/// @nodoc
class __$$_OnBalanceChangedPayloadCopyWithImpl<$Res>
    extends _$OnBalanceChangedPayloadCopyWithImpl<$Res,
        _$_OnBalanceChangedPayload>
    implements _$$_OnBalanceChangedPayloadCopyWith<$Res> {
  __$$_OnBalanceChangedPayloadCopyWithImpl(_$_OnBalanceChangedPayload _value,
      $Res Function(_$_OnBalanceChangedPayload) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? balance = null,
  }) {
    return _then(_$_OnBalanceChangedPayload(
      balance: null == balance
          ? _value.balance
          : balance // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnBalanceChangedPayload implements _OnBalanceChangedPayload {
  const _$_OnBalanceChangedPayload({required this.balance});

  factory _$_OnBalanceChangedPayload.fromJson(Map<String, dynamic> json) =>
      _$$_OnBalanceChangedPayloadFromJson(json);

  @override
  final String balance;

  @override
  String toString() {
    return 'OnBalanceChangedPayload(balance: $balance)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnBalanceChangedPayload &&
            (identical(other.balance, balance) || other.balance == balance));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, balance);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnBalanceChangedPayloadCopyWith<_$_OnBalanceChangedPayload>
      get copyWith =>
          __$$_OnBalanceChangedPayloadCopyWithImpl<_$_OnBalanceChangedPayload>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnBalanceChangedPayloadToJson(
      this,
    );
  }
}

abstract class _OnBalanceChangedPayload implements OnBalanceChangedPayload {
  const factory _OnBalanceChangedPayload({required final String balance}) =
      _$_OnBalanceChangedPayload;

  factory _OnBalanceChangedPayload.fromJson(Map<String, dynamic> json) =
      _$_OnBalanceChangedPayload.fromJson;

  @override
  String get balance;
  @override
  @JsonKey(ignore: true)
  _$$_OnBalanceChangedPayloadCopyWith<_$_OnBalanceChangedPayload>
      get copyWith => throw _privateConstructorUsedError;
}
