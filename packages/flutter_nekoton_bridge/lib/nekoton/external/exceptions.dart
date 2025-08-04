class LedgerException implements Exception {
  const LedgerException([this.message]);

  final String? message;

  @override
  String toString() => message ?? 'LedgerException';
}

class LedgerOperationCancelledException extends LedgerException {
  const LedgerOperationCancelledException(super.message);
}
