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
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

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
abstract class _$$CommentImplCopyWith<$Res> {
  factory _$$CommentImplCopyWith(
          _$CommentImpl value, $Res Function(_$CommentImpl) then) =
      __$$CommentImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String data});
}

/// @nodoc
class __$$CommentImplCopyWithImpl<$Res>
    extends _$TransactionAdditionalInfoCopyWithImpl<$Res, _$CommentImpl>
    implements _$$CommentImplCopyWith<$Res> {
  __$$CommentImplCopyWithImpl(
      _$CommentImpl _value, $Res Function(_$CommentImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$CommentImpl(
      null == data
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CommentImpl implements _Comment {
  const _$CommentImpl(this.data, {final String? $type})
      : $type = $type ?? 'comment';

  factory _$CommentImpl.fromJson(Map<String, dynamic> json) =>
      _$$CommentImplFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransactionAdditionalInfo.comment(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CommentImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      __$$CommentImplCopyWithImpl<_$CommentImpl>(this, _$identity);

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
    return _$$CommentImplToJson(
      this,
    );
  }
}

abstract class _Comment implements TransactionAdditionalInfo {
  const factory _Comment(final String data) = _$CommentImpl;

  factory _Comment.fromJson(Map<String, dynamic> json) = _$CommentImpl.fromJson;

  @override
  String get data;
  @JsonKey(ignore: true)
  _$$CommentImplCopyWith<_$CommentImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DePoolOnRoundCompleteImplCopyWith<$Res> {
  factory _$$DePoolOnRoundCompleteImplCopyWith(
          _$DePoolOnRoundCompleteImpl value,
          $Res Function(_$DePoolOnRoundCompleteImpl) then) =
      __$$DePoolOnRoundCompleteImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DePoolOnRoundCompleteNotification data});

  $DePoolOnRoundCompleteNotificationCopyWith<$Res> get data;
}

/// @nodoc
class __$$DePoolOnRoundCompleteImplCopyWithImpl<$Res>
    extends _$TransactionAdditionalInfoCopyWithImpl<$Res,
        _$DePoolOnRoundCompleteImpl>
    implements _$$DePoolOnRoundCompleteImplCopyWith<$Res> {
  __$$DePoolOnRoundCompleteImplCopyWithImpl(_$DePoolOnRoundCompleteImpl _value,
      $Res Function(_$DePoolOnRoundCompleteImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DePoolOnRoundCompleteImpl(
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
class _$DePoolOnRoundCompleteImpl implements _DePoolOnRoundComplete {
  const _$DePoolOnRoundCompleteImpl(this.data, {final String? $type})
      : $type = $type ?? 'de_pool_on_round_complete';

  factory _$DePoolOnRoundCompleteImpl.fromJson(Map<String, dynamic> json) =>
      _$$DePoolOnRoundCompleteImplFromJson(json);

  @override
  final DePoolOnRoundCompleteNotification data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransactionAdditionalInfo.dePoolOnRoundComplete(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DePoolOnRoundCompleteImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DePoolOnRoundCompleteImplCopyWith<_$DePoolOnRoundCompleteImpl>
      get copyWith => __$$DePoolOnRoundCompleteImplCopyWithImpl<
          _$DePoolOnRoundCompleteImpl>(this, _$identity);

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
    return _$$DePoolOnRoundCompleteImplToJson(
      this,
    );
  }
}

abstract class _DePoolOnRoundComplete implements TransactionAdditionalInfo {
  const factory _DePoolOnRoundComplete(
          final DePoolOnRoundCompleteNotification data) =
      _$DePoolOnRoundCompleteImpl;

  factory _DePoolOnRoundComplete.fromJson(Map<String, dynamic> json) =
      _$DePoolOnRoundCompleteImpl.fromJson;

  @override
  DePoolOnRoundCompleteNotification get data;
  @JsonKey(ignore: true)
  _$$DePoolOnRoundCompleteImplCopyWith<_$DePoolOnRoundCompleteImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$DePoolReceiveAnswerImplCopyWith<$Res> {
  factory _$$DePoolReceiveAnswerImplCopyWith(_$DePoolReceiveAnswerImpl value,
          $Res Function(_$DePoolReceiveAnswerImpl) then) =
      __$$DePoolReceiveAnswerImplCopyWithImpl<$Res>;
  @useResult
  $Res call({DePoolReceiveAnswerNotification data});

  $DePoolReceiveAnswerNotificationCopyWith<$Res> get data;
}

/// @nodoc
class __$$DePoolReceiveAnswerImplCopyWithImpl<$Res>
    extends _$TransactionAdditionalInfoCopyWithImpl<$Res,
        _$DePoolReceiveAnswerImpl>
    implements _$$DePoolReceiveAnswerImplCopyWith<$Res> {
  __$$DePoolReceiveAnswerImplCopyWithImpl(_$DePoolReceiveAnswerImpl _value,
      $Res Function(_$DePoolReceiveAnswerImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$DePoolReceiveAnswerImpl(
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
class _$DePoolReceiveAnswerImpl implements _DePoolReceiveAnswer {
  const _$DePoolReceiveAnswerImpl(this.data, {final String? $type})
      : $type = $type ?? 'de_pool_receive_answer';

  factory _$DePoolReceiveAnswerImpl.fromJson(Map<String, dynamic> json) =>
      _$$DePoolReceiveAnswerImplFromJson(json);

  @override
  final DePoolReceiveAnswerNotification data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransactionAdditionalInfo.dePoolReceiveAnswer(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DePoolReceiveAnswerImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$DePoolReceiveAnswerImplCopyWith<_$DePoolReceiveAnswerImpl> get copyWith =>
      __$$DePoolReceiveAnswerImplCopyWithImpl<_$DePoolReceiveAnswerImpl>(
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
    return _$$DePoolReceiveAnswerImplToJson(
      this,
    );
  }
}

abstract class _DePoolReceiveAnswer implements TransactionAdditionalInfo {
  const factory _DePoolReceiveAnswer(
      final DePoolReceiveAnswerNotification data) = _$DePoolReceiveAnswerImpl;

  factory _DePoolReceiveAnswer.fromJson(Map<String, dynamic> json) =
      _$DePoolReceiveAnswerImpl.fromJson;

  @override
  DePoolReceiveAnswerNotification get data;
  @JsonKey(ignore: true)
  _$$DePoolReceiveAnswerImplCopyWith<_$DePoolReceiveAnswerImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TokenWalletDeployedImplCopyWith<$Res> {
  factory _$$TokenWalletDeployedImplCopyWith(_$TokenWalletDeployedImpl value,
          $Res Function(_$TokenWalletDeployedImpl) then) =
      __$$TokenWalletDeployedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({TokenWalletDeployedNotification data});

  $TokenWalletDeployedNotificationCopyWith<$Res> get data;
}

/// @nodoc
class __$$TokenWalletDeployedImplCopyWithImpl<$Res>
    extends _$TransactionAdditionalInfoCopyWithImpl<$Res,
        _$TokenWalletDeployedImpl>
    implements _$$TokenWalletDeployedImplCopyWith<$Res> {
  __$$TokenWalletDeployedImplCopyWithImpl(_$TokenWalletDeployedImpl _value,
      $Res Function(_$TokenWalletDeployedImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$TokenWalletDeployedImpl(
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
class _$TokenWalletDeployedImpl implements _TokenWalletDeployed {
  const _$TokenWalletDeployedImpl(this.data, {final String? $type})
      : $type = $type ?? 'token_wallet_deployed';

  factory _$TokenWalletDeployedImpl.fromJson(Map<String, dynamic> json) =>
      _$$TokenWalletDeployedImplFromJson(json);

  @override
  final TokenWalletDeployedNotification data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransactionAdditionalInfo.tokenWalletDeployed(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TokenWalletDeployedImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TokenWalletDeployedImplCopyWith<_$TokenWalletDeployedImpl> get copyWith =>
      __$$TokenWalletDeployedImplCopyWithImpl<_$TokenWalletDeployedImpl>(
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
    return _$$TokenWalletDeployedImplToJson(
      this,
    );
  }
}

abstract class _TokenWalletDeployed implements TransactionAdditionalInfo {
  const factory _TokenWalletDeployed(
      final TokenWalletDeployedNotification data) = _$TokenWalletDeployedImpl;

  factory _TokenWalletDeployed.fromJson(Map<String, dynamic> json) =
      _$TokenWalletDeployedImpl.fromJson;

  @override
  TokenWalletDeployedNotification get data;
  @JsonKey(ignore: true)
  _$$TokenWalletDeployedImplCopyWith<_$TokenWalletDeployedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$WalletInteractionImplCopyWith<$Res> {
  factory _$$WalletInteractionImplCopyWith(_$WalletInteractionImpl value,
          $Res Function(_$WalletInteractionImpl) then) =
      __$$WalletInteractionImplCopyWithImpl<$Res>;
  @useResult
  $Res call({WalletInteractionInfo data});

  $WalletInteractionInfoCopyWith<$Res> get data;
}

/// @nodoc
class __$$WalletInteractionImplCopyWithImpl<$Res>
    extends _$TransactionAdditionalInfoCopyWithImpl<$Res,
        _$WalletInteractionImpl>
    implements _$$WalletInteractionImplCopyWith<$Res> {
  __$$WalletInteractionImplCopyWithImpl(_$WalletInteractionImpl _value,
      $Res Function(_$WalletInteractionImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? data = null,
  }) {
    return _then(_$WalletInteractionImpl(
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
class _$WalletInteractionImpl implements _WalletInteraction {
  const _$WalletInteractionImpl(this.data, {final String? $type})
      : $type = $type ?? 'wallet_interaction';

  factory _$WalletInteractionImpl.fromJson(Map<String, dynamic> json) =>
      _$$WalletInteractionImplFromJson(json);

  @override
  final WalletInteractionInfo data;

  @JsonKey(name: 'type')
  final String $type;

  @override
  String toString() {
    return 'TransactionAdditionalInfo.walletInteraction(data: $data)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$WalletInteractionImpl &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$WalletInteractionImplCopyWith<_$WalletInteractionImpl> get copyWith =>
      __$$WalletInteractionImplCopyWithImpl<_$WalletInteractionImpl>(
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
    return _$$WalletInteractionImplToJson(
      this,
    );
  }
}

abstract class _WalletInteraction implements TransactionAdditionalInfo {
  const factory _WalletInteraction(final WalletInteractionInfo data) =
      _$WalletInteractionImpl;

  factory _WalletInteraction.fromJson(Map<String, dynamic> json) =
      _$WalletInteractionImpl.fromJson;

  @override
  WalletInteractionInfo get data;
  @JsonKey(ignore: true)
  _$$WalletInteractionImplCopyWith<_$WalletInteractionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
