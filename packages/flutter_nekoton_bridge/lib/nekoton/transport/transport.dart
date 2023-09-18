import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Abstract class for transport, so we can combine both implementations into single list
abstract class Transport {
  String get name;

  late final int networkId;

  String get group;

  TransportType get type;

  /// Get uniquer identifier of transport based on type and endpoints
  String get connectionParamsHash;

  /// Get contract state of address and return RawContractState or throw error
  Future<RawContractState> getContractState(Address address);

  /// Get full contract state of address and return FullContractState or throw error
  Future<FullContractState?> getFullContractState(Address address);

  /// Get contract fields of [address] and return (Map<String, dynamic>, state)
  /// or throw error.
  /// This method automatically loads state by calling [getFullContractState] if
  /// [cachedState] is null.
  Future<(Map<String, dynamic>?, FullContractState?)> getContractFields({
    required Address address,
    required String contractAbi,
    FullContractState? cachedState,
  });

  /// Get list of accounts by code hash. Returns AccountsList or throw error
  Future<AccountsList> getAccountsByCodeHash({
    required String codeHash,
    required int limit,
    String? continuation,
  });

  /// Get list of transactions by address.
  /// Return TransactionsList or throw error
  Future<TransactionsList> getTransactions({
    required Address address,
    required int count,
    String? fromLt,
  });

  /// Get single transaction by its id.
  /// Return Transaction if found or throw error
  Future<Transaction?> getTransaction(String hash);

  /// Call get_dst_transaction of nekoton's transport and
  /// return option RawTransaction or throw error
  Future<RawTransaction?> getDstTransaction(String messageHash);

  /// Get transport signature id and return it or throw error
  Future<int?> getSignatureId();

  /// Get id of network or throw error
  Future<int> getNetworkId();

  /// Get blockchain config or throw error
  Future<BlockchainConfig> getBlockchainConfig({bool force = true});

  /// Used only for creating rust instances.
  ArcTransportBoxTrait get transportBox;

  void dispose();
}
