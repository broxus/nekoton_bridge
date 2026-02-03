import 'dart:async';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StreamListenersTracker', () {
    test('initial total listeners count is zero', () {
      // Arrange
      final tracker = StreamListenersTracker();

      // Act
      final total = tracker.totalListenersCount;

      // Assert
      expect(total, 0);
    });

    test('increments total listeners count on listen', () {
      // Arrange
      final tracker = StreamListenersTracker();
      final controller = StreamController<int>.broadcast();
      final totals = <int>[];
      final stream = tracker.observe(controller.stream, 'streamA', totals.add);

      // Act
      final subscription = stream.listen((_) {});

      // Assert
      expect(totals, [1]);
      subscription.cancel();
      controller.close();
    });

    test('decrements total listeners count on cancel', () async {
      // Arrange
      final tracker = StreamListenersTracker();
      final controller = StreamController<int>();
      final totals = <int>[];
      final stream = tracker.observe(controller.stream, 'streamA', totals.add);
      final subscription = stream.listen((_) {});

      // Act
      await subscription.cancel();

      // Assert
      expect(totals, [1, 0]);
      await controller.close();
    });

    test('decrements total listeners count on done', () async {
      // Arrange
      final tracker = StreamListenersTracker();
      final controller = StreamController<int>();
      final totals = <int>[];
      final stream = tracker.observe(controller.stream, 'streamA', totals.add);
      final subscription = stream.listen((_) {});

      // Act
      await controller.close();
      await subscription.asFuture<void>();

      // Assert
      expect(totals, [1, 0]);
    });

    test('tracks total across multiple streams', () async {
      // Arrange
      final tracker = StreamListenersTracker();
      final controllerA = StreamController<int>();
      final controllerB = StreamController<int>();
      final totals = <int>[];
      final streamA = tracker.observe(
        controllerA.stream,
        'streamA',
        totals.add,
      );
      final streamB = tracker.observe(
        controllerB.stream,
        'streamB',
        totals.add,
      );
      final subscriptionA = streamA.listen((_) {});
      final subscriptionB = streamB.listen((_) {});

      // Act
      await subscriptionA.cancel();
      await subscriptionB.cancel();

      // Assert
      expect(totals, [1, 2, 1, 0]);
      await controllerA.close();
      await controllerB.close();
    });

    test('tracks multiple listeners on a single stream', () async {
      // Arrange
      final tracker = StreamListenersTracker();
      final controller = StreamController<int>.broadcast();
      final totals = <int>[];
      final streamA = tracker.observe(controller.stream, 'streamA', totals.add);
      final streamB = tracker.observe(controller.stream, 'streamB', totals.add);
      final subscriptionA = streamA.listen((_) {});
      final subscriptionB = streamB.listen((_) {});

      // Act
      await subscriptionA.cancel();
      await subscriptionB.cancel();

      // Assert
      expect(totals, [1, 2, 1, 0]);
      await controller.close();
    });

    test('reset clears total listeners count', () async {
      // Arrange
      final tracker = StreamListenersTracker();
      final controller = StreamController<int>();
      final totals = <int>[];
      final stream = tracker.observe(controller.stream, 'streamA', totals.add);
      final subscription = stream.listen((_) {});

      // Act
      tracker.reset();

      // Assert
      expect(tracker.totalListenersCount, 0);
      expect(totals, [1]);
      await subscription.cancel();
      await controller.close();
    });
  });
}
