import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:tuple/tuple.dart';

/// Check if public key is correct.
/// Return true or false
Future<bool> checkPublicKey({required PublicKey publicKey}) async {
  try {
    return await createLib().checkPublicKey(publicKey: publicKey.publicKey);
  } catch (_) {
    return false;
  }
}

/// Run contract local.
/// Return json-encoded ExecutionOutput or throws error.
///
/// input - is json-encoded AbiToken
Future<ExecutionOutput> runLocal({
  required String accountStuffBoc,
  required String contractAbi,
  required String method,
  required String input,
  required bool responsible,
}) async {
  final res = await createLib().runLocal(
    accountStuffBoc: accountStuffBoc,
    contractAbi: contractAbi,
    method: method,
    input: input,
    responsible: responsible,
  );
  return ExecutionOutput.fromJson(jsonDecode(res));
}

/// Get address of tvc and contract_abi.
/// Returns list of [address, state_init] or throws error
Future<Tuple2<Address, String>> getExpectedAddress({
  required String tvc,
  required String contractAbi,
  required int workchainId,
  required TokensObject initData, PublicKey? publicKey,
}) async {
  final res = await createLib().getExpectedAddress(
    tvc: tvc,
    contractAbi: contractAbi,
    workchainId: workchainId,
    publicKey: publicKey?.publicKey,
    initData: jsonEncode(initData),
  );
  return Tuple2(Address(address: res[0]), res[1]);
}

/// Returns base64-encoded body that was encoded or throws error
Future<String> encodeInternalInput({
  required String contractAbi,
  required String method,
  required TokensObject input,
}) {
  return createLib().encodeInternalInput(
    contractAbi: contractAbi,
    method: method,
    input: jsonEncode(input),
  );
}

/// Returns SignedMessage from nekoton or throws error
Future<SignedMessage> createExternalMessageWithoutSignature({
  required String dst,
  required String contractAbi,
  required String method,
  required TokensObject input, required int timeout, String? stateInit,
}) async {
  final res = await createLib().createExternalMessageWithoutSignature(
    dst: dst,
    contractAbi: contractAbi,
    method: method,
    input: jsonEncode(input),
    timeout: timeout,
    stateInit: stateInit,
  );
  return SignedMessage.fromJson(jsonDecode(res));
}

/// Create external unsigned message that can be listened and handled or throws error
Future<UnsignedMessage> createExternalMessage({
  required String dst,
  required String contractAbi,
  required String method,
  required TokensObject input, required PublicKey publicKey, required int timeout, String? stateInit,
}) async {
  return UnsignedMessage.create(
    message: await createLib().createExternalMessage(
      dst: dst,
      contractAbi: contractAbi,
      method: method,
      input: jsonEncode(input),
      publicKey: publicKey.publicKey,
      timeout: timeout,
      stateInit: stateInit,
    ),
  );
}

/// Parse payload and return KnownPayload or throws error
Future<KnownPayload?> parseKnownPayload(String payload) async {
  final res = await createLib().parseKnownPayload(payload: payload);
  final decoded = jsonDecode(res);
  if (decoded == null) return null;
  return KnownPayload.fromJson(decoded);
}

/// Decode input data and return DecodedInput or throws error
Future<DecodedInput?> decodeInput({
  required String messageBody,
  required String contractAbi,
  required bool internal, MethodName? method,
}) async {
  final res = await createLib().decodeInput(
    messageBody: messageBody,
    contractAbi: contractAbi,
    method: method == null ? null : jsonEncode(method),
    internal: internal,
  );
  final decoded = jsonDecode(res);
  if (decoded == null) return null;
  return DecodedInput.fromJson(decoded);
}

/// Decode input data and return DecodedEvent or throws error
Future<DecodedEvent?> decodeEvent({
  required String messageBody,
  required String contractAbi,
  MethodName? event,
}) async {
  final res = await createLib().decodeEvent(
    messageBody: messageBody,
    contractAbi: contractAbi,
    event: event == null ? null : jsonEncode(event),
  );
  final decoded = jsonDecode(res);
  if (decoded == null) return null;
  return DecodedEvent.fromJson(decoded);
}

/// Decode output data and return DecodedOutput or throws error
Future<DecodedOutput?> decodeOutput({
  required String messageBody,
  required String contractAbi,
  MethodName? method,
}) async {
  final res = await createLib().decodeOutput(
    messageBody: messageBody,
    contractAbi: contractAbi,
    method: method == null ? null : jsonEncode(method),
  );
  final decoded = jsonDecode(res);
  if (decoded == null) return null;
  return DecodedOutput.fromJson(decoded);
}

/// Decode transaction and return DecodedTransaction or throws error
Future<DecodedTransaction?> decodeTransaction({
  required Transaction transaction,
  required String contractAbi,
  MethodName? method,
}) async {
  final res = await createLib().decodeTransaction(
    transaction: jsonEncode(transaction),
    contractAbi: contractAbi,
    method: method == null ? null : jsonEncode(method),
  );
  final decoded = jsonDecode(res);
  if (decoded == null) return null;
  return DecodedTransaction.fromJson(decoded);
}

/// Decode events of transaction and return list of DecodedEvent or throws error
Future<List<DecodedEvent>> decodeTransactionEvents({
  required Transaction transaction,
  required String contractAbi,
}) async {
  final res = await createLib().decodeTransactionEvents(
    transaction: jsonEncode(transaction),
    contractAbi: contractAbi,
  );
  final decoded = jsonDecode(res);
  final json = decoded as List<dynamic>;
  final list = json.cast<Map<String, dynamic>>();
  return list.map(DecodedEvent.fromJson).toList();
}

/// Returns hash of decoded boc or throws error
Future<String> getBocHash(String boc) {
  return createLib().getBocHash(boc: boc);
}

/// Return base64 encoded bytes of tokens or throws error
Future<String> packIntoCell({
  required List<AbiParam> params,
  required TokensObject tokens,
}) {
  return createLib().packIntoCell(
    params: jsonEncode(params),
    tokens: jsonEncode(tokens),
  );
}

/// Parse list of params and return json-encoded Tokens or throws error
Future<TokensObject> unpackFromCell({
  required List<AbiParam> params,
  required String boc,
  required bool allowPartial,
}) async {
  return jsonDecode(await createLib().unpackFromCell(
    params: jsonEncode(params),
    boc: boc,
    allowPartial: allowPartial,
  ),);
}

// TODO(nesquikm): WTF? Should we use Address here instead of String?
/// Pack address std smd or throw error
/// Returns new packed address as string
Future<String> packStdSmcAddr({
  required Address address,
  required bool base64Url,
  required bool bounceable,
}) {
  return createLib().packStdSmcAddr(
    addr: address.address,
    base64Url: base64Url,
    bounceable: bounceable,
  );
}

Future<String> unpackStdSmcAddr({
  required String packed,
  required bool base64Url,
}) {
  return createLib().unpackStdSmcAddr(
    packed: packed,
    base64Url: base64Url,
  );
}

/// Return true if address is valid, false otherwise
Future<bool> validateAddress(Address address) {
  return createLib().validateAddress(address: address.address);
}

/// Repack address and return json-encoded MsgAddressInt or throw error
Future<Address> repackAddress(Address address) async {
  final addressString =
      jsonDecode(await createLib().repackAddress(address: address.address))
          as String;
  return Address(address: addressString);
}

/// Extract public key from boc and return it or throw error
Future<PublicKey> extractPublicKey(String boc) async {
  return PublicKey(publicKey: await createLib().extractPublicKey(boc: boc));
}

/// Convert code to base64 tvc string and return it or throw error
Future<String> codeToTvc(String code) {
  return createLib().codeToTvc(code: code);
}

/// Merge code and data to tvc base64 string and return it or throw error
Future<String> mergeTvc({
  required String code,
  required String data,
}) {
  return createLib().mergeTvc(code: code, data: data);
}

/// Split base64 tvc string into data and code.
/// Return Tuple2[data, code] or throw error
Future<Tuple2<String?, String?>> splitTvc(String tvc) async {
  final res = await createLib().splitTvc(tvc: tvc);
  return Tuple2(res[0], res[1]);
}

/// Set salt to code and return base64-encoded string or throw error
Future<String> setCodeSalt({
  required String code,
  required String salt,
}) {
  return createLib().setCodeSalt(code: code, salt: salt);
}

/// Get salt from code if possible and return base64-encoded salt or throw error
Future<String?> getCodeSalt(String code) {
  return createLib().getCodeSalt(code: code);
}
