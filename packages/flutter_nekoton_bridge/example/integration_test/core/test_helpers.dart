import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Tycho testnet
const testJrpcSettings = ProtoNetworkSettings(
  endpoint: 'https://rpc-testnet.tychoprotocol.com/',
);

const testWalletMsAddr = Address(
  address: '0:7b2e0385dfac858624b12f3182531dbd4369142a5ac6de973706a55e76104f7e',
);
const testWalletAddr = Address(
  address: '0:abf7594e411ef39cc9f9dae3e6ec1143d945fb2c834829a9a7d22f33c30260de',
);
const testWalletPK = PublicKey(
  publicKey: '7e60ec0166cf0a24db5063fd844a1d4bf8167fd991f04a42d76716dac585a93e',
);
const testWalletType = WalletType.everWallet();
const testWalletBoc =
    'te6ccgECCAEAAWIAAnCAFX7rKcgj3nOZPztcfN2CKHsov2WQaQU1NPpF5nhgTBvEIQSChpvSKmAAAPSFPcK8GoEL3uXRpgIBAFB+YOwBZs8KJNtQY/2ESh1L+BZ/2ZHwSkLXZxbaxYWpPgAAAZ0Kz1PWART/APSkE/S88sgLAwIBIAcEAubycdcBAcAA8nqDCNcY7UTQgwfXAdcLP8j4KM8WI88WyfkAA3HXAQHDAJqDB9cBURO68uBk3oBA1wGAINcBgCDXAVQWdfkQ8qj4I7vyeWa++COBBwiggQPoqFIgvLHydAIgghBM7mRsuuMPAcjL/8s/ye1UBgUAPoIQFp4+EbqOEfgAApMg10qXeNcB1AL7AOjRkzLyPOIAmDAC10zQ+kCDBtcBcdcBeNcB10z4AHCAEASqAhSxyMsFUAXPFlAD+gLLaSLQIc8xIddJoIQJuZgzcAHLAFjPFpcwcQHLABLM4skB+wAABNIw';
final testWalletContractState = ContractState(
  balance: BigInt.from(8988248995),
  genTimings: const GenTimings(genLt: '33607249000004', genUtime: 1774003226),
  lastTransactionId: const LastTransactionId(
    isExact: true,
    lt: '33606638000001',
    hash: 'bfc82cd44e78a0ef3834e2f6896fdb8efddf5a67a700986ed24d1bb27ba68058',
  ),
  isDeployed: true,
  codeHash: '3ba6528ab2694c118180aa3bd10dd19ff400b909ab4dcf58fc69925b2c7b12a6',
);
final testWalletRawContractState = RawContractState.exists(
  ExistingContract(
    account: testWalletBoc,
    timings: testWalletContractState.genTimings,
    lastTransactionId: testWalletContractState.lastTransactionId!,
  ),
);
final testWalletFullContractState = FullContractState(
  balance: testWalletContractState.balance,
  genTimings: testWalletContractState.genTimings,
  isDeployed: testWalletContractState.isDeployed,
  boc: testWalletBoc,
);

/// Tycho testnet USDT (jetton compatible)
const testTokenRootAddr = Address(
  address: '0:90dd68d82e573223430fefcbf07dfe546f388c458fbd3e05a885065410f0c808',
);
const testTokenRootOwner = Address(
  address: '0:387caecd8624b1ef095cd68595f0370fc6ed820ccd55913a4c7c736b800e2b3e',
);
const testTokenWalletAddr = Address(
  address: '0:5193573ea17e2d17ae3e7f8553135eba4a63e1720465406d45cdb84cbb6df361',
);

Future<TonWallet> getWallet(Transport transport) => TonWallet.subscribe(
  transport: transport,
  workchainId: testWalletAddr.workchain,
  publicKey: testWalletPK,
  walletType: testWalletType,
);

Future<TokenWallet> getTokenWallet(
  Transport transport, {
  bool preloadTransactions = false,
}) => TokenWallet.subscribe(
  transport: transport,
  owner: testWalletAddr,
  rootTokenContract: testTokenRootAddr,
  preloadTransactions: preloadTransactions,
);
