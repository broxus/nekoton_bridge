import 'package:freezed_annotation/freezed_annotation.dart';

part 'transfer_recipient.freezed.dart';
part 'transfer_recipient.g.dart';

@Freezed(unionKey: 'type')
sealed class TransferRecipient with _$TransferRecipient {
  const factory TransferRecipient.ownerWallet(final String data) = _OwnerWallet;

  const factory TransferRecipient.tokenWallet(final String data) = _TokenWallet;

  factory TransferRecipient.fromJson(Map<String, dynamic> json) =>
      _$TransferRecipientFromJson(json);
}
