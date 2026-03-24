import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:integration_test/integration_test.dart';

import '../test_helpers.dart';
import '../timeout_utils.dart';
import 'test_helpers.dart';

class MockedStorageMethods {
  final data = <String, String>{};

  Future<String?> get(String key) async {
    return data[key];
  }

  Future<void> set({required String key, required String value}) async {
    data[key] = value;
  }

  void setUnchecked({required String key, required String value}) {
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

  const expiration = Expiration.timeout(60);

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

    final connection = ProtoConnection.create(
      client: TestProtoClient(),
      settings: testJrpcSettings,
      name: 'Test connection',
      group: 'Test group',
    );
    transport = await ProtoTransport.create(protoConnection: connection);
  });

  setUpAll(() async {
    await NekotonBridge.init();
  });

  tearDown(() async {
    await transport.dispose();
  });

  group('TonWallet', () {
    testWidgets('subscribe', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getWallet(transport);

      expect(wallet, isNotNull);
      expect(wallet.address, testWalletAddr);
      expect(wallet.publicKey, testWalletPK);
      expect(wallet.walletType, testWalletType);
      expect(wallet.workchain, testWalletAddr.workchain);
    });

    testWidgets('subscribeByAddress', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: testWalletAddr,
      );

      expect(wallet, isNotNull);
      expect(wallet.address, testWalletAddr);
      expect(wallet.publicKey, testWalletPK);
      expect(wallet.walletType, testWalletType);
      expect(wallet.workchain, testWalletAddr.workchain);
    });

    testWidgets('subscribeByExistingWallet', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await TonWallet.subscribeByExistingWallet(
        transport: transport,
        existingWallet: ExistingWalletInfo(
          address: testWalletAddr,
          publicKey: testWalletPK,
          walletType: testWalletType,
          contractState: testWalletContractState,
        ),
      );

      expect(wallet, isNotNull);
      expect(wallet.address, testWalletAddr);
      expect(wallet.publicKey, testWalletPK);
      expect(wallet.walletType, testWalletType);
      expect(wallet.workchain, testWalletAddr.workchain);
    });

    testWidgets('prepareTransfer', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getWallet(transport);

      final message = await wallet.prepareTransfer(
        contractState: testWalletRawContractState,
        publicKey: testWalletPK,
        expiration: expiration,
        params: [
          TonWalletTransferParams(
            destination: testTokenRootAddr,
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

      final storage = Storage.create(
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

      final wallet = await getWallet(transport);
      final message = await wallet.prepareTransfer(
        contractState: testWalletRawContractState,
        publicKey: testWalletPK,
        expiration: expiration,
        params: [
          TonWalletTransferParams(
            destination: testTokenRootAddr,
            amount: BigInt.parse('100000000'),
            bounce: false,
          ),
        ],
      );
      await message.refreshTimeout();

      final signature = await keystore.sign(
        message: message.message,
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
        signatureContext: const SignatureContext(
          globalId: 0,
          signatureType: SignatureType.signatureId,
        ),
      );

      final signedMessage = await message.sign(signature: signature);
      expect(signedMessage, isNotNull);
      expect(signedMessage.expireAt, message.expireAt);
      expect(signedMessage.hash.length, 64);
    });

    testWidgets('prepareDeploy', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getWallet(transport);

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
        address: testWalletAddr,
      );

      expect(wallet.address, testWalletAddr);
      expect(wallet.publicKey, testWalletPK);
      expect(wallet.walletType, testWalletType);
      expect(wallet.contractState.balance, isNot(BigInt.parse('0')));
      expect(wallet.contractState.isDeployed, isTrue);
    });

    testWidgets('getWalletCustodians', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final custodians1 = await TonWallet.getWalletCustodians(
        transport: transport,
        address: testWalletAddr,
      );
      final custodians2 = await TonWallet.getWalletCustodians(
        transport: transport,
        address: testWalletMsAddr,
      );

      /// For not multisig wallet custodians contains public key of wallet
      expect(custodians1, [testWalletPK]);
      expect(custodians2.length, 2);
    });

    testWidgets('refresh', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getWallet(transport);

      expect(wallet, isNotNull);
      expect(wallet.address, testWalletAddr);
      expect(wallet.publicKey, testWalletPK);
      expect(wallet.walletType, testWalletType);
      expect(wallet.workchain, 0);

      final fut = expectLater(wallet.fieldUpdatesStream, emits(null));
      await wallet.refresh();
      await fut;

      expect(wallet, isNotNull);
      expect(wallet.address, testWalletAddr);
      expect(wallet.publicKey, testWalletPK);
      expect(wallet.walletType, testWalletType);
      expect(wallet.workchain, 0);
    });

    testWidgets('subscribing new instance after disposing old one', (
      WidgetTester tester,
    ) async {
      await tester.pumpAndSettleWithTimeout();

      for (var i = 0; i < 10; i++) {
        final wallet = await getWallet(transport);

        expect(wallet, isNotNull);
        expect(wallet.address, testWalletAddr);
        expect(wallet.publicKey, testWalletPK);
        expect(wallet.walletType, testWalletType);
        expect(wallet.workchain, 0);

        wallet.dispose();
      }
    });

    testWidgets('estimateFees', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getWallet(transport);

      final message = await wallet.prepareTransfer(
        contractState: testWalletRawContractState,
        publicKey: testWalletPK,
        expiration: expiration,
        params: [
          TonWalletTransferParams(
            destination: testTokenRootAddr,
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
        workchainId: 0,
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

      final wallet = await getWallet(transport);
      final stateInit = await wallet.makeStateInit();

      expect(stateInit, isNotEmpty);
    });

    testWidgets('refreshTimeout', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final wallet = await getWallet(transport);

      final message = await wallet.prepareTransfer(
        contractState: testWalletRawContractState,
        publicKey: testWalletPK,
        expiration: expiration,
        params: [
          TonWalletTransferParams(
            destination: testTokenRootAddr,
            amount: BigInt.parse('100000000'),
            bounce: false,
          ),
        ],
      );

      final expireAt = message.expireAt;
      final hash = message.hash;

      await Future<void>.delayed(const Duration(seconds: 1));
      await message.refreshTimeout();

      expect(expireAt.isBefore(message.expireAt), isTrue);
      expect(hash, isNot(message.hash));
    });
  });
}
