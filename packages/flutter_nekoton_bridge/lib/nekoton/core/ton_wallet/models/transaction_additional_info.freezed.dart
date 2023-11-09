// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_additional_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TransactionAdditionalInfo _$TransactionAdditionalInfoFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'comment':
      return _Comment.fromJson(json);
    case 'de_pool_on_round_complete':
      return _DePoolOnRoundComplete.fromJson(json);
    case 'de_pool_receive_answer':
      return _DePoolReceiveAnswer.fromJson(json);
    case 'token_wallet_deployed':
      return _TokenWalletDeployed.fromJson(json);
    case 'wallet_interaction':
      return _WalletInteraction.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'TransactionAdditionalInfo',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TransactionAdditionalInfo {
  Object get data => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(DePoolOnRoundCompleteNotification data)
        dePoolOnRoundComplete,
    required TResult Function(DePoolReceiveAnswerNotification data)
        dePoolReceiveAnswer,
    required TResult Function(TokenWalletDeployedNotification data)
        tokenWalletDeployed,
    required TResult Function(WalletInteractionInfo data) walletInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult? Function(DePoolReceiveAnswerNotification data)?
        dePoolReceiveAnswer,
    TResult? Function(TokenWalletDeployedNotification data)?
        tokenWalletDeployed,
    TResult? Function(WalletInteractionInfo data)? walletInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult Function(DePoolReceiveAnswerNotification data)? dePoolReceiveAnswer,
    TResult Function(TokenWalletDeployedNotification data)? tokenWalletDeployed,
    TResult Function(WalletInteractionInfo data)? walletInteraction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_DePoolOnRoundComplete value)
        dePoolOnRoundComplete,
    required TResult Function(_DePoolReceiveAnswer value) dePoolReceiveAnswer,
    required TResult Function(_TokenWalletDeployed value) tokenWalletDeployed,
    required TResult Function(_WalletInteraction value) walletInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult? Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult? Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult? Function(_WalletInteraction value)? walletInteraction,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult Function(_WalletInteraction value)? walletInteraction,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionAdditionalInfoCopyWith<$Res> {
  factory $TransactionAdditionalInfoCopyWith(TransactionAdditionalInfo value,
          $Res Function(TransactionAdditionalInfo) then) =
      _$TransactionAdditionalInfoCopyWithImpl<$Res, TransactionAdditionalInfo>;
}

/// @nodoc
class _$TransactionAdditionalInfoCopyWithImpl<$Res,
        $Val extends TransactionAdditionalInfo>
    implements $TransactionAdditionalInfoCopyWith<$Res> {
  _$TransactionAdditionalInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CommentCopyWith<$Res> {
  factory _$$_CommentCopyWith(
          _$_Comment value, $Res Function(_$_Comment) then) =
      __$$_CommentCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$_CommentCopyWithImpl<$Res>
    extends _$TransactionAdditionalInfoCopyWithImpl<$Res, _$_Comment>
    implements _$$_CommentCopyWith<$Res> {
  __$$_CommentCopyWithImpl(_$_Comment _value, $Res Function(_$_Comment) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_Comment(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Comment implements _Comment {
  const _$_Comment(this.data, {final String? $type})
      : $type = $type ?? 'comment';

  factory _$_Comment.fromJson(Map<String, dynamic> json) =>
      _$$_CommentFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransactionAdditionalInfo.comment(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Comment &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      __$$_CommentCopyWithImpl<_$_Comment>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(DePoolOnRoundCompleteNotification data)
        dePoolOnRoundComplete,
    required TResult Function(DePoolReceiveAnswerNotification data)
        dePoolReceiveAnswer,
    required TResult Function(TokenWalletDeployedNotification data)
        tokenWalletDeployed,
    required TResult Function(WalletInteractionInfo data) walletInteraction,
  }) {
    return comment(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult? Function(DePoolReceiveAnswerNotification data)?
        dePoolReceiveAnswer,
    TResult? Function(TokenWalletDeployedNotification data)?
        tokenWalletDeployed,
    TResult? Function(WalletInteractionInfo data)? walletInteraction,
  }) {
    return comment?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult Function(DePoolReceiveAnswerNotification data)? dePoolReceiveAnswer,
    TResult Function(TokenWalletDeployedNotification data)? tokenWalletDeployed,
    TResult Function(WalletInteractionInfo data)? walletInteraction,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_DePoolOnRoundComplete value)
        dePoolOnRoundComplete,
    required TResult Function(_DePoolReceiveAnswer value) dePoolReceiveAnswer,
    required TResult Function(_TokenWalletDeployed value) tokenWalletDeployed,
    required TResult Function(_WalletInteraction value) walletInteraction,
  }) {
    return comment(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult? Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult? Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult? Function(_WalletInteraction value)? walletInteraction,
  }) {
    return comment?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult Function(_WalletInteraction value)? walletInteraction,
    required TResult orElse(),
  }) {
    if (comment != null) {
      return comment(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_CommentToJson(
      this,
    );
  }
}

abstract class _Comment implements TransactionAdditionalInfo {
  const factory _Comment(final String data) = _$_Comment;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$_Comment.fromJson;

  @override
  String get data;
  @JsonKey(ignore: true)
  _$$_CommentCopyWith<_$_Comment> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DePoolOnRoundCompleteCopyWith<$Res> {
  factory _$$_DePoolOnRoundCompleteCopyWith(_$_DePoolOnRoundComplete value,
          $Res Function(_$_DePoolOnRoundComplete) then) =
      __$$_DePoolOnRoundCompleteCopyWithImpl<$Res>;
  @useResult
  $Res call({DePoolOnRoundCompleteNotification data});

  $DePoolOnRoundCompleteNotificationCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DePoolOnRoundCompleteCopyWithImpl<$Res>
    extends _$TransactionAdditionalInfoCopyWithImpl<$Res,
        _$_DePoolOnRoundComplete>
    implements _$$_DePoolOnRoundCompleteCopyWith<$Res> {
  __$$_DePoolOnRoundCompleteCopyWithImpl(_$_DePoolOnRoundComplete _value,
      $Res Function(_$_DePoolOnRoundComplete) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_DePoolOnRoundComplete(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DePoolOnRoundCompleteNotification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DePoolOnRoundCompleteNotificationCopyWith<$Res> get data {
    return $DePoolOnRoundCompleteNotificationCopyWith<$Res>(_value.data,
        (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_DePoolOnRoundComplete implements _DePoolOnRoundComplete {
  const _$_DePoolOnRoundComplete(this.data, {final String? $type})
      : $type = $type ?? 'de_pool_on_round_complete';

  factory _$_DePoolOnRoundComplete.fromJson(Map<String, dynamic> json) =>
      _$$_DePoolOnRoundCompleteFromJson(json);

  @override
  final DePoolOnRoundCompleteNotification data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransactionAdditionalInfo.dePoolOnRoundComplete(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DePoolOnRoundComplete &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DePoolOnRoundCompleteCopyWith<_$_DePoolOnRoundComplete> get copyWith =>
      __$$_DePoolOnRoundCompleteCopyWithImpl<_$_DePoolOnRoundComplete>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(DePoolOnRoundCompleteNotification data)
        dePoolOnRoundComplete,
    required TResult Function(DePoolReceiveAnswerNotification data)
        dePoolReceiveAnswer,
    required TResult Function(TokenWalletDeployedNotification data)
        tokenWalletDeployed,
    required TResult Function(WalletInteractionInfo data) walletInteraction,
  }) {
    return dePoolOnRoundComplete(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult? Function(DePoolReceiveAnswerNotification data)?
        dePoolReceiveAnswer,
    TResult? Function(TokenWalletDeployedNotification data)?
        tokenWalletDeployed,
    TResult? Function(WalletInteractionInfo data)? walletInteraction,
  }) {
    return dePoolOnRoundComplete?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult Function(DePoolReceiveAnswerNotification data)? dePoolReceiveAnswer,
    TResult Function(TokenWalletDeployedNotification data)? tokenWalletDeployed,
    TResult Function(WalletInteractionInfo data)? walletInteraction,
    required TResult orElse(),
  }) {
    if (dePoolOnRoundComplete != null) {
      return dePoolOnRoundComplete(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_DePoolOnRoundComplete value)
        dePoolOnRoundComplete,
    required TResult Function(_DePoolReceiveAnswer value) dePoolReceiveAnswer,
    required TResult Function(_TokenWalletDeployed value) tokenWalletDeployed,
    required TResult Function(_WalletInteraction value) walletInteraction,
  }) {
    return dePoolOnRoundComplete(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult? Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult? Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult? Function(_WalletInteraction value)? walletInteraction,
  }) {
    return dePoolOnRoundComplete?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult Function(_WalletInteraction value)? walletInteraction,
    required TResult orElse(),
  }) {
    if (dePoolOnRoundComplete != null) {
      return dePoolOnRoundComplete(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DePoolOnRoundCompleteToJson(
      this,
    );
  }
}

abstract class _DePoolOnRoundComplete implements TransactionAdditionalInfo {
  const factory _DePoolOnRoundComplete(
      final DePoolOnRoundCompleteNotification data) = _$_DePoolOnRoundComplete;

  factory _DePoolOnRoundComplete.fromJson(Map<String, dynamic> json) =
      _$_DePoolOnRoundComplete.fromJson;

  @override
  DePoolOnRoundCompleteNotification get data;
  @JsonKey(ignore: true)
  _$$_DePoolOnRoundCompleteCopyWith<_$_DePoolOnRoundComplete> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_DePoolReceiveAnswerCopyWith<$Res> {
  factory _$$_DePoolReceiveAnswerCopyWith(_$_DePoolReceiveAnswer value,
          $Res Function(_$_DePoolReceiveAnswer) then) =
      __$$_DePoolReceiveAnswerCopyWithImpl<$Res>;
  @useResult
  $Res call({DePoolReceiveAnswerNotification data});

  $DePoolReceiveAnswerNotificationCopyWith<$Res> get data;
}

/// @nodoc
class __$$_DePoolReceiveAnswerCopyWithImpl<$Res>
    extends _$TransactionAdditionalInfoCopyWithImpl<$Res,
        _$_DePoolReceiveAnswer>
    implements _$$_DePoolReceiveAnswerCopyWith<$Res> {
  __$$_DePoolReceiveAnswerCopyWithImpl(_$_DePoolReceiveAnswer _value,
      $Res Function(_$_DePoolReceiveAnswer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_DePoolReceiveAnswer(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as DePoolReceiveAnswerNotification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $DePoolReceiveAnswerNotificationCopyWith<$Res> get data {
    return $DePoolReceiveAnswerNotificationCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_DePoolReceiveAnswer implements _DePoolReceiveAnswer {
  const _$_DePoolReceiveAnswer(this.data, {final String? $type})
      : $type = $type ?? 'de_pool_receive_answer';

  factory _$_DePoolReceiveAnswer.fromJson(Map<String, dynamic> json) =>
      _$$_DePoolReceiveAnswerFromJson(json);

  @override
  final DePoolReceiveAnswerNotification data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransactionAdditionalInfo.dePoolReceiveAnswer(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_DePoolReceiveAnswer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_DePoolReceiveAnswerCopyWith<_$_DePoolReceiveAnswer> get copyWith =>
      __$$_DePoolReceiveAnswerCopyWithImpl<_$_DePoolReceiveAnswer>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(DePoolOnRoundCompleteNotification data)
        dePoolOnRoundComplete,
    required TResult Function(DePoolReceiveAnswerNotification data)
        dePoolReceiveAnswer,
    required TResult Function(TokenWalletDeployedNotification data)
        tokenWalletDeployed,
    required TResult Function(WalletInteractionInfo data) walletInteraction,
  }) {
    return dePoolReceiveAnswer(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult? Function(DePoolReceiveAnswerNotification data)?
        dePoolReceiveAnswer,
    TResult? Function(TokenWalletDeployedNotification data)?
        tokenWalletDeployed,
    TResult? Function(WalletInteractionInfo data)? walletInteraction,
  }) {
    return dePoolReceiveAnswer?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult Function(DePoolReceiveAnswerNotification data)? dePoolReceiveAnswer,
    TResult Function(TokenWalletDeployedNotification data)? tokenWalletDeployed,
    TResult Function(WalletInteractionInfo data)? walletInteraction,
    required TResult orElse(),
  }) {
    if (dePoolReceiveAnswer != null) {
      return dePoolReceiveAnswer(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_DePoolOnRoundComplete value)
        dePoolOnRoundComplete,
    required TResult Function(_DePoolReceiveAnswer value) dePoolReceiveAnswer,
    required TResult Function(_TokenWalletDeployed value) tokenWalletDeployed,
    required TResult Function(_WalletInteraction value) walletInteraction,
  }) {
    return dePoolReceiveAnswer(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult? Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult? Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult? Function(_WalletInteraction value)? walletInteraction,
  }) {
    return dePoolReceiveAnswer?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult Function(_WalletInteraction value)? walletInteraction,
    required TResult orElse(),
  }) {
    if (dePoolReceiveAnswer != null) {
      return dePoolReceiveAnswer(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DePoolReceiveAnswerToJson(
      this,
    );
  }
}

abstract class _DePoolReceiveAnswer implements TransactionAdditionalInfo {
  const factory _DePoolReceiveAnswer(
      final DePoolReceiveAnswerNotification data) = _$_DePoolReceiveAnswer;

  factory _DePoolReceiveAnswer.fromJson(Map<String, dynamic> json) =
      _$_DePoolReceiveAnswer.fromJson;

  @override
  DePoolReceiveAnswerNotification get data;
  @JsonKey(ignore: true)
  _$$_DePoolReceiveAnswerCopyWith<_$_DePoolReceiveAnswer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_TokenWalletDeployedCopyWith<$Res> {
  factory _$$_TokenWalletDeployedCopyWith(_$_TokenWalletDeployed value,
          $Res Function(_$_TokenWalletDeployed) then) =
      __$$_TokenWalletDeployedCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenWalletDeployedNotification data});

  $TokenWalletDeployedNotificationCopyWith<$Res> get data;
}

/// @nodoc
class __$$_TokenWalletDeployedCopyWithImpl<$Res>
    extends _$TransactionAdditionalInfoCopyWithImpl<$Res,
        _$_TokenWalletDeployed>
    implements _$$_TokenWalletDeployedCopyWith<$Res> {
  __$$_TokenWalletDeployedCopyWithImpl(_$_TokenWalletDeployed _value,
      $Res Function(_$_TokenWalletDeployed) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_TokenWalletDeployed(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenWalletDeployedNotification,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $TokenWalletDeployedNotificationCopyWith<$Res> get data {
    return $TokenWalletDeployedNotificationCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenWalletDeployed implements _TokenWalletDeployed {
  const _$_TokenWalletDeployed(this.data, {final String? $type})
      : $type = $type ?? 'token_wallet_deployed';

  factory _$_TokenWalletDeployed.fromJson(Map<String, dynamic> json) =>
      _$$_TokenWalletDeployedFromJson(json);

  @override
  final TokenWalletDeployedNotification data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransactionAdditionalInfo.tokenWalletDeployed(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenWalletDeployed &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TokenWalletDeployedCopyWith<_$_TokenWalletDeployed> get copyWith =>
      __$$_TokenWalletDeployedCopyWithImpl<_$_TokenWalletDeployed>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(DePoolOnRoundCompleteNotification data)
        dePoolOnRoundComplete,
    required TResult Function(DePoolReceiveAnswerNotification data)
        dePoolReceiveAnswer,
    required TResult Function(TokenWalletDeployedNotification data)
        tokenWalletDeployed,
    required TResult Function(WalletInteractionInfo data) walletInteraction,
  }) {
    return tokenWalletDeployed(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult? Function(DePoolReceiveAnswerNotification data)?
        dePoolReceiveAnswer,
    TResult? Function(TokenWalletDeployedNotification data)?
        tokenWalletDeployed,
    TResult? Function(WalletInteractionInfo data)? walletInteraction,
  }) {
    return tokenWalletDeployed?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult Function(DePoolReceiveAnswerNotification data)? dePoolReceiveAnswer,
    TResult Function(TokenWalletDeployedNotification data)? tokenWalletDeployed,
    TResult Function(WalletInteractionInfo data)? walletInteraction,
    required TResult orElse(),
  }) {
    if (tokenWalletDeployed != null) {
      return tokenWalletDeployed(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_DePoolOnRoundComplete value)
        dePoolOnRoundComplete,
    required TResult Function(_DePoolReceiveAnswer value) dePoolReceiveAnswer,
    required TResult Function(_TokenWalletDeployed value) tokenWalletDeployed,
    required TResult Function(_WalletInteraction value) walletInteraction,
  }) {
    return tokenWalletDeployed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult? Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult? Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult? Function(_WalletInteraction value)? walletInteraction,
  }) {
    return tokenWalletDeployed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult Function(_WalletInteraction value)? walletInteraction,
    required TResult orElse(),
  }) {
    if (tokenWalletDeployed != null) {
      return tokenWalletDeployed(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenWalletDeployedToJson(
      this,
    );
  }
}

abstract class _TokenWalletDeployed implements TransactionAdditionalInfo {
  const factory _TokenWalletDeployed(
      final TokenWalletDeployedNotification data) = _$_TokenWalletDeployed;

  factory _TokenWalletDeployed.fromJson(Map<String, dynamic> json) =
      _$_TokenWalletDeployed.fromJson;

  @override
  TokenWalletDeployedNotification get data;
  @JsonKey(ignore: true)
  _$$_TokenWalletDeployedCopyWith<_$_TokenWalletDeployed> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_WalletInteractionCopyWith<$Res> {
  factory _$$_WalletInteractionCopyWith(_$_WalletInteraction value,
          $Res Function(_$_WalletInteraction) then) =
      __$$_WalletInteractionCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletInteractionInfo data});

  $WalletInteractionInfoCopyWith<$Res> get data;
}

/// @nodoc
class __$$_WalletInteractionCopyWithImpl<$Res>
    extends _$TransactionAdditionalInfoCopyWithImpl<$Res, _$_WalletInteraction>
    implements _$$_WalletInteractionCopyWith<$Res> {
  __$$_WalletInteractionCopyWithImpl(
      _$_WalletInteraction _value, $Res Function(_$_WalletInteraction) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$_WalletInteraction(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as WalletInteractionInfo,
    ));
  }

  @override
  @pragma('vm:prefer-inline')
  $WalletInteractionInfoCopyWith<$Res> get data {
    return $WalletInteractionInfoCopyWith<$Res>(_value.data, (value) {
      return _then(_value.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class _$_WalletInteraction implements _WalletInteraction {
  const _$_WalletInteraction(this.data, {final String? $type})
      : $type = $type ?? 'wallet_interaction';

  factory _$_WalletInteraction.fromJson(Map<String, dynamic> json) =>
      _$$_WalletInteractionFromJson(json);

  @override
  final WalletInteractionInfo data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransactionAdditionalInfo.walletInteraction(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_WalletInteraction &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_WalletInteractionCopyWith<_$_WalletInteraction> get copyWith =>
      __$$_WalletInteractionCopyWithImpl<_$_WalletInteraction>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String data) comment,
    required TResult Function(DePoolOnRoundCompleteNotification data)
        dePoolOnRoundComplete,
    required TResult Function(DePoolReceiveAnswerNotification data)
        dePoolReceiveAnswer,
    required TResult Function(TokenWalletDeployedNotification data)
        tokenWalletDeployed,
    required TResult Function(WalletInteractionInfo data) walletInteraction,
  }) {
    return walletInteraction(data);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String data)? comment,
    TResult? Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult? Function(DePoolReceiveAnswerNotification data)?
        dePoolReceiveAnswer,
    TResult? Function(TokenWalletDeployedNotification data)?
        tokenWalletDeployed,
    TResult? Function(WalletInteractionInfo data)? walletInteraction,
  }) {
    return walletInteraction?.call(data);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult Function(DePoolReceiveAnswerNotification data)? dePoolReceiveAnswer,
    TResult Function(TokenWalletDeployedNotification data)? tokenWalletDeployed,
    TResult Function(WalletInteractionInfo data)? walletInteraction,
    required TResult orElse(),
  }) {
    if (walletInteraction != null) {
      return walletInteraction(data);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Comment value) comment,
    required TResult Function(_DePoolOnRoundComplete value)
        dePoolOnRoundComplete,
    required TResult Function(_DePoolReceiveAnswer value) dePoolReceiveAnswer,
    required TResult Function(_TokenWalletDeployed value) tokenWalletDeployed,
    required TResult Function(_WalletInteraction value) walletInteraction,
  }) {
    return walletInteraction(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Comment value)? comment,
    TResult? Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult? Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult? Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult? Function(_WalletInteraction value)? walletInteraction,
  }) {
    return walletInteraction?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Comment value)? comment,
    TResult Function(_DePoolOnRoundComplete value)? dePoolOnRoundComplete,
    TResult Function(_DePoolReceiveAnswer value)? dePoolReceiveAnswer,
    TResult Function(_TokenWalletDeployed value)? tokenWalletDeployed,
    TResult Function(_WalletInteraction value)? walletInteraction,
    required TResult orElse(),
  }) {
    if (walletInteraction != null) {
      return walletInteraction(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_WalletInteractionToJson(
      this,
    );
  }
}

abstract class _WalletInteraction implements TransactionAdditionalInfo {
  const factory _WalletInteraction(final WalletInteractionInfo data) =
      _$_WalletInteraction;

  factory _WalletInteraction.fromJson(Map<String, dynamic> json) =
      _$_WalletInteraction.fromJson;

  @override
  WalletInteractionInfo get data;
  @JsonKey(ignore: true)
  _$$_WalletInteractionCopyWith<_$_WalletInteraction> get copyWith =>
      throw _privateConstructorUsedError;
}
