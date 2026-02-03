import 'package:rxdart/rxdart.dart';

/// Tracks stream listeners count across multiple streams.
class StreamListenersTracker {
  final Map<String, int> _streamListenersCount = {};
  int _totalStreamListenersCount = 0;

  int get totalListenersCount => _totalStreamListenersCount;

  Stream<T> observe<T>(
    Stream<T> stream,
    String streamName,
    void Function(int totalListenersCount) onTotalChanged,
  ) => stream
      .doOnListen(() => _handleStreamListen(streamName, onTotalChanged))
      .doOnCancel(() => _handleStreamEnd(streamName, onTotalChanged))
      .doOnDone(() => _handleStreamEnd(streamName, onTotalChanged));

  void reset() {
    _streamListenersCount.clear();
    _totalStreamListenersCount = 0;
  }

  void _handleStreamListen(
    String streamName,
    void Function(int totalListenersCount) onTotalChanged,
  ) {
    final next = (_streamListenersCount[streamName] ?? 0) + 1;
    _streamListenersCount[streamName] = next;
    _totalStreamListenersCount += 1;
    onTotalChanged(_totalStreamListenersCount);
  }

  void _handleStreamEnd(
    String streamName,
    void Function(int totalListenersCount) onTotalChanged,
  ) {
    final current = _streamListenersCount[streamName] ?? 0;
    if (current == 0) return;

    final next = current - 1;
    if (next == 0) {
      _streamListenersCount.remove(streamName);
    } else {
      _streamListenersCount[streamName] = next;
    }

    if (_totalStreamListenersCount > 0) {
      _totalStreamListenersCount -= 1;
    }

    onTotalChanged(_totalStreamListenersCount);
  }
}
