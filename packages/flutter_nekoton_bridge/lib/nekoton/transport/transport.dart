import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Abstract class for transport, so we can combine both implementations into single list
abstract class Transport {
  String get name;

  int get networkId;

  String get group;

  TransportType get type;

  Future<RawContractState> getContractState(String address);

  Future<FullContractState?> getFullContractState(String address);

  Future<AccountsList> getAccountsByCodeHash({
    required String codeHash,
    required int limit,
    String? continuation,
  });

  Future<TransactionsList> getTransactions({
    required String address,
    required int count,
    int? fromLt,
  });

  Future<Transaction?> getTransaction(String hash);

  Future<int?> getSignatureId();

  /// Used only for creating rust instances.
  ArcTransportBoxTrait get transportBox;

  void dispose();
}
