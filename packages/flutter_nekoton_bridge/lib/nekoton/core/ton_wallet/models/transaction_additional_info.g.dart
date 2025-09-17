// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction_additional_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

TransactionAdditionalInfoComment _$TransactionAdditionalInfoCommentFromJson(
  Map<String, dynamic> json,
) => TransactionAdditionalInfoComment(
  json['data'] as String,
  $type: json['type'] as String?,
);

Map<String, dynamic> _$TransactionAdditionalInfoCommentToJson(
  TransactionAdditionalInfoComment instance,
) => <String, dynamic>{'data': instance.data, 'type': instance.$type};

TransactionAdditionalInfoDePoolOnRoundComplete
_$TransactionAdditionalInfoDePoolOnRoundCompleteFromJson(
  Map<String, dynamic> json,
) => TransactionAdditionalInfoDePoolOnRoundComplete(
  DePoolOnRoundCompleteNotification.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$TransactionAdditionalInfoDePoolOnRoundCompleteToJson(
  TransactionAdditionalInfoDePoolOnRoundComplete instance,
) => <String, dynamic>{'data': instance.data.toJson(), 'type': instance.$type};

TransactionAdditionalInfoDePoolReceiveAnswer
_$TransactionAdditionalInfoDePoolReceiveAnswerFromJson(
  Map<String, dynamic> json,
) => TransactionAdditionalInfoDePoolReceiveAnswer(
  DePoolReceiveAnswerNotification.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$TransactionAdditionalInfoDePoolReceiveAnswerToJson(
  TransactionAdditionalInfoDePoolReceiveAnswer instance,
) => <String, dynamic>{'data': instance.data.toJson(), 'type': instance.$type};

TransactionAdditionalInfoTokenWalletDeployed
_$TransactionAdditionalInfoTokenWalletDeployedFromJson(
  Map<String, dynamic> json,
) => TransactionAdditionalInfoTokenWalletDeployed(
  TokenWalletDeployedNotification.fromJson(
    json['data'] as Map<String, dynamic>,
  ),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$TransactionAdditionalInfoTokenWalletDeployedToJson(
  TransactionAdditionalInfoTokenWalletDeployed instance,
) => <String, dynamic>{'data': instance.data.toJson(), 'type': instance.$type};

TransactionAdditionalInfoWalletInteraction
_$TransactionAdditionalInfoWalletInteractionFromJson(
  Map<String, dynamic> json,
) => TransactionAdditionalInfoWalletInteraction(
  WalletInteractionInfo.fromJson(json['data'] as Map<String, dynamic>),
  $type: json['type'] as String?,
);

Map<String, dynamic> _$TransactionAdditionalInfoWalletInteractionToJson(
  TransactionAdditionalInfoWalletInteraction instance,
) => <String, dynamic>{'data': instance.data.toJson(), 'type': instance.$type};

TransactionAdditionalInfoJettonNotify
_$TransactionAdditionalInfoJettonNotifyFromJson(Map<String, dynamic> json) =>
    TransactionAdditionalInfoJettonNotify(
      JettonIncomingTransfer.fromJson(json['data'] as Map<String, dynamic>),
      $type: json['type'] as String?,
    );

Map<String, dynamic> _$TransactionAdditionalInfoJettonNotifyToJson(
  TransactionAdditionalInfoJettonNotify instance,
) => <String, dynamic>{'data': instance.data.toJson(), 'type': instance.$type};
