// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'de_pool_receive_answer_notification.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DePoolReceiveAnswerNotification _$DePoolReceiveAnswerNotificationFromJson(
    Map<String, dynamic> json) {
  return _DePoolReceiveAnswerNotification.fromJson(json);
}

/// @nodoc
mixin _$DePoolReceiveAnswerNotification {
  int get errorCode => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DePoolReceiveAnswerNotificationCopyWith<DePoolReceiveAnswerNotification>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DePoolReceiveAnswerNotificationCopyWith<$Res> {
  factory $DePoolReceiveAnswerNotificationCopyWith(
          DePoolReceiveAnswerNotification value,
          $Res Function(DePoolReceiveAnswerNotification) then) =
      _$DePoolReceiveAnswerNotificationCopyWithImpl<$Res,
          DePoolReceiveAnswerNotification>;
  @useResult
  $Res call({int errorCode, String comment});
}

/// @nodoc
class _$DePoolReceiveAnswerNotificationCopyWithImpl<$Res,
        $Val extends DePoolReceiveAnswerNotification>
    implements $DePoolReceiveAnswerNotificationCopyWith<$Res> {
  _$DePoolReceiveAnswerNotificationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? comment = null,
  }) {
    return _then(_value.copyWith(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_DePoolReceiveAnswerNotificationCopyWith<$Res>
    implements $DePoolReceiveAnswerNotificationCopyWith<$Res> {
  factory _$$_DePoolReceiveAnswerNotificationCopyWith(
          _$_DePoolReceiveAnswerNotification value,
          $Res Function(_$_DePoolReceiveAnswerNotification) then) =
      __$$_DePoolReceiveAnswerNotificationCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errorCode, String comment});
}

/// @nodoc
class __$$_DePoolReceiveAnswerNotificationCopyWithImpl<$Res>
    extends _$DePoolReceiveAnswerNotificationCopyWithImpl<$Res,
        _$_DePoolReceiveAnswerNotification>
    implements _$$_DePoolReceiveAnswerNotificationCopyWith<$Res> {
  __$$_DePoolReceiveAnswerNotificationCopyWithImpl(
      _$_DePoolReceiveAnswerNotification _value,
      $Res Function(_$_DePoolReceiveAnswerNotification) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? comment = null,
  }) {
    return _then(_$_DePoolReceiveAnswerNotification(
      errorCode: null == errorCode
          ? _value.errorCode
          : errorCode // ignore: cast_nullable_to_non_nullable
              as int,
      comment: null == comment
          ? _value.comment
          : comment // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DePoolReceiveAnswerNotification
    implements _DePoolReceiveAnswerNotification {
  const _$_DePoolReceiveAnswerNotification(
      {required this.errorCode, required this.comment});

  factory _$_DePoolReceiveAnswerNotification.fromJson(
          Map<String, dynamic> json) =>
      _$$_DePoolReceiveAnswerNotificationFromJson(json);

  @override
  final int errorCode;
  @override
  final String comment;

  @override
  String toString() {
    return 'DePoolReceiveAnswerNotification(errorCode: $errorCode, comment: $comment)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DePoolReceiveAnswerNotification &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode, comment);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DePoolReceiveAnswerNotificationCopyWith<
          _$_DePoolReceiveAnswerNotification>
      get copyWith => __$$_DePoolReceiveAnswerNotificationCopyWithImpl<
          _$_DePoolReceiveAnswerNotification>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DePoolReceiveAnswerNotificationToJson(
      this,
    );
  }
}

abstract class _DePoolReceiveAnswerNotification
    implements DePoolReceiveAnswerNotification {
  const factory _DePoolReceiveAnswerNotification(
      {required final int errorCode,
      required final String comment}) = _$_DePoolReceiveAnswerNotification;

  factory _DePoolReceiveAnswerNotification.fromJson(Map<String, dynamic> json) =
      _$_DePoolReceiveAnswerNotification.fromJson;

  @override
  int get errorCode;
  @override
  String get comment;
  @override
  @JsonKey(ignore: true)
  _$$_DePoolReceiveAnswerNotificationCopyWith<
          _$_DePoolReceiveAnswerNotification>
      get copyWith => throw _privateConstructorUsedError;
}
