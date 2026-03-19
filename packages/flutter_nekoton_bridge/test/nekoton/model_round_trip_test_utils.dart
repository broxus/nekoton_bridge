import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

class _MockBridge extends Mock implements NekotonBridgeApi {}

void setUpRoundTripBridgeMocks() {
  final bridge = _MockBridge();
  NekotonBridge.initMock(api: bridge);

  when(
    () =>
        bridge.crateApiMergedNtValidateAddress(address: any(named: 'address')),
  ).thenReturn(false);
}

void testMapRoundTrip<T>({
  required String name,
  required T value,
  required Map<String, dynamic> Function(T value) toJson,
  required T Function(Map<String, dynamic> json) fromJson,
  void Function(Map<String, dynamic> json)? validateJson,
}) {
  test(name, () {
    // Arrange
    final json = toJson(value);

    // Act
    final decoded = fromJson(json);

    // Assert
    validateJson?.call(json);
    expect(decoded, value);
  });
}

void testScalarRoundTrip<T>({
  required String name,
  required T value,
  required Object? Function(T value) toJson,
  required T Function(Object? json) fromJson,
  void Function(Object? json)? validateJson,
}) {
  test(name, () {
    // Arrange
    final json = toJson(value);

    // Act
    final decoded = fromJson(json);

    // Assert
    validateJson?.call(json);
    expect(decoded, value);
  });
}

String repeated(String char, [int length = 64]) =>
    List.filled(length, char).join();

Address rawAddress(String char, [int workchain = 0]) =>
    Address(address: '$workchain:${repeated(char)}');

PublicKey rawPublicKey(String char) => PublicKey(publicKey: repeated(char));

DateTime sampleDateTime([int seconds = 1700000000]) =>
    DateTime.fromMillisecondsSinceEpoch(seconds * 1000);

GenTimings genTimingsFixture() => const GenTimings(genLt: '1', genUtime: 2);

LastTransactionId lastTransactionIdFixture() =>
    const LastTransactionId(isExact: true, lt: '3', hash: 'hash');

Message messageFixture({
  String hashChar = 'a',
  String srcChar = 'b',
  String dstChar = 'c',
}) => Message(
  hash: repeated(hashChar),
  src: rawAddress(srcChar),
  dst: rawAddress(dstChar),
  value: BigInt.from(100),
  bounce: true,
  bounced: false,
  body: 'body',
  bodyHash: repeated('d'),
);

TransactionId transactionIdFixture({String lt = '10', String hashChar = 'e'}) =>
    TransactionId(lt: lt, hash: repeated(hashChar));

Transaction transactionFixture({String hashChar = 'f'}) => Transaction(
  id: transactionIdFixture(hashChar: hashChar),
  prevTransactionId: transactionIdFixture(lt: '9', hashChar: 'g'),
  createdAt: sampleDateTime(),
  aborted: false,
  exitCode: 0,
  resultCode: 1,
  origStatus: AccountStatus.active,
  endStatus: AccountStatus.frozen,
  totalFees: BigInt.from(5),
  inMessage: messageFixture(hashChar: 'h', srcChar: 'i', dstChar: 'j'),
  outMessages: [messageFixture(hashChar: 'k', srcChar: 'l', dstChar: 'm')],
  boc: 'Ym9j',
);

PendingTransaction pendingTransactionFixture() => PendingTransaction(
  messageHash: repeated('n'),
  src: rawAddress('o'),
  expireAt: sampleDateTime(1700000100),
);

TransactionsBatchInfo transactionsBatchInfoFixture() =>
    const TransactionsBatchInfo(
      minLt: '1',
      maxLt: '2',
      batchType: TransactionsBatchType.oldTransactions,
    );

ContractState contractStateFixture() => ContractState(
  balance: BigInt.from(200),
  genTimings: genTimingsFixture(),
  lastTransactionId: lastTransactionIdFixture(),
  isDeployed: true,
  codeHash: repeated('p'),
);

ExistingContract existingContractFixture() => ExistingContract(
  account: rawAddress('q').address,
  timings: genTimingsFixture(),
  lastTransactionId: lastTransactionIdFixture(),
);

TokenIncomingTransfer tokenIncomingTransferFixture() => TokenIncomingTransfer(
  tokens: BigInt.from(300),
  senderAddress: rawAddress('r'),
);

TransferRecipient transferRecipientOwnerFixture() =>
    TransferRecipient.ownerWallet(rawAddress('s'));

TransferRecipient transferRecipientTokenFixture() =>
    TransferRecipient.tokenWallet(rawAddress('t'));

TokenOutgoingTransfer tokenOutgoingTransferFixture() => TokenOutgoingTransfer(
  to: transferRecipientOwnerFixture(),
  tokens: BigInt.from(400),
);

TokenSwapBack tokenSwapBackFixture() => TokenSwapBack(
  tokens: BigInt.from(500),
  callbackAddress: rawAddress('u'),
  callbackPayload: 'callback-payload',
);

OnBalanceChangedPayload onBalanceChangedPayloadFixture() =>
    OnBalanceChangedPayload(balance: BigInt.from(600));

Symbol symbolFixture() => Symbol(
  name: 'TT',
  fullName: 'Test Token',
  decimals: 9,
  rootTokenContract: rawAddress('v'),
);

TokenWalletDetails tokenWalletDetailsFixture() => TokenWalletDetails(
  rootAddress: rawAddress('w'),
  ownerAddress: rawAddress('x'),
  balance: BigInt.from(700),
);

RootTokenContractDetails rootTokenContractDetailsFixture() =>
    RootTokenContractDetails(
      version: TokenWalletVersion.tip3,
      name: 'Test Token',
      symbol: 'TT',
      decimals: 9,
      ownerAddress: rawAddress('y'),
      totalSupply: '9000',
    );

JettonMetaData jettonMetaDataFixture() => const JettonMetaData(
  name: 'Jetton',
  uri: 'https://example.com/jetton.json',
  symbol: 'JTN',
  description: 'Test jetton',
  image: 'https://example.com/image.png',
  decimals: 9,
);

JettonIncomingTransfer jettonIncomingTransferFixture() =>
    JettonIncomingTransfer(tokens: BigInt.from(800), from: rawAddress('a'));

JettonOutgoingTransfer jettonOutgoingTransferFixture() =>
    JettonOutgoingTransfer(tokens: BigInt.from(810), to: rawAddress('b'));

JettonBurnNotification jettonBurnNotificationFixture() =>
    JettonBurnNotification(tokens: BigInt.from(820), from: rawAddress('c'));

JettonWalletData jettonWalletDataFixture() => JettonWalletData(
  rootAddress: rawAddress('d'),
  ownerAddress: rawAddress('e'),
  balance: BigInt.from(830),
);

JettonRootData jettonRootDataFixture() => JettonRootData(
  mintable: true,
  adminAddress: rawAddress('f'),
  content: jettonMetaDataFixture(),
);

DePoolOnRoundCompleteNotification dePoolOnRoundCompleteFixture() =>
    DePoolOnRoundCompleteNotification(
      roundId: '42',
      reward: BigInt.from(1),
      ordinaryStake: BigInt.from(2),
      vestingStake: BigInt.from(3),
      lockStake: BigInt.from(4),
      reinvest: true,
      reason: 5,
    );

DePoolReceiveAnswerNotification dePoolReceiveAnswerFixture() =>
    const DePoolReceiveAnswerNotification(errorCode: 1, comment: 'comment');

TokenWalletDeployedNotification tokenWalletDeployedFixture() =>
    TokenWalletDeployedNotification(rootTokenContract: rawAddress('g'));

TonWalletDetails tonWalletDetailsFixture() => TonWalletDetails(
  requiresSeparateDeploy: false,
  minAmount: BigInt.from(900),
  supportsPayload: true,
  supportsMultipleOwners: true,
  expirationTime: 60,
  requiredConfirmations: 2,
);

TonWalletTransferParams tonWalletTransferParamsFixture() =>
    TonWalletTransferParams(
      destination: rawAddress('h'),
      amount: BigInt.from(910),
      bounce: true,
      body: 'body',
      stateInit: 'state-init',
    );

MultisigSendTransaction multisigSendTransactionFixture() =>
    MultisigSendTransaction(
      dest: rawAddress('i'),
      value: BigInt.from(920),
      bounce: true,
      flags: 3,
      payload: 'payload',
    );

MultisigSubmitTransaction multisigSubmitTransactionFixture() =>
    MultisigSubmitTransaction(
      custodian: rawPublicKey('j'),
      dest: rawAddress('k'),
      value: BigInt.from(930),
      bounce: false,
      allBalance: true,
      payload: 'payload',
      transId: '100',
    );

MultisigConfirmTransaction multisigConfirmTransactionFixture() =>
    MultisigConfirmTransaction(
      custodian: rawPublicKey('l'),
      transactionId: '101',
    );

MultisigPendingTransaction multisigPendingTransactionFixture() =>
    MultisigPendingTransaction(
      id: '102',
      confirmations: [rawPublicKey('m')],
      signsRequired: 2,
      signsReceived: 1,
      creator: rawPublicKey('n'),
      index: 0,
      dest: rawAddress('o'),
      value: BigInt.from(940),
      sendFlags: 7,
      payload: 'payload',
      bounce: true,
    );

KnownPayload knownPayloadCommentFixture() =>
    const KnownPayload.comment('comment');

WalletInteractionMethod walletInteractionMethodFixture() =>
    WalletInteractionMethod.multisig(
      MultisigTransaction.send(multisigSendTransactionFixture()),
    );

WalletInteractionInfo walletInteractionInfoFixture() => WalletInteractionInfo(
  recipient: rawAddress('p'),
  knownPayload: knownPayloadCommentFixture(),
  method: walletInteractionMethodFixture(),
);

TransactionAdditionalInfo transactionAdditionalInfoCommentFixture() =>
    const TransactionAdditionalInfo.comment('comment');

ExistingWalletInfo existingWalletInfoFixture() => ExistingWalletInfo(
  address: rawAddress('q'),
  publicKey: rawPublicKey('r'),
  walletType: const WalletType.walletV5R1(),
  contractState: contractStateFixture(),
);

TonWalletTransactionWithData tonWalletTransactionWithDataFixture() =>
    TonWalletTransactionWithData(
      transaction: transactionFixture(hashChar: 's'),
      data: transactionAdditionalInfoCommentFixture(),
    );

GqlNetworkSettings gqlNetworkSettingsFixture() => const GqlNetworkSettings(
  endpoints: ['https://gql.example.com'],
  latencyDetectionInterval: 1000,
  maxLatency: 2000,
  endpointSelectionRetryCount: 3,
  local: false,
);

JrpcNetworkSettings jrpcNetworkSettingsFixture() =>
    const JrpcNetworkSettings(endpoint: 'https://jrpc.example.com');

ProtoNetworkSettings protoNetworkSettingsFixture() =>
    const ProtoNetworkSettings(endpoint: 'https://proto.example.com');

LedgerSignatureContext ledgerSignatureContextFixture() =>
    const LedgerSignatureContext(
      decimals: 9,
      asset: 'TT',
      workchainId: 0,
      address: '0:ledger',
    );
