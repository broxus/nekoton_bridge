import 'dart:convert';
import 'dart:typed_data';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:http/http.dart' as http;
import 'package:integration_test/integration_test.dart';

import 'timeout_utils.dart';

class HttpClient implements ProtoConnectionHttpClient {
  @override
  Future<Uint8List> post({
    required String endpoint,
    required Map<String, String> headers,
    required Uint8List dataBytes,
  }) async {
    final response = await http.post(
      Uri.parse(endpoint),
      headers: headers,
      body: dataBytes,
    );

    return response.bodyBytes;
  }

  @override
  void dispose() {}
}

void main() {
  IntegrationTestWidgetsFlutterBinding.ensureInitialized();

  const abi =
      '{"ABI version":2,"version":"2.2","header":["pubkey","time","expire"],"functions":[{"name":"onNftTransfer","inputs":[{"name":"id","type":"uint256"},{"name":"oldOwner","type":"address"},{"name":"newOwner","type":"address"},{"name":"oldManager","type":"address"},{"name":"newManager","type":"address"},{"name":"collection","type":"address"},{"name":"gasReceiver","type":"address"},{"name":"payload","type":"cell"}],"outputs":[]}],"data":[],"events":[],"fields":[]}';
  const json =
      '{"id":{"lt":"53524925000013","hash":"8d4defdcf9a86fb2f26ee0dc43aed3b763d5af0a80c31b0ceb3137d5682c97b1"},"prevTransactionId":{"lt":"53524902000013","hash":"649425ce41032ff6a7a96fb79b714c734820a33f6745c57e92a3e5e506daedbd"},"createdAt":1726671599,"aborted":true,"exitCode":60,"origStatus":"active","endStatus":"active","totalFees":"1568073","inMessage":{"hash":"0fab62d974a7c6197caf56380d2e60f99ec8249098a112baa0752051bc4ccbd6","src":"0:5d81e08f05d2fc62d74778e300bb78296c548bc4fabf670e94b6e57946fd6fe5","dst":"0:deaa615aad3828255ce6c4c5495a0590740f2ecdc187cfb434da8e4552cf8f3f","value":"100000000","bounce":false,"bounced":false,"body":"te6ccgECBwEAAQQAAYt8aOG5AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAKAHz6upLAkF/5DX7GPMUuT00XeFko8I7OQv36HfZLRSvjQAQFDgBvVTCtVpwUEq5zYmKkrQLIOgeXZuDD59oabUciqWfHn8AIBQ4Ab1UwrVacFBKuc2JipK0CyDoHl2bgw+faGm1HIqlnx5/ADAUOAG9VMK1WnBQSrnNiYqStAsg6B5dm4MPn2hptRyKpZ8efwBAFDgAINVCLwfujEyZHtv72L2+Nnxw/ZUXm2kEONh+mfMyPTMAUBQ4AfPq6ksCQX/kNfsY8xS5PTRd4WSjwjs5C/fod9ktFK+NAGAAA=","bodyHash":"400e7c804772a9b79ec50b6e9bccf9c50899dad55fb92b72ca8aa499ec84b18e"},"outMessages":[]}';

  const raw = Address(
    address:
        '0:959e8440732a41bdf5612a1519338bdf270969a95d02415019acbbeeb6b1249a',
  );
  const withBounce = Address(
    address: 'EQCVnoRAcypBvfVhKhUZM4vfJwlpqV0CQVAZrLvutrEkmrZO',
  );

  const tokenTransferPayload =
      'te6ccgEBAwEAcAABi3PiIUMAAAAAAAAAAAAAAAA7msoAgA2oWheJTK0CQdURfshdtsp65Pn3prDRiPDuplvCUc4+QAAAAAAAAAAAAAAAAPf0kDABAUOAGyWSMMDEPWpy8q/cfoTQwcWEOvqIIMTRC+a7cRSNUPhIAgAA';
  const jettonTransferPayload =
      'te6ccgEBAQEAVQAApg+KfqUAAAGV62nSEiJxCAFiJ1MpagSULOM+0icmUdbrKy2HFEvrIFFijf2bhsQ7/QAbKNSc4kliLTF9K6JjcGYPuyWYt/+vqzb6CEDodHcrGAIC';

  setUpAll(() async {
    await NekotonBridge.init();
  });

  group('ABI test', () {
    testWidgets('validateCell', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      expect(validateCell('te6ccsEBAQEADAAMABQAAAAASGVsbG8hCaTc/g=='), isTrue);
      expect(validateCell('te7ccsEBAQEADAAMABQAAAAASGVsbG8hCaTc/g=='), isFalse);
    });

    testWidgets('decodeTransaction', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final decoded = await decodeTransaction(
        transaction: Transaction.fromJson(jsonDecode(json)),
        contractAbi: abi,
      );

      expect(decoded, isNotNull);
      expect(decoded!.method, 'onNftTransfer');
    });

    testWidgets('repackAddress', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final repackedRaw = repackAddress(raw);
      final repackedWithBounce = repackAddress(withBounce);

      expect(repackedRaw.address, raw.address);
      expect(repackedWithBounce.address, raw.address);
    });

    testWidgets('packAddress', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final packed = packAddress(raw);

      expect(packed.address, withBounce.address);
    });

    testWidgets('encodeComment', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      final encoded = encodeComment('test comment');

      expect(encoded, isNotNull);
      expect(encoded, isNotEmpty);
    });
  });

  testWidgets('parseKnownPayload', (WidgetTester tester) async {
    await tester.pumpAndSettleWithTimeout();

    final knownTokenTransactionPayload = parseKnownPayload(
      tokenTransferPayload,
    );
    final knownJettonTransactionPayload = parseKnownPayload(
      jettonTransferPayload,
    );
    final unknownPayload = parseKnownPayload(r'!@#$%^&*()_+invalid_base64');

    expect(unknownPayload, isNull);

    expect(knownTokenTransactionPayload, isNotNull);
    expect(switch (knownTokenTransactionPayload!) {
      KnownPayloadTokenOutgoingTransfer(data: final data) => data,
      _ => null,
    }, isNotNull);
    expect(switch (knownTokenTransactionPayload) {
      KnownPayloadTokenOutgoingTransfer(data: final data) => data.tokens,
      _ => null,
    }, BigInt.parse('1000000000'));

    expect(knownJettonTransactionPayload, isNotNull);
    expect(switch (knownJettonTransactionPayload!) {
      KnownPayloadJettonOutgoingTransfer(data: final data) => data,
      _ => null,
    }, isNotNull);
    expect(switch (knownJettonTransactionPayload) {
      KnownPayloadJettonOutgoingTransfer(data: final data) => data.tokens,
      _ => null,
    }, BigInt.parse('10000'));
  });

  testWidgets('computeTonWalletAddress', (WidgetTester tester) async {
    await tester.pumpAndSettleWithTimeout();

    final tonWalletAddress = computeTonWalletAddress(
      walletType: const WalletType.everWallet(),
      publicKey: const PublicKey(
        publicKey:
            '6c2f9514c1c0f2ec54cffe1ac2ba0e85268e76442c14205581ebc808fe7ee52c',
      ),
      workchain: 0,
    );

    expect(
      tonWalletAddress.address,
      '0:fbf531128cba1f1b24778917b1e7e4916647ffc27828f97666201b032707822b',
    );
  });

  testWidgets('getContractTypeNumber', (WidgetTester tester) async {
    await tester.pumpAndSettleWithTimeout();

    final ew = getContractTypeNumber(const WalletType.everWallet());
    final v3 = getContractTypeNumber(const WalletType.walletV3());
    final ms = getContractTypeNumber(
      const WalletType.multisig(MultisigType.multisig2_1),
    );

    expect(ew, 1);
    expect(v3, 0);
    expect(ms, 8);
  });

  testWidgets('runLocalWithLibs', (WidgetTester tester) async {
    await tester.pumpAndSettleWithTimeout();

    const testLibraryAbi =
        '{"ABI version":2,"version":"2.7","header":["time","expire"],"functions":[{"name":"testAddGetter","inputs":[{"name":"a","type":"uint256"},{"name":"b","type":"uint256"}],"outputs":[{"name":"value0","type":"uint256"}]}],"getters":[],"events":[],"fields":[]}';
    const address = Address(
      address:
          '0:84105d39805e023053cbf2b6a30e3c495b41678eec854b0fa56c9228abd5c975',
    );

    final connection = ProtoConnection.create(
      client: HttpClient(),
      settings: const ProtoNetworkSettings(
        endpoint: 'https://rpc-testnet.tychoprotocol.com',
      ),
      name: 'Tycho Testnet',
      group: 'tycho_testnet',
    );
    final transport = await ProtoTransport.create(protoConnection: connection);
    final state = await transport.getFullContractState(address);

    final result = await runLocalWithLibs(
      transport: transport,
      contractAbi: testLibraryAbi,
      methodId: 'testAddGetter',
      input: {'a': 1, 'b': 2},
      responsible: false,
      accountStuffBoc: state!.boc,
    );

    expect(result.code, 0);
    expect(result.output!['value0'], '3');
  });

  testWidgets('checkPublicKey', (WidgetTester tester) async {
    await tester.pumpAndSettleWithTimeout();

    const validPK = PublicKey(
      publicKey:
          '931db2b6fb238225ea12026338d2de84a17a7beaaffde9cc197216e2fbd86867',
    );
    const invalidPK = PublicKey(
      publicKey:
          '931db2b6fb238225ea12026338d2de84a17a7beaaffde9cc197216e2fbd8686',
    );

    expect(checkPublicKey(validPK), isTrue);
    expect(validPK.isValid, isTrue);
    expect(checkPublicKey(invalidPK), isFalse);
    expect(invalidPK.isValid, isFalse);
  });

  testWidgets('getBocHash', (WidgetTester tester) async {
    await tester.pumpAndSettleWithTimeout();

    final hash = getBocHash('te6ccgEBAgEAEQABAAEAGEhlbGxvIFdvcmxkIQ==');

    expect(
      hash,
      'e05a79df2c2718d13b40f333012e5c231b172c854194f3c79ed875024a61239e',
    );
  });

  testWidgets('packIntoCell', (WidgetTester tester) async {
    await tester.pumpAndSettleWithTimeout();

    final (tvc, hash) = packIntoCell(
      params: [const AbiParam(type: 'uint256', name: 'value0')],
      tokens: {'value0': 0},
    );

    expect(tvc, 'te6ccgEBAQEAIgAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA');
    expect(
      hash,
      '93ee6580964ac73a4808451a26eb38c90fba97dc8201ed9d28bc5f35d3b1fd82',
    );
  });

  testWidgets('unpackFromCell', (WidgetTester tester) async {
    await tester.pumpAndSettleWithTimeout();

    final tokens = unpackFromCell(
      params: [const AbiParam(type: 'uint256', name: 'value0')],
      boc: 'te6ccgEBAQEAIgAAQAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA',
      allowPartial: false,
    );

    expect(tokens.isNotEmpty, isTrue);
    expect(tokens['value0'], '0');
  });

  // Moved to integration tests due to the need to call native methods (packAddress, repackAddress)
  group('Address', () {
    const raw1 =
        '0:959e8440732a41bdf5612a1519338bdf270969a95d02415019acbbeeb6b1249a';
    const raw2 =
        '0:2ecbebcec6b163a9eb3e4c8f74d9ac52fd131173071787441d12f210885907f5';
    const bounceable1 = 'EQCVnoRAcypBvfVhKhUZM4vfJwlpqV0CQVAZrLvutrEkmrZO';
    const nonbounceable1 = 'UQCVnoRAcypBvfVhKhUZM4vfJwlpqV0CQVAZrLvutrEkmgHN';

    test('hashCode', () {
      expect(
        const Address(address: raw1).hashCode,
        const Address(address: raw1).hashCode,
      );
      expect(
        const Address(address: raw1).hashCode,
        isNot(const Address(address: raw2).hashCode),
      );
      expect(
        const Address(address: raw1).hashCode,
        const Address(address: bounceable1).hashCode,
      );
    });

    test('operator ==', () {
      expect(const Address(address: raw1), const Address(address: raw1));
      expect(const Address(address: raw1), isNot(const Address(address: raw2)));
      expect(const Address(address: raw1), const Address(address: bounceable1));
    });

    test('isValid', () {
      expect(const Address(address: raw1).isValid, isTrue);
      expect(const Address(address: bounceable1).isValid, isTrue);
      expect(const Address(address: 'abcdefg').isValid, isFalse);
    });

    test('isRaw', () {
      expect(const Address(address: raw1).isRaw, isTrue);
      expect(Address(address: raw1.toUpperCase()).isRaw, isTrue);
      expect(const Address(address: bounceable1).isRaw, isFalse);
    });

    test('isBounceable', () {
      expect(const Address(address: raw1).isBounceable, isFalse);
      expect(const Address(address: bounceable1).isBounceable, isTrue);
      expect(const Address(address: nonbounceable1).isBounceable, isFalse);
    });

    test('isNonBounceable', () {
      expect(const Address(address: raw1).isNonBounceable, isFalse);
      expect(const Address(address: bounceable1).isNonBounceable, isFalse);
      expect(const Address(address: nonbounceable1).isNonBounceable, isTrue);
    });

    test('toRaw', () {
      expect(const Address(address: raw1).toRaw(), raw1);
      expect(const Address(address: bounceable1).toRaw(), raw1);
    });

    test('toBounceable', () {
      expect(const Address(address: raw1).toBounceable(), bounceable1);
      expect(const Address(address: bounceable1).toBounceable(), bounceable1);
    });

    test('workchain', () {
      expect(const Address(address: raw1).workchain, 0);
      expect(const Address(address: bounceable1).workchain, 0);
    });

    test('isZeroState', () {
      expect(const Address(address: raw1).isZeroState, isFalse);
      expect(
        const Address(
          address:
              '-1:0000000000000000000000000000000000000000000000000000000000000000',
        ).isZeroState,
        isTrue,
      );
    });

    test('toJson works if address is invalid', () {
      var address = const Address(address: '12345');

      expect(address.isValid, false);
      expect(address.toJson(), '12345');
    });
  });

  group('BlockchainConfigParams', () {
    testWidgets('fundamental_smc_addr', (WidgetTester tester) async {
      await tester.pumpAndSettleWithTimeout();

      const paramsRoot =
          'te6ccgEC5QEAGJ0AAgEgPwEBCb////BeAgEAAwEU/wD0pBP0vPLICwQCASAHBQHzpf//dtF2/Zh2omh6AnoCegJ9AGmP64X/krdPKjqhqjqh+AfKL4NtmPBHHhLoaY/pj/0AfQB6AmkAaQBoqj5dKj5dKj5dKj5dFngGSi+G7ZjwFii+KL4ovii+KL4DqoL4Bsovg22Y8HEqOqGqOqH4B0kvg3A/xXMvg8AGAJJTBIAg9HxvpSCOOTMB1wsf+CO7lVMDvcMAkXDijiQxVVAm8BAlyPQAUlD0AFJA9AAj+gIizwsfIc8L/8ntVFUFcAHeAZJsIeKzAgFIEwgCASAOCQIBIA0KAgFYDAsAL7PgO1E0PQB9AWDB/QOb6GT+gAwkjBw4oAB/sKV7UTQ9AUgbpIwbeDQbYT/AtM/MfoAMfoAMfQFjh1TIIMH9H5vpSCeNVIC+gAwbwJQA28CQBOSbCHis+YwMYABTuYde1E0IMfbQL0AfQB9AWOFlyAIPR+b6UyIZgzIlA0bwJDE5Ew4rPmW4AgN6oBAPAEyrLO1E0PQFIG6SW3Dg0NM/MfoAMfoAMfQFgwf0Dm+hkjBw4foAMAIBahIRAL+6rtRND0BSBumjBwVHAAbVMRbwfg0G2E/wLTH9Mf+gD6APQE0gDXCgCOKVOCgwf0fm+lII4ZO1IC+gDTHzHTH9P/1wv/bwRvAlAJbwIICZJsIeKz5jI3EEYQNUQwEm8HgAIbh+1E0PQFIG6SMHDg0NcLH4AgLFFRQAPqqCMcjPhQgSzoIQzkNvZM8Ljss/z5E5Db2SyYBA+wACAcslFgIBSBgXAfXQF9Ijh8Gehrhf/2omh6AnoCegJ9AGmP64X/hGH/yZqav8qoMt7hgHFIv8oRN2GAcUkvhHARaGmP6Y+Y/QAY/QAY+gDpgBjrhQApDN7JG7/KA9nhgHFJL4RwfAADyS+D8Cgyim2eGrbkegAKegAJegAA/QFlj+X/5PaqQjAgEgHxkCASAcGgH3CH6RAHD/44dMMjPhQgSzoIQ/////s8Ljss/z5EdldCSyYBA+wDg7UTQ9AT0BFAzgwf0Zm+hjh5fBMjPhQgSzoIQ/////s8Ljss/z5EdldCSyYBA+wDh+gDRAsj0APQAEs7J7VTIz4UIE85Y+gKCEPlvcyTPC4rLP8mAQIBsABPsAAfcAvpE7UTQ9AQhbpIzf5UDw//DAOKTXwVw4ATT/9Mf0x/T/9QB0CDXSYMIvZF/lyDXSsMAwwDik18KceAB0cjPkZUxQdIkzwsfI88LHybPC/8izwv/ydBRFfkRk18IceEhgw+5k18IduAH0AaCEDuaygChBtMf1h/6APoAgHQH+9AQg0wAx1woALKoLJLmTXw5y4FE8oFGGvZNfDXPgApNfDHDgU3CDB/QOb6EgnjD6ANM/MdcL/wygUpy9kTHik18MdOBTormTXwx14CrCAPKs+AD4I4MHyFAN+gLLHxbLHxjL/xrL/0UzCPRDAsjLHxXOUAX6AlAD+gIT9ADOyR4AEMj0AM7J7VR/AgEgIiAByTtRNAC+kQD9AT0BPQE+gAg1wsfCMMAkjV/lQXD/8MA4pF/lSbAAMMA4o4VNlBUoAHI9AAU9AAS9ABY+gLOye1U4FNhgCD0Dm+hlzA2UFSgBAPjDQHI9AAT9AAS9ABY+gLOye1UgIQBY0x/TH9P/9AT6APoA9AUMoIAgBsjLHxXLHxPL//QAAfoCAfoCF/QAA0d29EMBASAjAfRFQAGAIPRmb6GO54EBQNch9AT6APoAMCDCAI5UMHAgf45IUwSDB/R8b6UgjjgzAdP/0z8x+gDXCgCUMVEzoI4fVHAZgwf0Dm+hlPoAMKCRMOKDB8hY+gJDE1C79EMIA+JQQ6BQM5JsIeKz5jAzuvK74w2SMHDiE6BAQyQA1HBTAH+OUlMGgwf0fG+lII5CMwHT/9M/MfoA1woAlDFRRKCOKVR3CKmEUVWgUhagUyyDB/QOb6GU+gAwoJEw4oMHyFj6AkMTUN30QwoE4lBUoFBEkmwh4rPmMDUDupVTILvDAJFw4vK7oKICASA8JgIBIDQnAgEgLSgCASArKQH3DWAJPgzbpNfBXDhcfgz0NcL//go+kQBw/+SW3+TvcMA4pNfBXDggCL4MyBuk18GcODQgA/4M9DTHzHTH9Mf0x8x0fgjA9csCJTyv9MfMdcLHyKhUzC5k18JcOBTMKHBPJEzkTDigBH4M9D6APoAMfoAMdMfMdFaoFIDoYCoATm0DyMsfyx8B+gLPhCD0AM+EgMnI9AAU9AAS9AAB+gLLH8v/ye1UfwH3IAi+DP5AFMBupNfB3DgIsMAjkRTJIAg9A5voY410x8x0x/T//QE+gD6APQFUki68rn4IyWggCAByMsfFssfFMv/EvQAAfoCAfoCE/QAQ1P0QwKTE18D4pJsIeJ/iuYgwP9wWOMEBcj0ABT0ABL0AAH6AhLLH8v/ye1Uf4CwAplMDgCD0fG+lII5DMwHTH9Mf0//0BPoA+gD0BVNJuo4pOCmrAlGqoQqggCAGyMsfFcsfE8v/9AAB+gIB+gIT9ABUQTYB9EMDcAGSXwfiAZJsIeKzAgEgMC4CsQ8XwUGk18GcOFRU4Ag9A5voZNfBnDh0z8x1wv/gCL4MyHbPJIwf46JgCT4MwHbPMMA4o4gbSDI9ABSUPQAUkD0ACP6AiLPCx8mzwv/ye1UBfAOMH/gXwVwgLy8AFCFukltw4AH5ALoC9w8+CMluZNfDHDgcPgzbpNfDHDggBH4M9D6APoA+gDTH9FTYbmUXw8wcOAEk18PcOAOk18OcOCAEPgz0NMP0w/TD9FxtgkQby8GAxERAwIBEREBIBES8AkgwABTALMC4wKAD/gz0NMf0x8x0x/TH9H4I1igpsQutglTAqCAzMQH+UmARFrYIyM+ESiLPCx8BERYByx8Wyw8BERQByw8Xyz8X9ADJcPgz0NcL/4Mdf8jPhYnKBxLL/wH6AoIQTlZTVM8LiizPCz8hzxTJcfsAUCWgVhCgBPkAbYAgBsjLHwEREgHLH8v/E/QAAfoCz4QgHvQAVEcwHPRDBcjLHxTLHzIASFj6AgH6Ahf0ABXKABbKAMnI9AAU9AAS9AAB+gLLH8v/ye1UfwBeNlcQXwQFyMsfFMsfWPoCAfoCF/QAygAWygDJyPQAFPQAEvQAAfoCyx/L/8ntVHACASA2NQB5Rw+DMgbpNfBHDg0NcL/yP6RAHD/5Jbf5O9wwDik18DcOD4AAHUIfsEIMcAnAHQ7R7tUwHxBoLyAOFfBH+AT1UxcG1/jkFTCYMH9HxvpSCOMTNSAvoA0x/TH9P/MdP/0QPIy38Co1jKHxPL/8nQUSm2CMjLH8v/QBSBAaD0QQOkVSCSbCHis+YwNFi2CFMBuZdfB21wbVMR4G2K5jM0pVySbxHkcCCK5jY2WyLAAJIxf5VSMrnDAOLjAoOzo5NwHwUwGlkm8R5G8QbxBwUwBtbY7YBm8iUwFvECNvESRvEgVvE1Negwf0Dm+h8r36ADHTPzHXC/9TrbmSNlvjDSDDAI4dUz2DB/QOb6GU+gAwoJEw4oMHyFj6AkQTUO70QwuSMDLiBaQFbrOzF+Y0NDQ2UlW68rFQREMTOAC8USuoqw8jtghRM6EjqjsvqQRRpKBRmqBTeoAQyCbDACCAc4BT4wRYywfPkjoEnioUy/8Syz8ClATPC/+RNOJUTDQa9EMigwcByMv/G8s/UAT6As+BRhNQyfRDCQUGBAAOXwRtcG1TEQB0Am8iAW8QBKRTSL6OJiVwIo4SAW8iIW8QAm8RKKirDxK2CBKg5DE1U0K8lWwiUgITkTTikTTiUza+EwBeA4EBoPSSb6Ugjh4B039RGbYIAdMfMdcL/wPTH9cL/0EwFG8EUAVvAgSSbCHisxQB99/Ej5IBBjgEuYfEl8S/gI8GmPkOAAS638SXxL+AjwaZ+RQQgnObol3UcomXxJfEuqIIp4CRBggEcTmBBhgEcPQQgdzWUAZGfChAnnLH0BQQh5uiQmZ4XFZZ/kuX2ASK3xRwxkZ8KECedBCHc3oqZnhcdln+WP5MAgfYBxQ9AeDgIoIQR2V0JLqXMDH4kgHwE+AighBOQ29kuo4m+JJREvAKghDOQ29khB/jBPiSyM+FCM5wzwtuyx/LP8sfyYBA+wDgMCGCEO52T0u6lzH4kgF/8BTgIYIQ7nZPb7qXMfiSAXDwFOAhgx6wwACRW+MNPgAq+JLIz4UIzoQfzwuOyz/LH8mAQPsAAgLZekACAUhDQQEBt0IASgIAIAAAAAAgAAAAA+gCAAAA//8CAAABAAAD/wAAAAABAAAAAQACAUhXRAEBSEUBKxJpUYrhaVKK4QARABEP////////+sBGAgLLSEcAm9HOOgSeKKudJ3rZkmvKNOrOS7jo5+cCXJEf+aj0lxQLnxLWTLP4A15Q15Q15QyrnSd62ZJryjTqzku46OfnAlyRH/mo9JcUC58S1kyz+gIBIE9JAgEgTUoCASBMSwIBIF9uAgEgZm8CASBOaAIBIGdgAgEgU1ACASBSUQIBIHZjAgEgYnECASBWVAIBIHhVAJsc46BJ4rMv0iNGo+Yzhc3MxiOpHy1N8o7qkfMJblg9uax8FlXaADXlDXlDXlDzL9IjRqPmM4XNzMYjqR8tTfKO6pHzCW5YPbmsfBZV2iACASB5dQEBSFgBKxJpUIrhaVGK4QARABEP////////+sBZAgLLW1oAm9HOOgSeKzL9IjRqPmM4XNzMYjqR8tTfKO6pHzCW5YPbmsfBZV2gA15Q15Q15Q8y/SI0aj5jOFzczGI6kfLU3yjuqR8wluWD25rHwWVdogIBIGtcAgEgZF0CASBhXgIBIGBfAJsc46BJ4rdOogaj+h0ufbzmKGNpmNjdDZ19FNHCiY5QRxuvT4zxADXlDXlDXlD3TqIGo/odLn285ihjaZjY3Q2dfRTRwomOUEcbr0+M8SAAmxzjoEnikEi38E5/r5ahuWcl1Bi/jIGy79tyBTboXXKXUGwJvfwANeUNeUNeUNBIt/BOf6+WoblnJdQYv4yBsu/bcgU26F1yl1BsCb38IAIBIGNiAJsc46BJ4oXeOtmuThrzDcDHK0U1z5FVEE7I9FrS2gHJjdaYi86WwDXlDXlDXlDF3jrZrk4a8w3AxytFNc+RVRBOyPRa0toByY3WmIvOluAAmxzjoEniiPsyK56Gbi8e9Kl7M/IeHWjit5lmL7WE+FJ6fAQPYVIANeUNeUNeUMj7Miuehm4vHvSpezPyHh1o4reZZi+1hPhSenwED2FSIAIBIGhlAgEgZ2YAmxzjoEnihvuUjMbXkmHmTo/ybhkk9vLAkqQmbcopXkH3woZpuOGANeUNeUNeUMb7lIzG15Jh5k6P8m4ZJPbywJKkJm3KKV5B98KGabjhoACbHOOgSeKpz1k7PgHY02fu/CUvyBzS24LOfJmXKnMHeh2+E29sXsA15Q15Q15Q6c9ZOz4B2NNn7vwlL8gc0tuCznyZlypzB3odvhNvbF7gAgEgamkAmxzjoEnivYw6TFMnSHSi43E3edQe/Hg0Tp9rlQPCPiwDqEAxL00ANeUNeUNeUP2MOkxTJ0h0ouNxN3nUHvx4NE6fa5UDwj4sA6hAMS9NIACbHOOgSeKkciPUGak/My0483Q2coJgMAWV+z2j+tCnmDAr2OqAmoA15Q15Q15Q5HIj1BmpPzMtOPN0NnKCYDAFlfs9o/rQp5gwK9jqgJqgAgEgc2wCASBwbQIBIG9uAJsc46BJ4qF7oLPXuwYkUH/SLeqon9KF8Cm0MVFn5nSVUl8dYmP4gDXlDXlDXlDhe6Cz17sGJFB/0i3qqJ/ShfAptDFRZ+Z0lVJfHWJj+KAAmxzjoEniij6OeG93Zw1oQik1Q7D4qvnLlLfRgATP6a4PsiPTRwWANeUNeUNeUMo+jnhvd2cNaEIpNUOw+Kr5y5S30YAEz+muD7Ij00cFoAIBIHJxAJsc46BJ4qoVB4laQTzbLrnzwPRDFogxVqMZHOgm/LGXtmCbCZ0hQDXlDXlDXlDqFQeJWkE82y6588D0QxaIMVajGRzoJvyxl7ZgmwmdIWAAmxzjoEniirnSd62ZJryjTqzku46OfnAlyRH/mo9JcUC58S1kyz+ANeUNeUNeUMq50netmSa8o06s5LuOjn5wJckR/5qPSXFAufEtZMs/oAIBIHd0AgEgdnUAmxzjoEnipKqmixkG3ALwaTJ4V5DwEZ4cK64iqBOQBVQP4sjyJv5ANeUNeUNeUOSqposZBtwC8GkyeFeQ8BGeHCuuIqgTkAVUD+LI8ib+YACbHOOgSeKRhMJGK6RKM0ThqHT4BmYg4MuJCd2MyaA0CPv0Bfo8k4A15Q15Q15Q0YTCRiukSjNE4ah0+AZmIODLiQndjMmgNAj79AX6PJOgAgEgeXgAmxzjoEnirDQ2feJfK5AbOici/NGzaTBMRInJMvs0YqsLAYponSVANeUNeUNeUOw0Nn3iXyuQGzonIvzRs2kwTESJyTL7NGKrCwGKaJ0lYACbHOOgSeK4rRaN+BMjVcHawfNlBoSKLKa1QfzogNc5iV9qGtcIN0ChryhryhryuK0WjfgTI1XB2sHzZQaEiiymtUH86IDXOYlfahrXCDdgAgEgqXsCASCSfAIBII19AgEghX4BAVh/AQHAgAIBSIKBAEK/t3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3d3cCASCEgwBBv2ZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZmZnAAPfsAIBIIiGAQEghwA02BOIAAwAAAAUAIwA0gMgAAAAlgAZAgMKA0gBASCJAe+ngAAB9AAABdwAAHUwD4AAAAAjw0YAAIAAE4gAMgAFAB0ACgAAw1AATEtAQAAJxAAAAAPQkAAAAAAApYKmwROAG0AAADeqCblAAAAAAPoAHIAcgByABAAAMYA7gDBALkAJiWgFTsVOwAPQkACgwGpBTwAaQ8SBeaCKAgLPjIsAAwKgAAMUIAIBSJCOAQEgjwBC6gAAAAAAD0JAAAAAAAPoAAAAAAABhqAAAAABgABVVVVVAQEgkQBC6gAAAAAAmJaAAAAAACcQAAAAAAAPQkAAAAABgABVVVVVAgEgnpMCASCZlAIBIJeVAQEglgBQXcMAAAPoAAAnEAAAdTDDAA27oADk4cABMS0AwwAAA+gAAMNQAAGGoAEBIJgAUF3DAAAD6AAAE4gAACcQwwANu6AA5OHAATEtAMMAAAPoAAAnEAAATiACASCcmgEBIJsAlNEAAAAAAAAD6AAAAAAAD0JA3gAAAAAD6AAAAAAAAAAPQkAAAAAAAA9CQAAAAAAAACcQAAAAAACYloAAAAAABfXhAAAAAAA7msoAAQEgnQCU0QAAAAAAAAPoAAAAAACYloDeAAAAACcQAAAAAAAAAA9CQAAAAAAF9eEAAAAAAAAAJxAAAAAAAKfYwAAAAAAF9eEAAAAAADuaygACASCknwIBIKKgAQEgoQAIAAAH0AEBIKMATdBmAAAAAAAAAAAAAAAAgAAAAAAAAPoAAAAAAAAB9AAAAAAAA9CQQAIBIKelAQEgpgAxYJGE5yoAByOG8m/BAABlrzEHpAAAADAACAEBIKgADAPoAGQADQIBINaqAgEgtKsCASCxrAIBIK+tAQEgrgAgAAEAAAAAgAAAACAAAACAAAEBILAAFGtGVT8QBDuaygABAUiyAQHAswC30FMAAAAAAAAAcAB58HWGwcaGI+R/lTMsIczrIsHMMEtslPnAxRm0/d/18EkZMm2lDjHJi+Fs6epVALlHCXFnrxFhElnmyZO9BHLFgAAAAAgAAAAAAAAAAAAAAAQCASDAtQIBILq2AQEgtwICkbm4ACo2BAcEAgBMS0ABMS0AAAAAAgAAA+gAKjYCAwICAA9CQACYloAAAAABAAAB9AEBILsCA81AvrwCAWK9xwIBINDQAgEgy78CAc7T0wIBINTBAQEgwgIDzUDEwwADqKACASDLxQIBIMnGAgEgyMcAAdQCAUjT0wIBIMrKAgEgzs4CASDSzAIBIM/NAgEg0M4CASDT0wIBINHQAAFIAAFYAgHU09MAASABASDVABrEAAAAZAAAAAAMAxYuAgEg3dcCASDb2AEBWNkBAcDaABOgAAAAASAKA3oEAQFY3ABTAbMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzAAAAAAAAAADAAgEg4N4BAUjfAEAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAIBIOPhAQEg4gBAMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMBASDkAEBVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVVQ==';
      final config = BlockchainConfigParams(paramsRoot: paramsRoot);
      final addr = config.fundamentalSmcAddr();

      expect(addr.length, 3);
      expect(
        addr[0],
        '-1:0000000000000000000000000000000000000000000000000000000000000000',
      );
      expect(
        addr[1],
        '-1:3333333333333333333333333333333333333333333333333333333333333333',
      );
      expect(
        addr[2],
        '-1:7777777777777777777777777777777777777777777777777777777777777777',
      );
    });
  });
}
