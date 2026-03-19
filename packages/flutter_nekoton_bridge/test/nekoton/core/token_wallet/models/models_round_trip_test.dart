import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../model_round_trip_test_utils.dart';

void main() {
  setUpAll(setUpRoundTripBridgeMocks);

  group('token wallet models round-trip', () {
    testMapRoundTrip(
      name: 'OnBalanceChangedPayload round-trips',
      value: onBalanceChangedPayloadFixture(),
      toJson: (value) => value.toJson(),
      fromJson: OnBalanceChangedPayload.fromJson,
    );

    testMapRoundTrip(
      name: 'RootTokenContractDetails round-trips',
      value: rootTokenContractDetailsFixture(),
      toJson: (value) => value.toJson(),
      fromJson: RootTokenContractDetails.fromJson,
      validateJson: (json) {
        expect(json.containsKey('owner_address'), isTrue);
        expect(json.containsKey('total_supply'), isTrue);
      },
    );

    testMapRoundTrip(
      name: 'Symbol round-trips',
      value: symbolFixture(),
      toJson: (value) => value.toJson(),
      fromJson: Symbol.fromJson,
    );

    testMapRoundTrip(
      name: 'TokenIncomingTransfer round-trips',
      value: tokenIncomingTransferFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TokenIncomingTransfer.fromJson,
    );

    testMapRoundTrip(
      name: 'TokenOutgoingTransfer round-trips',
      value: tokenOutgoingTransferFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TokenOutgoingTransfer.fromJson,
    );

    testMapRoundTrip(
      name: 'TokenSwapBack round-trips',
      value: tokenSwapBackFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TokenSwapBack.fromJson,
      validateJson: (json) =>
          expect(json.containsKey('callback_address'), isTrue),
    );

    testMapRoundTrip(
      name: 'TokenWalletDetails round-trips',
      value: tokenWalletDetailsFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TokenWalletDetails.fromJson,
    );

    testMapRoundTrip(
      name: 'TransferRecipient.ownerWallet round-trips',
      value: transferRecipientOwnerFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TransferRecipient.fromJson,
      validateJson: (json) => expect(json['type'], 'ownerWallet'),
    );

    testMapRoundTrip(
      name: 'TransferRecipient.tokenWallet round-trips',
      value: transferRecipientTokenFixture(),
      toJson: (value) => value.toJson(),
      fromJson: TransferRecipient.fromJson,
      validateJson: (json) => expect(json['type'], 'tokenWallet'),
    );
  });
}
