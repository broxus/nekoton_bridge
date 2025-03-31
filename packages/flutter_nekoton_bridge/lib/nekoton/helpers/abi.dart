import 'dart:convert';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

/// Check if public key is correct.
/// Return true or false
bool checkPublicKey({required PublicKey publicKey}) {
  try {
    return ntCheckPublicKey(publicKey: publicKey.publicKey);
  } catch (_) {
    return false;
  }
}

/// Run contract local.
/// Return json-encoded ExecutionOutput or throws error.
///
/// input - is json-encoded AbiToken
ExecutionOutput runLocal({
  required String accountStuffBoc,
  required String contractAbi,
  required String method,
  required Map<String, dynamic> input,
  required bool responsible,
}) {
  final res = ntRunLocal(
    accountStuffBoc: accountStuffBoc,
    contractAbi: contractAbi,
    method: method,
    input: jsonEncode(input),
    responsible: responsible,
  );
  return ExecutionOutput.fromJson(jsonDecode(res));
}

/// Get address of tvc and contract_abi.
/// Returns list of [address, state_init, hash] or throws error
(Address, String, String) getExpectedAddress({
  required String tvc,
  required String contractAbi,
  required int workchainId,
  PublicKey? publicKey,
  required TokensObject initData,
}) {
  final res = ntGetExpectedAddress(
    tvc: tvc,
    contractAbi: contractAbi,
    workchainId: workchainId,
    publicKey: publicKey?.publicKey,
    initData: jsonEncode(initData),
  );
  return (Address(address: res[0]), res[1], res[2]);
}

/// Returns base64-encoded body that was encoded or throws error
String encodeInternalInput({
  required String contractAbi,
  required String method,
  required TokensObject input,
}) {
  return ntEncodeInternalInput(
    contractAbi: contractAbi,
    method: method,
    input: jsonEncode(input),
  );
}

/// Returns SignedMessage from nekoton or throws error
SignedMessage createExternalMessageWithoutSignature({
  required Address dst,
  required String contractAbi,
  required String method,
  String? stateInit,
  required TokensObject input,
  required Duration timeout,
}) {
  final res = ntCreateExternalMessageWithoutSignature(
    dst: dst.address,
    contractAbi: contractAbi,
    method: method,
    input: jsonEncode(input),
    timeout: timeout.inMilliseconds,
    stateInit: stateInit,
  );
  return SignedMessage.fromJson(jsonDecode(res));
}

/// Create external unsigned message that can be listened and handled or throws error
Future<UnsignedMessage> createExternalMessage({
  required String dst,
  required String contractAbi,
  required String method,
  String? stateInit,
  required TokensObject input,
  required PublicKey publicKey,
  required Duration timeout,
}) {
  return UnsignedMessage.create(
    message: ntCreateExternalMessage(
      dst: dst,
      contractAbi: contractAbi,
      method: method,
      input: jsonEncode(input),
      publicKey: publicKey.publicKey,
      timeout: timeout.inMilliseconds,
      stateInit: stateInit,
    ),
  );
}

/// Parse payload and return KnownPayload or throws error
KnownPayload? parseKnownPayload(String payload) {
  final res = ntParseKnownPayload(payload: payload);
  if (res == null) return null;
  final decoded = jsonDecode(res);
  if (decoded == null) return null;
  return KnownPayload.fromJson(decoded);
}

/// Decode input data and return DecodedInput or throws error
DecodedInput? decodeInput({
  required String messageBody,
  required String contractAbi,
  MethodName? method,
  required bool internal,
}) {
  final res = ntDecodeInput(
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
DecodedEvent? decodeEvent({
  required String messageBody,
  required String contractAbi,
  MethodName? event,
}) {
  final res = ntDecodeEvent(
    messageBody: messageBody,
    contractAbi: contractAbi,
    event: event == null ? null : jsonEncode(event),
  );
  final decoded = jsonDecode(res);
  if (decoded == null) return null;
  return DecodedEvent.fromJson(decoded);
}

/// Decode output data and return DecodedOutput or throws error
DecodedOutput? decodeOutput({
  required String messageBody,
  required String contractAbi,
  MethodName? method,
}) {
  final res = ntDecodeOutput(
    messageBody: messageBody,
    contractAbi: contractAbi,
    method: method == null ? null : jsonEncode(method),
  );
  final decoded = jsonDecode(res);
  if (decoded == null) return null;
  return DecodedOutput.fromJson(decoded);
}

/// Decode transaction and return DecodedTransaction or throws error
DecodedTransaction? decodeTransaction({
  required Transaction transaction,
  required String contractAbi,
  MethodName? method,
}) {
  final res = ntDecodeTransaction(
    transaction: jsonEncode(transaction),
    contractAbi: contractAbi,
    method: method == null ? null : jsonEncode(method),
  );
  final decoded = jsonDecode(res);
  if (decoded == null) return null;
  return DecodedTransaction.fromJson(decoded);
}

/// Decode events of transaction and return list of DecodedEvent or throws error
List<DecodedEvent> decodeTransactionEvents({
  required Transaction transaction,
  required String contractAbi,
}) {
  final res = ntDecodeTransactionEvents(
    transaction: jsonEncode(transaction),
    contractAbi: contractAbi,
  );
  final decoded = jsonDecode(res);
  final json = decoded as List<dynamic>;
  final list = json.cast<Map<String, dynamic>>();
  return list.map((e) => DecodedEvent.fromJson(e)).toList();
}

/// Returns hash of decoded boc or throws error
String getBocHash(String boc) {
  return ntGetBocHash(boc: boc);
}

/// Return (base64 tvc, hash) or throws error
(String, String) packIntoCell({
  required List<AbiParam> params,
  required TokensObject tokens,
  required String? abiVersion,
}) {
  final data = ntPackIntoCell(
    params: jsonEncode(params),
    tokens: jsonEncode(tokens),
    version: abiVersion,
  );

  return (data[0], data[1]);
}

/// Parse list of params and return json-encoded Tokens or throws error
TokensObject unpackFromCell({
  required List<AbiParam> params,
  required String boc,
  required bool allowPartial,
  required String? abiVersion,
}) {
  return jsonDecode(ntUnpackFromCell(
    params: jsonEncode(params),
    boc: boc,
    allowPartial: allowPartial,
    version: abiVersion,
  ));
}

/// Pack address std smd or throw error
/// Returns new packed address as string
String packStdSmcAddr({
  required Address address,
  required bool base64Url,
  required bool bounceable,
}) {
  return ntPackStdSmcAddr(
    addr: address.address,
    base64Url: base64Url,
    bounceable: bounceable,
  );
}

String unpackStdSmcAddr({
  required String packed,
  required bool base64Url,
}) {
  return ntUnpackStdSmcAddr(
    packed: packed,
    base64Url: base64Url,
  );
}

/// Return true if address is valid, false otherwise
bool validateAddress(Address address) {
  return ntValidateAddress(address: address.address);
}

/// Repack address and return json-encoded MsgAddressInt or throw error
Address repackAddress(Address address) {
  final addressString = ntRepackAddress(address: address.address);
  return Address(address: addressString);
}

Address packAddress(
  Address address, {
  bool isUrlSafe = true,
  bool bounceable = true,
}) {
  final addressString = ntPackAddress(
    address: address.address,
    isUrlSafe: isUrlSafe,
    bounceable: bounceable,
  );

  return Address(address: addressString);
}

/// Extract public key from boc and return it or throw error
PublicKey extractPublicKey(String boc) {
  return PublicKey(publicKey: ntExtractPublicKey(boc: boc));
}

/// Convert code to base64 tvc string and return (tvc, hash) or throw error
(String, String) codeToTvc(String code) {
  final data = ntCodeToTvc(code: code);

  return (data[0], data[1]);
}

/// Merge code and data to tvc base64 string and return (tvc, hash)
/// or throw error
(String, String) mergeTvc({
  required String code,
  required String data,
}) {
  final res = ntMergeTvc(code: code, data: data);

  return (res[0], res[1]);
}

/// Split base64 tvc string into data and code.
/// Return (data, code) or throw error
(String?, String?) splitTvc(String tvc) {
  final res = ntSplitTvc(tvc: tvc);
  return (res[0], res[1]);
}

/// Set salt to code and return (tvc, hash) or throw error
(String, String) setCodeSalt({
  required String code,
  required String salt,
}) {
  final data = ntSetCodeSalt(code: code, salt: salt);

  return (data[0], data[1]);
}

/// Get salt from code if possible and return base64-encoded salt or throw error
String? getCodeSalt(String code) {
  return ntGetCodeSalt(code: code);
}

/// None code-related exception that means that [executeLocal] finished with
/// specified [errorCode].
class ExecuteLocalException implements Exception {
  const ExecuteLocalException(this.errorCode);

  final String errorCode;
}

/// Run contract locally.
/// [config] - value from [Transport.getBlockchainConfig]
/// [account] - boc from [makeFullAccountBoc]
/// [message] - base64-encoded boc from one of:
/// 1) [encodeInternalMessage]
/// 2) [createRawExternalMessage]
/// 3) [createExternalMessageWithoutSignature]
/// 4) [UnsignedMessage.signFake]
///
/// Returns [boc, transaction] if everything is ok or
/// throws [ExecuteLocalException] if transaction failed, this is not
///   code-related problem.
/// or throws error
(String, Transaction) executeLocal({
  required String config,
  required String account,
  required String message,
  required DateTime utime,
  required bool disableSignatureCheck,
  BigInt? overwriteBalance,
  int? globalId,
}) {
  final result = ntExecuteLocal(
    account: account,
    message: message,
    utime: utime.millisecondsSinceEpoch,
    globalId: globalId,
    config: config,
    overwriteBalance: overwriteBalance?.toString(),
    disableSignatureCheck: disableSignatureCheck,
  );
  if (result.length == 1) {
    throw ExecuteLocalException(result[0]);
  }

  return (result[0], Transaction.fromJson(jsonDecode(result[1])));
}

/// Unpack data from [contractAbi].
/// Returns optional public key and json-encoded Map<String, Token>
/// or throws error.
(PublicKey?, Map<String, dynamic>) unpackInitData({
  required String contractAbi,
  required String data,
}) {
  final result = ntUnpackInitData(
    contractAbi: contractAbi,
    data: data,
  );

  return (
    result[0] == null ? null : PublicKey(publicKey: result[0]!),
    jsonDecode(result[1]!) as Map<String, dynamic>,
  );
}

/// Unpack contract fields.
/// Returns optional json-encoded Map<String, Token> or throw error
Map<String, dynamic>? unpackContractFields({
  required String contractAbi,
  required String boc,
  required bool allowPartial,
}) {
  final result = ntUnpackContractFields(
    contractAbi: contractAbi,
    boc: boc,
    allowPartial: allowPartial,
  );
  if (result == null) return null;

  return jsonDecode(result) as Map<String, dynamic>;
}

/// Create raw external message without real signing or throws error
SignedMessage createRawExternalMessage({
  required Address dst,
  required Duration timeout,
  String? stateInit,
  String? body,
}) {
  final result = ntCreateRawExternalMessage(
    dst: dst.address,
    timeout: timeout.inMilliseconds,
    body: body,
    stateInit: stateInit,
  );

  return SignedMessage.fromJson(jsonDecode(result));
}

/// Returns base-64 encoded Message or throws error
String encodeInternalMessage({
  required Address dst,
  required bool bounce,
  required BigInt amount,
  Address? src,
  String? stateInit,
  String? body,
  bool? bounced,
}) {
  return ntEncodeInternalMessage(
    dst: dst.address,
    src: src?.address,
    body: body,
    stateInit: stateInit,
    bounced: bounced,
    bounce: bounce,
    amount: amount.toString(),
  );
}

/// Returns base-64 encoded Account or throws error
/// [accountStuffBoc] - [FullContractState.boc]
String makeFullAccountBoc(String? accountStuffBoc) {
  return ntMakeFullAccountBoc(accountStuffBoc: accountStuffBoc);
}

/// [account] - base64-encoded boc after [executeLocal]
FullContractState? parseFullAccountBoc(String account) {
  final state = ntParseFullAccountBoc(account: account);
  if (state == null) return null;

  return FullContractState.fromJson(jsonDecode(state));
}

/// [config] - value from [Transport.getBlockchainConfig]
/// [account] - base64-encoded boc
/// [utime] - seconds
/// [isMasterchain] - default: false
StorageFeeInfo computeStorageFee({
  required String config,
  required String account,
  required int utime,
  bool? isMasterchain,
}) {
  final data = ntComputeStorageFee(
    config: config,
    account: account,
    utime: utime,
    isMasterchain: isMasterchain ?? false,
  );

  return StorageFeeInfo.fromJson(jsonDecode(data));
}

/// [comment] - comment to encode
/// [plain] - if true, then return plain comment payload (used for TON)
String encodeComment(String comment, {bool plain = false}) {
  return ntEncodeComment(comment: comment, plain: plain);
}
