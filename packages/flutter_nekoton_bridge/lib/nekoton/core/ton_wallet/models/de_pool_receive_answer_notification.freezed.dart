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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

DePoolReceiveAnswerNotification _$DePoolReceiveAnswerNotificationFromJson(
    Map<String, dynamic> json) {
  return _DePoolReceiveAnswerNotification.fromJson(json);
}

/// @nodoc
mixin _$DePoolReceiveAnswerNotification {
  int get errorCode => throw _privateConstructorUsedError;
  String get comment => throw _privateConstructorUsedError;

  /// Serializes this DePoolReceiveAnswerNotification to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of DePoolReceiveAnswerNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
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

  /// Create a copy of DePoolReceiveAnswerNotification
  /// with the given fields replaced by the non-null parameter values.
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
abstract class _$$DePoolReceiveAnswerNotificationImplCopyWith<$Res>
    implements $DePoolReceiveAnswerNotificationCopyWith<$Res> {
  factory _$$DePoolReceiveAnswerNotificationImplCopyWith(
          _$DePoolReceiveAnswerNotificationImpl value,
          $Res Function(_$DePoolReceiveAnswerNotificationImpl) then) =
      __$$DePoolReceiveAnswerNotificationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int errorCode, String comment});
}

/// @nodoc
class __$$DePoolReceiveAnswerNotificationImplCopyWithImpl<$Res>
    extends _$DePoolReceiveAnswerNotificationCopyWithImpl<$Res,
        _$DePoolReceiveAnswerNotificationImpl>
    implements _$$DePoolReceiveAnswerNotificationImplCopyWith<$Res> {
  __$$DePoolReceiveAnswerNotificationImplCopyWithImpl(
      _$DePoolReceiveAnswerNotificationImpl _value,
      $Res Function(_$DePoolReceiveAnswerNotificationImpl) _then)
      : super(_value, _then);

  /// Create a copy of DePoolReceiveAnswerNotification
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? errorCode = null,
    Object? comment = null,
  }) {
    return _then(_$DePoolReceiveAnswerNotificationImpl(
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
class _$DePoolReceiveAnswerNotificationImpl
    implements _DePoolReceiveAnswerNotification {
  const _$DePoolReceiveAnswerNotificationImpl(
      {required this.errorCode, required this.comment});

  factory _$DePoolReceiveAnswerNotificationImpl.fromJson(
          Map<String, dynamic> json) =>
      _$$DePoolReceiveAnswerNotificationImplFromJson(json);

  @override
  final int errorCode;
  @override
  final String comment;

  @override
  String toString() {
    return 'DePoolReceiveAnswerNotification(errorCode: $errorCode, comment: $comment)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DePoolReceiveAnswerNotificationImpl &&
            (identical(other.errorCode, errorCode) ||
                other.errorCode == errorCode) &&
            (identical(other.comment, comment) || other.comment == comment));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, errorCode, comment);

  /// Create a copy of DePoolReceiveAnswerNotification
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DePoolReceiveAnswerNotificationImplCopyWith<
          _$DePoolReceiveAnswerNotificationImpl>
      get copyWith => __$$DePoolReceiveAnswerNotificationImplCopyWithImpl<
          _$DePoolReceiveAnswerNotificationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DePoolReceiveAnswerNotificationImplToJson(
      this,
    );
  }
}

abstract class _DePoolReceiveAnswerNotification
    implements DePoolReceiveAnswerNotification {
  const factory _DePoolReceiveAnswerNotification(
      {required final int errorCode,
      required final String comment}) = _$DePoolReceiveAnswerNotificationImpl;

  factory _DePoolReceiveAnswerNotification.fromJson(Map<String, dynamic> json) =
      _$DePoolReceiveAnswerNotificationImpl.fromJson;

  @override
  int get errorCode;
  @override
  String get comment;

  /// Create a copy of DePoolReceiveAnswerNotification
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DePoolReceiveAnswerNotificationImplCopyWith<
          _$DePoolReceiveAnswerNotificationImpl>
      get copyWith => throw _privateConstructorUsedError;
}
