import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

part 'transfer_recipient.freezed.dart';

part 'transfer_recipient.g.dart';

@Freezed(unionKey: 'type')
sealed class TransferRecipient with _$TransferRecipient {
  const factory TransferRecipient.ownerWallet(final Address data) =
      TransferRecipientOwnerWallet;

  const factory TransferRecipient.tokenWallet(final Address data) =
      TransferRecipientTokenWallet;

  factory TransferRecipient.fromJson(Map<String, dynamic> json) =>
      _$TransferRecipientFromJson(json);
}
