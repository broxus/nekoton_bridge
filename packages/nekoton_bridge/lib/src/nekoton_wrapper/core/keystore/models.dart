// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.0.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

/// Structure that is used with signing data
/// high and low looks like: 0x{hex_data}
class SignatureParts {
  /// symbols before 32-th
  final String low;

  /// symbols after 32-th
  final String high;

  const SignatureParts({
    required this.low,
    required this.high,
  });

  @override
  int get hashCode => low.hashCode ^ high.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignatureParts &&
          runtimeType == other.runtimeType &&
          low == other.low &&
          high == other.high;
}

/// Structure that is used with signing data
class SignedData {
  /// hex encoded hash
  final String dataHash;

  /// base64 encoded data
  final String signature;

  /// hex encoded data
  final String signatureHex;

  /// Signatures
  final SignatureParts signatureParts;

  const SignedData({
    required this.dataHash,
    required this.signature,
    required this.signatureHex,
    required this.signatureParts,
  });

  @override
  int get hashCode =>
      dataHash.hashCode ^
      signature.hashCode ^
      signatureHex.hashCode ^
      signatureParts.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignedData &&
          runtimeType == other.runtimeType &&
          dataHash == other.dataHash &&
          signature == other.signature &&
          signatureHex == other.signatureHex &&
          signatureParts == other.signatureParts;
}

/// Structure that is used with signing data
class SignedDataRaw {
  /// base64 encoded data
  final String signature;

  /// hex encoded data
  final String signatureHex;

  /// Signatures
  final SignatureParts signatureParts;

  const SignedDataRaw({
    required this.signature,
    required this.signatureHex,
    required this.signatureParts,
  });

  @override
  int get hashCode =>
      signature.hashCode ^ signatureHex.hashCode ^ signatureParts.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is SignedDataRaw &&
          runtimeType == other.runtimeType &&
          signature == other.signature &&
          signatureHex == other.signatureHex &&
          signatureParts == other.signatureParts;
}