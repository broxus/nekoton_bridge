import 'dart:typed_data';

import 'package:flutter/cupertino.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:integration_test/integration_test.dart';

import '../timeout_utils.dart';
import 'contract_abi.dart';

class HttpClient implements JrpcConnectionHttpClient {
  @override
  Future<String> post({
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

  @override
  void dispose() {}
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const name = 'Mainnet (JRPC)';
  const networkGroup = 'mainnet';
  const endpoint = 'https://jrpc.everwallet.net/rpc';

  /// System account address
  const accountAddress = Address(
      address:
          '-1:0000000000000000000000000000000000000000000000000000000000000000');
  const accountTransaction =
      'd0a278d82e699a63adeaede7e602ff6da8168c333ceb4f2344f42cb739c28940';

  const jrpcSettings = JrpcNetworkSettings(endpoint: endpoint);

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
  });

  setUpAll(() async {
    await NekotonBridge.init();
  });

  // TODO(nesquikm): it's not clear which test is causing flaky behavior
  group('JrpcTransport', () {
    testWidgets('Create JrpcTransport', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      expect(transport.transport, isNotNull);
    });

    testWidgets('getSignatureId ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final signature = await transport.getSignatureId();

      expect(signature, isNull);
    });

    testWidgets('getSignatureId venom ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      const venomEndpoint = 'https://jrpc.venom.foundation';

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: const JrpcNetworkSettings(endpoint: venomEndpoint),
        name: 'Testnet Venom',
        group: 'testnet',
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final signature = await transport.getSignatureId();

      expect(signature, 1);
    });

    testWidgets('getTransactions ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final transactions = await transport.getTransactions(
        address: accountAddress,
        count: 1,
      );

      expect(transactions.transactions.length, 1);
    });

    testWidgets('getTransaction ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final transaction = await transport.getTransaction(accountTransaction);

      expect(transaction, isNotNull);
      expect(transaction!.id.hash, accountTransaction);
      expect(transaction.aborted, false);
      expect(transaction.inMessage.value, BigInt.parse('100000000'));
      expect(transaction.outMessages.length, 0);
    });

    testWidgets('getDstTransaction', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      const hash =
          '248ddcef0742827eaa2c25eeb1daa3c94c61dc286c6066f4e7508dcbeb4fa038';
      const childHash =
          '1e5592bdb0ef90036be2456cdac36481ab9cb4e2699c0f51036e282c4a798d63';
      final raw = await transport.getDstTransaction(hash);
      final transaction = raw!.data;

      expect(transaction, isNotNull);
      expect(raw.hash, hash);
      expect(transaction.id.hash, childHash);
      expect(transaction.aborted, false);
      expect(transaction.inMessage.value, BigInt.parse('910000000'));
      expect(transaction.outMessages.length, 1);
    });

    testWidgets('multiple calls ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      expect(
        await transport.getTransaction(accountTransaction),
        isNotNull,
      );
      expect(
        await transport.getTransaction(
            'f90074116294f0a4295d7ab368af8a1cc75654aad557d3ffd6edb7e8b2020c39'),
        isNotNull,
      );
      expect(
        await transport.getTransaction(
            '74773423c867ce433d39612f8c14c49e835500263ced3e045ca560c4383ea6fc'),
        isNotNull,
      );
      expect(
        await transport.getTransaction(
            '5c229b34601836743083acf9fd87f164039b75ac7b513b756a06da0e7051fffd'),
        isNotNull,
      );
    });

    testWidgets('getContractState ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final state = await transport.getContractState(accountAddress);

      expect(state, isNotNull);
      expect(
        switch (state) {
          RawContractStateExists(:final data) => data,
          RawContractStateNotExists() => null,
        },
        isNotNull,
      );
    });

    testWidgets('getFullContractState ', (
      WidgetTester tester,
    ) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final state = await transport.getFullContractState(accountAddress);

      expect(state, isNotNull);
      expect(state!.boc.isNotEmpty, isTrue);
      expect(state.isDeployed, true);
    });

    testWidgets('getContractFields', (
      WidgetTester tester,
    ) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);

      final (fields, state) = await transport.getContractFields(
        address: const Address(
          address:
              '0:675a6d63f27e3f24d41d286043a9286b2e3eb6b84fa4c3308cc2833ef6f54d68',
        ),
        contractAbi: contractAbi,
      );

      expect(fields, isNotNull);
      expect(fields!.length, 35);
      expect(state, isNotNull);
    });

    testWidgets('getNetworkId ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);
      final id = await transport.getNetworkId();
      expect(id, 42);
    });

    testWidgets('getNetworkId venom ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      const venomEndpoint = 'https://jrpc.venom.foundation';

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: const JrpcNetworkSettings(endpoint: venomEndpoint),
        name: 'Testnet Venom',
        group: 'testnet',
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);
      final id = await transport.getNetworkId();
      expect(id, 1);
    });

    testWidgets('getBlockchainConfig ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);
      final config = await transport.getBlockchainConfig();

      expect(config.config, isNotEmpty);
      expect(config.globalId, 42);
      expect(config.globalVersion, 32);
    });

    testWidgets('simulateTransactionTree ', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);
      const address = Address(
        address:
            '0:f9f575258120bff21afd8c798a5c9e9a2ef0b251e11d9c85fbf43bec968a57c6',
      );
      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: address,
      );
      final message = await wallet.prepareTransfer(
        contractState: await transport.getContractState(address),
        publicKey: const PublicKey(
            publicKey:
                '6c2f9514c1c0f2ec54cffe1ac2ba0e85268e76442c14205581ebc808fe7ee52c'),
        expiration: const Expiration.timeout(60),
        params: [
          TonWalletTransferParams(
            destination: const Address(
                address:
                    '-1:06eec9c3a6f122c29697d27ae987e4b911d4dadc937e23c7aa58bbf1e484b20f'),
            amount: BigInt.parse('1000000000'),
            bounce: false,
          ),
        ],
      );
      final signedMessage = await message.signFake();
      final errors = await transport.simulateTransactionTree(
        signedMessage: signedMessage,
        ignoredComputePhaseCodes: Int32List.fromList([0, 1, 60, 100]),
        ignoredActionPhaseCodes: Int32List.fromList([0, 1]),
      );

      expect(errors, isNotNull);
      expect(errors, isNotEmpty);
    });

    testWidgets('getFeeFactors', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: jrpcSettings,
        name: name,
        group: networkGroup,
      );
      final transport = await JrpcTransport.create(jrpcConnection: connection);
      final feeFactors = await transport.getFeeFactors(isMasterchain: true);

      expect(feeFactors, isNotNull);
      expect(feeFactors.storageFeeFactor, isNotNull);
      expect(feeFactors.gasFeeFactor, isNotNull);

      expect(feeFactors.storageFeeFactor, greaterThan(0));
      expect(feeFactors.gasFeeFactor, greaterThan(0));
    });
  });

  group('JrpcTransport(TON)', () {
    late JrpcTransport transport;

    setUp(() async {
      final connection = JrpcConnection.create(
        client: HttpClient(),
        settings: const JrpcNetworkSettings(
          endpoint: 'https://jrpc-ton.broxus.com',
        ),
        name: 'TON',
        group: 'ton',
      );
      transport = await JrpcTransport.create(jrpcConnection: connection);
    });

    tearDown(() async {
      await transport.dispose();
    });

    testWidgets('simulateTransactionTree (WalletV4R2)',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      const from = Address(
          address:
              '0:453163ef9b6f68e7c815a77a8d013bd791bb696e6fa4a0de0eb6df19cc0e373b');
      const pk = PublicKey(
          publicKey:
              '1b2267c29f37b05470bfa593ed1f03c1b5f682bc6282f4896494b5f4c8fe66c8');
      const to = Address(
        address:
            '0:f9f575258120bff21afd8c798a5c9e9a2ef0b251e11d9c85fbf43bec968a57c6',
      );
      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: from,
      );
      final message = await wallet.prepareTransfer(
        contractState: await transport.getContractState(from),
        publicKey: pk,
        expiration: const Expiration.timeout(60),
        params: [
          TonWalletTransferParams(
            destination: to,
            amount: BigInt.parse('1000'),
            bounce: false,
          ),
        ],
      );
      final signedMessage = await message.signFake();
      final errors = await transport.simulateTransactionTree(
        signedMessage: signedMessage,
        ignoredComputePhaseCodes: Int32List.fromList([0, 1, 60, 100]),
        ignoredActionPhaseCodes: Int32List.fromList([0, 1]),
      );

      expect(errors, isNotNull);
      expect(errors, isEmpty);
    });

    testWidgets('simulateTransactionTree (jetton: usdt)',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      const owner = Address(
          address:
              '0:6ca35273892588b4c5f4ae898dc1983eec9662dffebeacdbe82103a1d1dcac60');
      const usdtTokenRoot = Address(
          address:
              '0:b113a994b5024a16719f69139328eb759596c38a25f59028b146fecdc3621dfe');

      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: owner,
      );
      final jettonWallet = await JettonWallet.subscribe(
        transport: transport,
        owner: owner,
        rootTokenContract: usdtTokenRoot,
      );

      final internalMessage = await jettonWallet.prepareTransfer(
        destination: usdtTokenRoot,
        amount: BigInt.parse('10000'),
        callbackValue: BigInt.one,
        remainingGasTo: owner,
      );
      final message = await wallet.prepareTransfer(
        contractState: await transport.getContractState(owner),
        publicKey: const PublicKey(
            publicKey:
                '9107a65271437e1a982bb98404bd9a82c434f31ee30c621b6596702bb59bf0a0'),
        expiration: const Expiration.timeout(60),
        params: [
          TonWalletTransferParams(
            destination: internalMessage.destination,
            amount: internalMessage.amount,
            bounce: internalMessage.bounce,
            body: internalMessage.body,
          ),
        ],
      );

      final signedMessage = await message.signFake();
      final errors = await transport.simulateTransactionTree(
        signedMessage: signedMessage,
        ignoredComputePhaseCodes: Int32List.fromList([0, 1, 60, 100]),
        ignoredActionPhaseCodes: Int32List.fromList([0, 1]),
      );

      expect(errors, isNotNull);
      expect(errors, isEmpty);

      jettonWallet.dispose();
    });

    testWidgets('simulateTransactionTree (jetton: mintless points)',
        (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      const owner = Address(
          address:
              '0:6ca35273892588b4c5f4ae898dc1983eec9662dffebeacdbe82103a1d1dcac60');
      const pointsTokenRoot = Address(
          address:
              '0:fa67d0c7739331fbc3c8f08e018c65f47763616a969100ad760a0b2dc1e36832');

      final wallet = await TonWallet.subscribeByAddress(
        transport: transport,
        address: owner,
      );
      final jettonWallet = await JettonWallet.subscribe(
        transport: transport,
        owner: owner,
        rootTokenContract: pointsTokenRoot,
      );

      final internalMessage = await jettonWallet.prepareTransfer(
        destination: pointsTokenRoot,
        amount: BigInt.parse('10000'),
        callbackValue: BigInt.one,
        remainingGasTo: owner,
      );
      final message = await wallet.prepareTransfer(
        contractState: await transport.getContractState(owner),
        publicKey: const PublicKey(
            publicKey:
                '9107a65271437e1a982bb98404bd9a82c434f31ee30c621b6596702bb59bf0a0'),
        expiration: const Expiration.timeout(60),
        params: [
          TonWalletTransferParams(
            destination: internalMessage.destination,
            amount: internalMessage.amount,
            bounce: internalMessage.bounce,
            body: internalMessage.body,
          ),
        ],
      );

      final signedMessage = await message.signFake();
      final errors = await transport.simulateTransactionTree(
        signedMessage: signedMessage,
        ignoredComputePhaseCodes: Int32List.fromList([0, 1, 60, 100]),
        ignoredActionPhaseCodes: Int32List.fromList([0, 1]),
      );

      expect(errors, isNotNull);
      expect(errors, isEmpty);

      jettonWallet.dispose();
    });
  });
}
