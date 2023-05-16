import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import 'package:http/http.dart' as http;

import '../test_helpers.dart';
import '../timeout_utils.dart';

class MockedStorageMethods {
  final data = <String, String>{};

  Future<String?> get(String key) async {
    return data[key];
  }

  Future<void> set({
    required String key,
    required String value,
  }) async {
    data[key] = value;
  }

  void setUnchecked({
    required String key,
    required String value,
  }) {
    data[key] = value;
  }

  Future<void> remove(String key) async {
    data.remove(key);
  }

  void removeUnchecked(String key) {
    data.remove(key);
  }
}

Future<String> postTransportData({
  required String endpoint,
  required Map<String, String> headers,
  required String data,
}) async {
  final response = await http.post(
    Uri.parse(endpoint),
    headers: headers,
    body: data,
  );

  return response.body;
}

void main() {
  // TODO(nesquikm): it's not clear which test is causing flaky behavior
  // https://github.com/flutter/flutter/issues/105913
  if (skipBecauseFlaky()) {
    return;
  }

  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const name = 'Mainnet (GQL)';
  const networkId = 1;
  const networkGroup = 'mainnet';
  const endpoint = 'https://jrpc.everwallet.net/rpc';

  const stEverContractVault =
      '0:675a6d63f27e3f24d41d286043a9286b2e3eb6b84fa4c3308cc2833ef6f54d68';
  const publicKey =
      'ad158ac64c5deff5abd4d5e86a81d954716445c45e31f17a9dfe780f9cef7602';
  const address =
      '0:d92c91860621eb5397957ee3f426860e2c21d7d4410626885f35db88a46a87c2';
  const workchainId = 0;
  const walletType = WalletType.walletV3();
  const expiration = Expiration.timeout(60);

  const jrpcSettings = JrpcNetworkSettings(endpoint: endpoint);
  late JrpcTransport transport;

  setUp(() async {
    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    setupLogger(
      level: LogLevel.Trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );

    runApp(Container());

    await initRustToDartCaller();

    final connection = await JrpcConnection.create(
      post: postTransportData,
      settings: jrpcSettings,
      name: name,
      group: networkGroup,
      networkId: networkId,
    );
    transport = await JrpcTransport.create(jrpcConnection: connection);
  });

  // TODO(nesquikm): it's not clear which test is causing flaky behavior
  group('TonWallet test', () {
    testWidgets('TonWallet subscribe', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.subscribe(
        transport: transport,
        workchainId: workchainId,
        publicKey: publicKey,
        walletType: walletType,
      );

      expect(wallet, isNotNull);
      expect(wallet.address, address);
      expect(wallet.publicKey, publicKey);
      expect(wallet.walletType, walletType);
      expect(wallet.workchain, 0);
    });

    testWidgets('TonWallet subscribeByAddress', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: address,
      );

      expect(wallet, isNotNull);
      expect(wallet.address, address);
      expect(wallet.publicKey, publicKey);
      expect(wallet.walletType, walletType);
      expect(wallet.workchain, 0);
    });

    testWidgets('TonWallet subscribeByExistingWallet',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final infoList = await TonWallet.findExistingWallets(
        transport: transport,
        workchainId: workchainId,
        publicKey: publicKey,
        walletTypes: [walletType],
      );

      /// 1 because we expect only one type
      expect(infoList.length, 1);

      final wallet = await TonWallet.subscribeByExistingWallet(
        transport: transport,
        existingWallet: infoList.first,
      );

      expect(wallet, isNotNull);
      expect(wallet.address, address);
      expect(wallet.publicKey, publicKey);
      expect(wallet.walletType, walletType);
      expect(wallet.workchain, 0);
    });

    testWidgets('TonWallet prepareTransfer', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: address,
      );

      final contract = await transport.getContractState(stEverContractVault);
      final repacked = await repackAddress(stEverContractVault);

      final message = await wallet.prepareTransfer(
        contractState: contract,
        publicKey: publicKey,
        destination: repacked,
        amount: Fixed.parse('100000000'),
        bounce: false,
        expiration: expiration,
      );
      expect(message, isNotNull);
    });

    testWidgets('TonWallet prepareTransfer and sign',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final storageMethods = MockedStorageMethods();
      const signers = [KeySigner.encrypted(), KeySigner.derived()];

      /// ---------------------------------------
      /// ADDING KEY
      /// ---------------------------------------
      const phraseLabs =
          'company conduct cave custom ill fox loop type holiday veteran clog oxygen';
      const password = 'password';
      const inputLabsData = DerivedKeyCreateInputImport(
        keyName: 'KeyNameLabs',
        phrase: phraseLabs,
        password: Password.explicit(
          PasswordExplicit(
            password: password,
            cacheBehavior: PasswordCacheBehavior.nop(),
          ),
        ),
      );
      const input = DerivedKeyCreateInput.import(inputLabsData);

      final storage = await Storage.create(
        get: storageMethods.get,
        set: storageMethods.set,
        setUnchecked: storageMethods.setUnchecked,
        remove: storageMethods.remove,
        removeUnchecked: storageMethods.removeUnchecked,
      );

      final keystore = await KeyStore.create(
        storage: storage,
        signers: signers,
      );
      final key = await keystore.addKey(input);

      /// ---------------------------------------
      /// CREATING WALLET
      /// ---------------------------------------

      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: address,
      );

      final contract = await transport.getContractState(stEverContractVault);
      final repacked = await repackAddress(stEverContractVault);

      final message = await wallet.prepareTransfer(
        contractState: contract,
        publicKey: publicKey,
        destination: repacked,
        amount: Fixed.parse('100000000'),
        bounce: false,
        expiration: expiration,
      );
      await message.refreshTimeout();

      final signature = await keystore.sign(
        data: message.hash,
        input: DerivedKeySignParams.byAccountId(
          DerivedKeySignParamsByAccountId(
            masterKey: key.masterKey,
            accountId: key.accountId,
            password: const Password.explicit(
              PasswordExplicit(
                password: password,
                cacheBehavior: PasswordCacheBehavior.nop(),
              ),
            ),
          ),
        ),
        signatureId: 0,
      );

      final signedMessage = await message.sign(signature: signature);
      expect(signedMessage, isNotNull);
      expect(signedMessage.expireAt, message.expireAt);
      expect(signedMessage.hash.length, 64);
    });

    testWidgets('TonWallet prepareDeploy', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: address,
      );

      try {
        await wallet.prepareDeploy(expiration: expiration);
      } catch (_) {
        /// deploy for this wallet throws error because it had been already deployed
        expect(true, true);
      }
    });

    testWidgets('TonWallet getExistingWalletInfo', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.getExistingWalletInfo(
        transport: transport,
        address: address,
      );

      expect(wallet.address, address);
      expect(wallet.publicKey, publicKey);
      expect(wallet.walletType, walletType);
      expect(wallet.contractState.balance, isNot(Fixed.parse('0')));
      expect(wallet.contractState.isDeployed, isTrue);
    });

    testWidgets('TonWallet getWalletCustodians', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final custodians1 = await TonWallet.getWalletCustodians(
        transport: transport,
        address: address,
      );
      final custodians2 = await TonWallet.getWalletCustodians(
        transport: transport,
        address:
            '0:91b689ad990660249eb00140577e6a98d70043ccaa7f63acfc0436336bdbd80f',
      );

      /// For not multisig wallet custodians contains public key of wallet
      expect(custodians1, [publicKey]);
      expect(custodians2.length, 3);
    });
  });
}
