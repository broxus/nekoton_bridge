// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_additional_info.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
TransactionAdditionalInfo _$TransactionAdditionalInfoFromJson(
    Map<String, dynamic> json) {
  switch (json['type']) {
    case 'comment':
      return TransactionAdditionalInfoComment.fromJson(json);
    case 'de_pool_on_round_complete':
      return TransactionAdditionalInfoDePoolOnRoundComplete.fromJson(json);
    case 'de_pool_receive_answer':
      return TransactionAdditionalInfoDePoolReceiveAnswer.fromJson(json);
    case 'token_wallet_deployed':
      return TransactionAdditionalInfoTokenWalletDeployed.fromJson(json);
    case 'wallet_interaction':
      return TransactionAdditionalInfoWalletInteraction.fromJson(json);
    case 'jetton_notify':
      return TransactionAdditionalInfoJettonNotify.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'type', 'TransactionAdditionalInfo',
          'Invalid union type "${json['type']}"!');
  }
}

/// @nodoc
mixin _$TransactionAdditionalInfo {
  Object get data;

  /// Serializes this TransactionAdditionalInfo to a JSON map.
  Map<String, dynamic> toJson();

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionAdditionalInfo &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @override
  String toString() {
    return 'TransactionAdditionalInfo(data: $data)';
  }
}

/// @nodoc
class $TransactionAdditionalInfoCopyWith<$Res> {
  $TransactionAdditionalInfoCopyWith(
      TransactionAdditionalInfo _, $Res Function(TransactionAdditionalInfo) __);
}

/// Adds pattern-matching-related methods to [TransactionAdditionalInfo].
extension TransactionAdditionalInfoPatterns on TransactionAdditionalInfo {
  /// A variant of `map` that fallback to returning `orElse`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionAdditionalInfoComment value)? comment,
    TResult Function(TransactionAdditionalInfoDePoolOnRoundComplete value)?
        dePoolOnRoundComplete,
    TResult Function(TransactionAdditionalInfoDePoolReceiveAnswer value)?
        dePoolReceiveAnswer,
    TResult Function(TransactionAdditionalInfoTokenWalletDeployed value)?
        tokenWalletDeployed,
    TResult Function(TransactionAdditionalInfoWalletInteraction value)?
        walletInteraction,
    TResult Function(TransactionAdditionalInfoJettonNotify value)? jettonNotify,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TransactionAdditionalInfoComment() when comment != null:
        return comment(_that);
      case TransactionAdditionalInfoDePoolOnRoundComplete()
          when dePoolOnRoundComplete != null:
        return dePoolOnRoundComplete(_that);
      case TransactionAdditionalInfoDePoolReceiveAnswer()
          when dePoolReceiveAnswer != null:
        return dePoolReceiveAnswer(_that);
      case TransactionAdditionalInfoTokenWalletDeployed()
          when tokenWalletDeployed != null:
        return tokenWalletDeployed(_that);
      case TransactionAdditionalInfoWalletInteraction()
          when walletInteraction != null:
        return walletInteraction(_that);
      case TransactionAdditionalInfoJettonNotify() when jettonNotify != null:
        return jettonNotify(_that);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// Callbacks receives the raw object, upcasted.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case final Subclass2 value:
  ///     return ...;
  /// }
  /// ```

  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionAdditionalInfoComment value) comment,
    required TResult Function(
            TransactionAdditionalInfoDePoolOnRoundComplete value)
        dePoolOnRoundComplete,
    required TResult Function(
            TransactionAdditionalInfoDePoolReceiveAnswer value)
        dePoolReceiveAnswer,
    required TResult Function(
            TransactionAdditionalInfoTokenWalletDeployed value)
        tokenWalletDeployed,
    required TResult Function(TransactionAdditionalInfoWalletInteraction value)
        walletInteraction,
    required TResult Function(TransactionAdditionalInfoJettonNotify value)
        jettonNotify,
  }) {
    final _that = this;
    switch (_that) {
      case TransactionAdditionalInfoComment():
        return comment(_that);
      case TransactionAdditionalInfoDePoolOnRoundComplete():
        return dePoolOnRoundComplete(_that);
      case TransactionAdditionalInfoDePoolReceiveAnswer():
        return dePoolReceiveAnswer(_that);
      case TransactionAdditionalInfoTokenWalletDeployed():
        return tokenWalletDeployed(_that);
      case TransactionAdditionalInfoWalletInteraction():
        return walletInteraction(_that);
      case TransactionAdditionalInfoJettonNotify():
        return jettonNotify(_that);
    }
  }

  /// A variant of `map` that fallback to returning `null`.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case final Subclass value:
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionAdditionalInfoComment value)? comment,
    TResult? Function(TransactionAdditionalInfoDePoolOnRoundComplete value)?
        dePoolOnRoundComplete,
    TResult? Function(TransactionAdditionalInfoDePoolReceiveAnswer value)?
        dePoolReceiveAnswer,
    TResult? Function(TransactionAdditionalInfoTokenWalletDeployed value)?
        tokenWalletDeployed,
    TResult? Function(TransactionAdditionalInfoWalletInteraction value)?
        walletInteraction,
    TResult? Function(TransactionAdditionalInfoJettonNotify value)?
        jettonNotify,
  }) {
    final _that = this;
    switch (_that) {
      case TransactionAdditionalInfoComment() when comment != null:
        return comment(_that);
      case TransactionAdditionalInfoDePoolOnRoundComplete()
          when dePoolOnRoundComplete != null:
        return dePoolOnRoundComplete(_that);
      case TransactionAdditionalInfoDePoolReceiveAnswer()
          when dePoolReceiveAnswer != null:
        return dePoolReceiveAnswer(_that);
      case TransactionAdditionalInfoTokenWalletDeployed()
          when tokenWalletDeployed != null:
        return tokenWalletDeployed(_that);
      case TransactionAdditionalInfoWalletInteraction()
          when walletInteraction != null:
        return walletInteraction(_that);
      case TransactionAdditionalInfoJettonNotify() when jettonNotify != null:
        return jettonNotify(_that);
      case _:
        return null;
    }
  }

  /// A variant of `when` that fallback to an `orElse` callback.
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return orElse();
  /// }
  /// ```

  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String data)? comment,
    TResult Function(DePoolOnRoundCompleteNotification data)?
        dePoolOnRoundComplete,
    TResult Function(DePoolReceiveAnswerNotification data)? dePoolReceiveAnswer,
    TResult Function(TokenWalletDeployedNotification data)? tokenWalletDeployed,
    TResult Function(WalletInteractionInfo data)? walletInteraction,
    TResult Function(JettonIncomingTransfer data)? jettonNotify,
    required TResult orElse(),
  }) {
    final _that = this;
    switch (_that) {
      case TransactionAdditionalInfoComment() when comment != null:
        return comment(_that.data);
      case TransactionAdditionalInfoDePoolOnRoundComplete()
          when dePoolOnRoundComplete != null:
        return dePoolOnRoundComplete(_that.data);
      case TransactionAdditionalInfoDePoolReceiveAnswer()
          when dePoolReceiveAnswer != null:
        return dePoolReceiveAnswer(_that.data);
      case TransactionAdditionalInfoTokenWalletDeployed()
          when tokenWalletDeployed != null:
        return tokenWalletDeployed(_that.data);
      case TransactionAdditionalInfoWalletInteraction()
          when walletInteraction != null:
        return walletInteraction(_that.data);
      case TransactionAdditionalInfoJettonNotify() when jettonNotify != null:
        return jettonNotify(_that.data);
      case _:
        return orElse();
    }
  }

  /// A `switch`-like method, using callbacks.
  ///
  /// As opposed to `map`, this offers destructuring.
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case Subclass2(:final field2):
  ///     return ...;
  /// }
  /// ```

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
    required TResult Function(JettonIncomingTransfer data) jettonNotify,
  }) {
    final _that = this;
    switch (_that) {
      case TransactionAdditionalInfoComment():
        return comment(_that.data);
      case TransactionAdditionalInfoDePoolOnRoundComplete():
        return dePoolOnRoundComplete(_that.data);
      case TransactionAdditionalInfoDePoolReceiveAnswer():
        return dePoolReceiveAnswer(_that.data);
      case TransactionAdditionalInfoTokenWalletDeployed():
        return tokenWalletDeployed(_that.data);
      case TransactionAdditionalInfoWalletInteraction():
        return walletInteraction(_that.data);
      case TransactionAdditionalInfoJettonNotify():
        return jettonNotify(_that.data);
    }
  }

  /// A variant of `when` that fallback to returning `null`
  ///
  /// It is equivalent to doing:
  /// ```dart
  /// switch (sealedClass) {
  ///   case Subclass(:final field):
  ///     return ...;
  ///   case _:
  ///     return null;
  /// }
  /// ```

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
    TResult? Function(JettonIncomingTransfer data)? jettonNotify,
  }) {
    final _that = this;
    switch (_that) {
      case TransactionAdditionalInfoComment() when comment != null:
        return comment(_that.data);
      case TransactionAdditionalInfoDePoolOnRoundComplete()
          when dePoolOnRoundComplete != null:
        return dePoolOnRoundComplete(_that.data);
      case TransactionAdditionalInfoDePoolReceiveAnswer()
          when dePoolReceiveAnswer != null:
        return dePoolReceiveAnswer(_that.data);
      case TransactionAdditionalInfoTokenWalletDeployed()
          when tokenWalletDeployed != null:
        return tokenWalletDeployed(_that.data);
      case TransactionAdditionalInfoWalletInteraction()
          when walletInteraction != null:
        return walletInteraction(_that.data);
      case TransactionAdditionalInfoJettonNotify() when jettonNotify != null:
        return jettonNotify(_that.data);
      case _:
        return null;
    }
  }
}

/// @nodoc
@JsonSerializable()
class TransactionAdditionalInfoComment implements TransactionAdditionalInfo {
  const TransactionAdditionalInfoComment(this.data, {final String? $type})
      : $type = $type ?? 'comment';
  factory TransactionAdditionalInfoComment.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionAdditionalInfoCommentFromJson(json);

  @override
  final String data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionAdditionalInfoCommentCopyWith<TransactionAdditionalInfoComment>
      get copyWith => _$TransactionAdditionalInfoCommentCopyWithImpl<
          TransactionAdditionalInfoComment>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionAdditionalInfoCommentToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionAdditionalInfoComment &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TransactionAdditionalInfo.comment(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TransactionAdditionalInfoCommentCopyWith<$Res>
    implements $TransactionAdditionalInfoCopyWith<$Res> {
  factory $TransactionAdditionalInfoCommentCopyWith(
          TransactionAdditionalInfoComment value,
          $Res Function(TransactionAdditionalInfoComment) _then) =
      _$TransactionAdditionalInfoCommentCopyWithImpl;
  @useResult
  $Res call({String data});
}

/// @nodoc
class _$TransactionAdditionalInfoCommentCopyWithImpl<$Res>
    implements $TransactionAdditionalInfoCommentCopyWith<$Res> {
  _$TransactionAdditionalInfoCommentCopyWithImpl(this._self, this._then);

  final TransactionAdditionalInfoComment _self;
  final $Res Function(TransactionAdditionalInfoComment) _then;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TransactionAdditionalInfoComment(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class TransactionAdditionalInfoDePoolOnRoundComplete
    implements TransactionAdditionalInfo {
  const TransactionAdditionalInfoDePoolOnRoundComplete(this.data,
      {final String? $type})
      : $type = $type ?? 'de_pool_on_round_complete';
  factory TransactionAdditionalInfoDePoolOnRoundComplete.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionAdditionalInfoDePoolOnRoundCompleteFromJson(json);

  @override
  final DePoolOnRoundCompleteNotification data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionAdditionalInfoDePoolOnRoundCompleteCopyWith<
          TransactionAdditionalInfoDePoolOnRoundComplete>
      get copyWith =>
          _$TransactionAdditionalInfoDePoolOnRoundCompleteCopyWithImpl<
              TransactionAdditionalInfoDePoolOnRoundComplete>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionAdditionalInfoDePoolOnRoundCompleteToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionAdditionalInfoDePoolOnRoundComplete &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TransactionAdditionalInfo.dePoolOnRoundComplete(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TransactionAdditionalInfoDePoolOnRoundCompleteCopyWith<
    $Res> implements $TransactionAdditionalInfoCopyWith<$Res> {
  factory $TransactionAdditionalInfoDePoolOnRoundCompleteCopyWith(
          TransactionAdditionalInfoDePoolOnRoundComplete value,
          $Res Function(TransactionAdditionalInfoDePoolOnRoundComplete) _then) =
      _$TransactionAdditionalInfoDePoolOnRoundCompleteCopyWithImpl;
  @useResult
  $Res call({DePoolOnRoundCompleteNotification data});

  $DePoolOnRoundCompleteNotificationCopyWith<$Res> get data;
}

/// @nodoc
class _$TransactionAdditionalInfoDePoolOnRoundCompleteCopyWithImpl<$Res>
    implements $TransactionAdditionalInfoDePoolOnRoundCompleteCopyWith<$Res> {
  _$TransactionAdditionalInfoDePoolOnRoundCompleteCopyWithImpl(
      this._self, this._then);

  final TransactionAdditionalInfoDePoolOnRoundComplete _self;
  final $Res Function(TransactionAdditionalInfoDePoolOnRoundComplete) _then;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TransactionAdditionalInfoDePoolOnRoundComplete(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DePoolOnRoundCompleteNotification,
    ));
  }

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DePoolOnRoundCompleteNotificationCopyWith<$Res> get data {
    return $DePoolOnRoundCompleteNotificationCopyWith<$Res>(_self.data,
        (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TransactionAdditionalInfoDePoolReceiveAnswer
    implements TransactionAdditionalInfo {
  const TransactionAdditionalInfoDePoolReceiveAnswer(this.data,
      {final String? $type})
      : $type = $type ?? 'de_pool_receive_answer';
  factory TransactionAdditionalInfoDePoolReceiveAnswer.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionAdditionalInfoDePoolReceiveAnswerFromJson(json);

  @override
  final DePoolReceiveAnswerNotification data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionAdditionalInfoDePoolReceiveAnswerCopyWith<
          TransactionAdditionalInfoDePoolReceiveAnswer>
      get copyWith =>
          _$TransactionAdditionalInfoDePoolReceiveAnswerCopyWithImpl<
              TransactionAdditionalInfoDePoolReceiveAnswer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionAdditionalInfoDePoolReceiveAnswerToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionAdditionalInfoDePoolReceiveAnswer &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TransactionAdditionalInfo.dePoolReceiveAnswer(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TransactionAdditionalInfoDePoolReceiveAnswerCopyWith<$Res>
    implements $TransactionAdditionalInfoCopyWith<$Res> {
  factory $TransactionAdditionalInfoDePoolReceiveAnswerCopyWith(
          TransactionAdditionalInfoDePoolReceiveAnswer value,
          $Res Function(TransactionAdditionalInfoDePoolReceiveAnswer) _then) =
      _$TransactionAdditionalInfoDePoolReceiveAnswerCopyWithImpl;
  @useResult
  $Res call({DePoolReceiveAnswerNotification data});

  $DePoolReceiveAnswerNotificationCopyWith<$Res> get data;
}

/// @nodoc
class _$TransactionAdditionalInfoDePoolReceiveAnswerCopyWithImpl<$Res>
    implements $TransactionAdditionalInfoDePoolReceiveAnswerCopyWith<$Res> {
  _$TransactionAdditionalInfoDePoolReceiveAnswerCopyWithImpl(
      this._self, this._then);

  final TransactionAdditionalInfoDePoolReceiveAnswer _self;
  final $Res Function(TransactionAdditionalInfoDePoolReceiveAnswer) _then;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TransactionAdditionalInfoDePoolReceiveAnswer(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as DePoolReceiveAnswerNotification,
    ));
  }

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $DePoolReceiveAnswerNotificationCopyWith<$Res> get data {
    return $DePoolReceiveAnswerNotificationCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TransactionAdditionalInfoTokenWalletDeployed
    implements TransactionAdditionalInfo {
  const TransactionAdditionalInfoTokenWalletDeployed(this.data,
      {final String? $type})
      : $type = $type ?? 'token_wallet_deployed';
  factory TransactionAdditionalInfoTokenWalletDeployed.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionAdditionalInfoTokenWalletDeployedFromJson(json);

  @override
  final TokenWalletDeployedNotification data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionAdditionalInfoTokenWalletDeployedCopyWith<
          TransactionAdditionalInfoTokenWalletDeployed>
      get copyWith =>
          _$TransactionAdditionalInfoTokenWalletDeployedCopyWithImpl<
              TransactionAdditionalInfoTokenWalletDeployed>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionAdditionalInfoTokenWalletDeployedToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionAdditionalInfoTokenWalletDeployed &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TransactionAdditionalInfo.tokenWalletDeployed(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TransactionAdditionalInfoTokenWalletDeployedCopyWith<$Res>
    implements $TransactionAdditionalInfoCopyWith<$Res> {
  factory $TransactionAdditionalInfoTokenWalletDeployedCopyWith(
          TransactionAdditionalInfoTokenWalletDeployed value,
          $Res Function(TransactionAdditionalInfoTokenWalletDeployed) _then) =
      _$TransactionAdditionalInfoTokenWalletDeployedCopyWithImpl;
  @useResult
  $Res call({TokenWalletDeployedNotification data});

  $TokenWalletDeployedNotificationCopyWith<$Res> get data;
}

/// @nodoc
class _$TransactionAdditionalInfoTokenWalletDeployedCopyWithImpl<$Res>
    implements $TransactionAdditionalInfoTokenWalletDeployedCopyWith<$Res> {
  _$TransactionAdditionalInfoTokenWalletDeployedCopyWithImpl(
      this._self, this._then);

  final TransactionAdditionalInfoTokenWalletDeployed _self;
  final $Res Function(TransactionAdditionalInfoTokenWalletDeployed) _then;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TransactionAdditionalInfoTokenWalletDeployed(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as TokenWalletDeployedNotification,
    ));
  }

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TokenWalletDeployedNotificationCopyWith<$Res> get data {
    return $TokenWalletDeployedNotificationCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TransactionAdditionalInfoWalletInteraction
    implements TransactionAdditionalInfo {
  const TransactionAdditionalInfoWalletInteraction(this.data,
      {final String? $type})
      : $type = $type ?? 'wallet_interaction';
  factory TransactionAdditionalInfoWalletInteraction.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionAdditionalInfoWalletInteractionFromJson(json);

  @override
  final WalletInteractionInfo data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionAdditionalInfoWalletInteractionCopyWith<
          TransactionAdditionalInfoWalletInteraction>
      get copyWith => _$TransactionAdditionalInfoWalletInteractionCopyWithImpl<
          TransactionAdditionalInfoWalletInteraction>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionAdditionalInfoWalletInteractionToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionAdditionalInfoWalletInteraction &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TransactionAdditionalInfo.walletInteraction(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TransactionAdditionalInfoWalletInteractionCopyWith<$Res>
    implements $TransactionAdditionalInfoCopyWith<$Res> {
  factory $TransactionAdditionalInfoWalletInteractionCopyWith(
          TransactionAdditionalInfoWalletInteraction value,
          $Res Function(TransactionAdditionalInfoWalletInteraction) _then) =
      _$TransactionAdditionalInfoWalletInteractionCopyWithImpl;
  @useResult
  $Res call({WalletInteractionInfo data});

  $WalletInteractionInfoCopyWith<$Res> get data;
}

/// @nodoc
class _$TransactionAdditionalInfoWalletInteractionCopyWithImpl<$Res>
    implements $TransactionAdditionalInfoWalletInteractionCopyWith<$Res> {
  _$TransactionAdditionalInfoWalletInteractionCopyWithImpl(
      this._self, this._then);

  final TransactionAdditionalInfoWalletInteraction _self;
  final $Res Function(TransactionAdditionalInfoWalletInteraction) _then;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TransactionAdditionalInfoWalletInteraction(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as WalletInteractionInfo,
    ));
  }

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $WalletInteractionInfoCopyWith<$Res> get data {
    return $WalletInteractionInfoCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

/// @nodoc
@JsonSerializable()
class TransactionAdditionalInfoJettonNotify
    implements TransactionAdditionalInfo {
  const TransactionAdditionalInfoJettonNotify(this.data, {final String? $type})
      : $type = $type ?? 'jetton_notify';
  factory TransactionAdditionalInfoJettonNotify.fromJson(
          Map<String, dynamic> json) =>
      _$TransactionAdditionalInfoJettonNotifyFromJson(json);

  @override
  final JettonIncomingTransfer data;

  @JsonKey(name: 'type')
  final String $type;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @pragma('vm:prefer-inline')
  $TransactionAdditionalInfoJettonNotifyCopyWith<
          TransactionAdditionalInfoJettonNotify>
      get copyWith => _$TransactionAdditionalInfoJettonNotifyCopyWithImpl<
          TransactionAdditionalInfoJettonNotify>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$TransactionAdditionalInfoJettonNotifyToJson(
      this,
    );
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is TransactionAdditionalInfoJettonNotify &&
            (identical(other.data, data) || other.data == data));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, data);

  @override
  String toString() {
    return 'TransactionAdditionalInfo.jettonNotify(data: $data)';
  }
}

/// @nodoc
abstract mixin class $TransactionAdditionalInfoJettonNotifyCopyWith<$Res>
    implements $TransactionAdditionalInfoCopyWith<$Res> {
  factory $TransactionAdditionalInfoJettonNotifyCopyWith(
          TransactionAdditionalInfoJettonNotify value,
          $Res Function(TransactionAdditionalInfoJettonNotify) _then) =
      _$TransactionAdditionalInfoJettonNotifyCopyWithImpl;
  @useResult
  $Res call({JettonIncomingTransfer data});

  $JettonIncomingTransferCopyWith<$Res> get data;
}

/// @nodoc
class _$TransactionAdditionalInfoJettonNotifyCopyWithImpl<$Res>
    implements $TransactionAdditionalInfoJettonNotifyCopyWith<$Res> {
  _$TransactionAdditionalInfoJettonNotifyCopyWithImpl(this._self, this._then);

  final TransactionAdditionalInfoJettonNotify _self;
  final $Res Function(TransactionAdditionalInfoJettonNotify) _then;

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  $Res call({
    Object? data = null,
  }) {
    return _then(TransactionAdditionalInfoJettonNotify(
      null == data
          ? _self.data
          : data // ignore: cast_nullable_to_non_nullable
              as JettonIncomingTransfer,
    ));
  }

  /// Create a copy of TransactionAdditionalInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $JettonIncomingTransferCopyWith<$Res> get data {
    return $JettonIncomingTransferCopyWith<$Res>(_self.data, (value) {
      return _then(_self.copyWith(data: value));
    });
  }
}

// dart format on
