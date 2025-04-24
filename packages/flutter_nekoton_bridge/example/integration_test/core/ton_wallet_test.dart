import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

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

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const name = 'Mainnet (GQL)';
  const networkGroup = 'mainnet';
  const endpoint = 'https://jrpc.everwallet.net/proto';

  const stEverContractVault = Address(
      address:
          '0:675a6d63f27e3f24d41d286043a9286b2e3eb6b84fa4c3308cc2833ef6f54d68');
  const publicKey = PublicKey(
      publicKey:
          'ad158ac64c5deff5abd4d5e86a81d954716445c45e31f17a9dfe780f9cef7602');
  const address = Address(
      address:
          '0:d92c91860621eb5397957ee3f426860e2c21d7d4410626885f35db88a46a87c2');
  const workchainId = 0;
  const walletType = WalletType.walletV3();
  const expiration = Expiration.timeout(60);

  const jrpcSettings = ProtoNetworkSettings(endpoint: endpoint);
  late ProtoTransport transport;

  setUp(() async {
    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    setupLogger(
      level: LogLevel.trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );

    runApp(Container());

    await initRustToDartCaller();

    final connection = ProtoConnection.create(
      client: TestProtoClient(),
      settings: jrpcSettings,
      name: name,
      group: networkGroup,
    );
    transport = await ProtoTransport.create(protoConnection: connection);
  });

  setUpAll(() async {
    await NekotonBridge.init();
  });

  tearDown(() async {
    await transport.dispose();
  });

  // TODO(nesquikm): it's not clear which test is causing flaky behavior
  group('TonWallet', () {
    testWidgets('subscribe', (WidgetTester tester) async {
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

    testWidgets('subscribeByAddress', (WidgetTester tester) async {
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

    testWidgets('subscribeByExistingWallet', (WidgetTester tester) async {
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

    testWidgets('prepareTransfer', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: address,
      );
      final contract = await transport.getContractState(address);
      final message = await wallet.prepareTransfer(
        contractState: contract,
        publicKey: publicKey,
        expiration: expiration,
        params: [
          TonWalletTransferParams(
            destination: stEverContractVault,
            amount: BigInt.parse('100000000'),
            bounce: false,
          ),
        ],
      );
      expect(message, isNotNull);
    });

    testWidgets('prepareTransfer and sign', (WidgetTester tester) async {
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
      final keysEntry = keystore.keys.first;

      /// ---------------------------------------
      /// CREATING WALLET
      /// ---------------------------------------

      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: address,
      );
      final contract = await transport.getContractState(address);
      final message = await wallet.prepareTransfer(
        contractState: contract,
        publicKey: publicKey,
        expiration: expiration,
        params: [
          TonWalletTransferParams(
            destination: stEverContractVault,
            amount: BigInt.parse('100000000'),
            bounce: false,
          ),
        ],
      );
      await message.refreshTimeout();

      final signature = await keystore.sign(
        data: message.hash,
        input: DerivedKeyPassword.byAccountId(
          DerivedKeyPasswordByAccountId(
            masterKey: key,
            accountId: keysEntry.accountId,
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

    testWidgets('prepareDeploy', (WidgetTester tester) async {
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

    testWidgets('getExistingWalletInfo', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.getExistingWalletInfo(
        transport: transport,
        address: address,
      );

      expect(wallet.address, address);
      expect(wallet.publicKey, publicKey);
      expect(wallet.walletType, walletType);
      expect(wallet.contractState.balance, isNot(BigInt.parse('0')));
      expect(wallet.contractState.isDeployed, isTrue);
    });

    testWidgets('getWalletCustodians', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final custodians1 = await TonWallet.getWalletCustodians(
        transport: transport,
        address: address,
      );
      final custodians2 = await TonWallet.getWalletCustodians(
        transport: transport,
        address: const Address(
            address:
                '0:91b689ad990660249eb00140577e6a98d70043ccaa7f63acfc0436336bdbd80f'),
      );

      /// For not multisig wallet custodians contains public key of wallet
      expect(custodians1, [publicKey]);
      expect(custodians2.length, 3);
    });

    testWidgets('refresh', (WidgetTester tester) async {
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

      final fut = expectLater(wallet.fieldUpdatesStream, emits(null));
      await wallet.refresh();
      await fut;

      expect(wallet, isNotNull);
      expect(wallet.address, address);
      expect(wallet.publicKey, publicKey);
      expect(wallet.walletType, walletType);
      expect(wallet.workchain, 0);
    });

    testWidgets(
      'subscribing new instance after disposing old one',
      (WidgetTester tester) async {
        await tester.pumpAndSettleWithTimeout();

        for (var i = 0; i < 10; i++) {
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

          wallet.dispose();
        }
      },
    );

    testWidgets('estimateFees', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: address,
      );
      final contract = await transport.getContractState(address);
      final message = await wallet.prepareTransfer(
        contractState: contract,
        publicKey: publicKey,
        expiration: expiration,
        params: [
          TonWalletTransferParams(
            destination: stEverContractVault,
            amount: BigInt.parse('100000000'),
            bounce: false,
          ),
        ],
      );

      final signedMessage = await message.signFake();
      final fees = await wallet.estimateFees(signedMessage: signedMessage);

      expect(fees, isNotNull);
      expect(fees, isNot(BigInt.zero));
    });

    testWidgets('estimate deployment fees', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.subscribe(
        transport: transport,
        workchainId: workchainId,
        publicKey: const PublicKey(
          publicKey:
              '6902c9935554195529d92d08a0fe3705b4e1e65ea880caa88ac0e5f47a85017d',
        ),
        walletType: const WalletType.multisig(MultisigType.multisig2_1),
      );
      final message = await wallet.prepareDeploy(expiration: expiration);
      final signedMessage = await message.signFake();
      final fees = await wallet.estimateFees(
        signedMessage: signedMessage,
        executionOptions: TransactionExecutionOptions(
          disableSignatureCheck: true,
          overrideBalance: BigInt.parse('100000000000'),
        ),
      );

      expect(fees, isNotNull);
      expect(fees, isNot(BigInt.zero));
    });

    testWidgets('make state init', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.subscribe(
        transport: transport,
        workchainId: workchainId,
        publicKey: publicKey,
        walletType: walletType,
      );
      final stateInit = await wallet.makeStateInit();

      expect(stateInit, isNotEmpty);
    });
  });
}
