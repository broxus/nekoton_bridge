// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'existing_wallet_info.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_ExistingWalletInfo _$ExistingWalletInfoFromJson(Map<String, dynamic> json) =>
    _ExistingWalletInfo(
      address: Address.fromJson(json['address'] as String),
      publicKey: PublicKey.fromJson(json['publicKey'] as String),
      walletType: WalletType.fromJson(
        json['walletType'] as Map<String, dynamic>,
      ),
      contractState: ContractState.fromJson(
        json['contractState'] as Map<String, dynamic>,
      ),
    );

Map<String, dynamic> _$ExistingWalletInfoToJson(_ExistingWalletInfo instance) =>
    <String, dynamic>{
      'address': instance.address.toJson(),
      'publicKey': instance.publicKey.toJson(),
      'walletType': instance.walletType.toJson(),
      'contractState': instance.contractState.toJson(),
    };
