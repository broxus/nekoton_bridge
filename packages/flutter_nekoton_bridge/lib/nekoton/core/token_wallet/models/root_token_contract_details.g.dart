// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'root_token_contract_details.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_RootTokenContractDetails _$$_RootTokenContractDetailsFromJson(
        Map<String, dynamic> json) =>
    _$_RootTokenContractDetails(
      version: $enumDecode(_$TokenWalletVersionEnumMap, json['version']),
      name: json['name'] as String,
      symbol: json['symbol'] as String,
      decimals: json['decimals'] as int,
      ownerAddress: Address.fromJson(json['owner_address'] as String),
      totalSupply: json['total_supply'] as String,
    );

Map<String, dynamic> _$$_RootTokenContractDetailsToJson(
        _$_RootTokenContractDetails instance) =>
    <String, dynamic>{
      'version': _$TokenWalletVersionEnumMap[instance.version]!,
      'name': instance.name,
      'symbol': instance.symbol,
      'decimals': instance.decimals,
      'owner_address': instance.ownerAddress.toJson(),
      'total_supply': instance.totalSupply,
    };

const _$TokenWalletVersionEnumMap = {
  TokenWalletVersion.oldTip3v4: 'OldTip3v4',
  TokenWalletVersion.tip3: 'Tip3',
};
