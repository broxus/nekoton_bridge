import 'package:flutter_nekoton_bridge/nekoton/core/models/models_lib.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_nekoton_bridge/nekoton/core/token_wallet/models/token_wallet_version.dart';

part 'root_token_contract_details.freezed.dart';
part 'root_token_contract_details.g.dart';

@freezed
sealed class RootTokenContractDetails with _$RootTokenContractDetails {
  @JsonSerializable(fieldRename: FieldRename.snake)
  const factory RootTokenContractDetails({
    required final TokenWalletVersion version,
    required final String name,
    required final String symbol,
    required final int decimals,
    required final Address ownerAddress,
    required final String totalSupply,
  }) = _RootTokenContractDetails;

  factory RootTokenContractDetails.fromJson(Map<String, dynamic> json) =>
      _$RootTokenContractDetailsFromJson(json);
}
