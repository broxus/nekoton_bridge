/// Interface, that should be implemented by any wallet or contract
/// that supports functionality of refreshing.
abstract interface class RefreshingInterface {
  /// Long-time operation that should be called to refresh object.
  Future<void> refresh();

  /// Description of refreshing operation that is used for logging.
  /// It can be address of wallet or contract.
  String get refreshDescription;
}
