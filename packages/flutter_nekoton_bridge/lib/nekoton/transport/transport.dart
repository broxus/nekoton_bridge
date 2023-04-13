import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Abstract class for transport, so we can combine both implementations into single list
abstract class Transport {
  String get name;

  int get networkId;

  String get group;

  TransportType get type;

  /// Get contract state of address and return RawContractState or throw error
  Future<RawContractState> getContractState(String address);

  /// Get full contract state of address and return FullContractState or throw error
  Future<FullContractState?> getFullContractState(String address);

  /// Get list of accounts by code hash. Returns AccountsList or throw error
  Future<AccountsList> getAccountsByCodeHash({
    required String codeHash,
    required int limit,
    String? continuation,
  });

  /// Get list of transactions by address.
  /// Return TransactionsList or throw error
  Future<TransactionsList> getTransactions({
    required String address,
    required int count,
    int? fromLt,
  });

  /// Get single transaction by its id.
  /// Return Transaction if found or throw error
  Future<Transaction?> getTransaction(String hash);

  /// Get transport signature id and return it or throw error
  Future<int?> getSignatureId();

  /// Get id of network or throw error
  Future<int> getNetworkId();

  /// Used only for creating rust instances.
  ArcTransportBoxTrait get transportBox;

  void dispose();
}
