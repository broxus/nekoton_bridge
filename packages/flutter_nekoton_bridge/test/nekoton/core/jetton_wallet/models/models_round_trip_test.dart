import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../model_round_trip_test_utils.dart';

void main() {
  setUpAll(setUpRoundTripBridgeMocks);

  group('jetton wallet models round-trip', () {
    testMapRoundTrip(
      name: 'JettonBurnNotification round-trips',
      value: jettonBurnNotificationFixture(),
      toJson: (value) => value.toJson(),
      fromJson: JettonBurnNotification.fromJson,
    );

    testMapRoundTrip(
      name: 'JettonIncomingTransfer round-trips',
      value: jettonIncomingTransferFixture(),
      toJson: (value) => value.toJson(),
      fromJson: JettonIncomingTransfer.fromJson,
    );

    testMapRoundTrip(
      name: 'JettonMetaData round-trips',
      value: jettonMetaDataFixture(),
      toJson: (value) => value.toJson(),
      fromJson: JettonMetaData.fromJson,
    );

    testMapRoundTrip(
      name: 'JettonOutgoingTransfer round-trips',
      value: jettonOutgoingTransferFixture(),
      toJson: (value) => value.toJson(),
      fromJson: JettonOutgoingTransfer.fromJson,
    );

    testMapRoundTrip(
      name: 'JettonRootData round-trips',
      value: jettonRootDataFixture(),
      toJson: (value) => value.toJson(),
      fromJson: JettonRootData.fromJson,
    );

    testMapRoundTrip(
      name: 'JettonWalletData round-trips',
      value: jettonWalletDataFixture(),
      toJson: (value) => value.toJson(),
      fromJson: JettonWalletData.fromJson,
    );
  });
}
