// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';

class TransferParams {
  final String destination;
  final String amount;
  final bool bounce;
  final String? body;
  final String? stateInit;

  const TransferParams({
    required this.destination,
    required this.amount,
    required this.bounce,
    this.body,
    this.stateInit,
  });

  @override
  int get hashCode =>
      destination.hashCode ^
      amount.hashCode ^
      bounce.hashCode ^
      body.hashCode ^
      stateInit.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TransferParams &&
          runtimeType == other.runtimeType &&
          destination == other.destination &&
          amount == other.amount &&
          bounce == other.bounce &&
          body == other.body &&
          stateInit == other.stateInit;
}
