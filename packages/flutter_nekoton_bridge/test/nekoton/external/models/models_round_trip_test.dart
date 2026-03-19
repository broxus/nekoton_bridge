import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../model_round_trip_test_utils.dart';

void main() {
  group('external models round-trip', () {
    testMapRoundTrip(
      name: 'GqlNetworkSettings round-trips',
      value: gqlNetworkSettingsFixture(),
      toJson: (value) => value.toJson(),
      fromJson: GqlNetworkSettings.fromJson,
    );

    testMapRoundTrip(
      name: 'JrpcNetworkSettings round-trips',
      value: jrpcNetworkSettingsFixture(),
      toJson: (value) => value.toJson(),
      fromJson: JrpcNetworkSettings.fromJson,
    );

    testMapRoundTrip(
      name: 'LedgerSignatureContext round-trips',
      value: ledgerSignatureContextFixture(),
      toJson: (value) => value.toJson(),
      fromJson: LedgerSignatureContext.fromJson,
    );

    testMapRoundTrip(
      name: 'ProtoNetworkSettings round-trips',
      value: protoNetworkSettingsFixture(),
      toJson: (value) => value.toJson(),
      fromJson: ProtoNetworkSettings.fromJson,
    );
  });
}
