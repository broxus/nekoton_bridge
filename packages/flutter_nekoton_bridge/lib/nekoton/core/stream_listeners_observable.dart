import 'package:flutter_nekoton_bridge/nekoton/core/stream_listeners_observer.dart';

/// Exposes stream listeners tracking for observable streams.
abstract class StreamListenersObservable {
  const StreamListenersObservable();

  /// Total listeners count across all tracked streams.
  int get totalListenersCount;

  /// Attach observer to listen for stream subscriptions changes.
  void attachStreamListenersObserver(StreamListenersObserver observer);
}
