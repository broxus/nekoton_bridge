/// Observes stream listener activity for wallet streams.
abstract class StreamListenersObserver {
  const StreamListenersObserver();

  /// Called whenever total listeners count changes across all streams.
  void onStreamListenersChanged(int totalListenersCount);
}
