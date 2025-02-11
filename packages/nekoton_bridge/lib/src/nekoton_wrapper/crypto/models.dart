// This file is automatically generated, so please do not edit it.
// @generated by `flutter_rust_bridge`@ 2.7.1.

// ignore_for_file: invalid_use_of_internal_member, unused_import, unnecessary_import

import '../../frb_generated.dart';
import 'package:flutter_rust_bridge/flutter_rust_bridge_for_generated.dart';
import 'package:freezed_annotation/freezed_annotation.dart' hide protected;
part 'models.freezed.dart';

@freezed
sealed class KeySigner with _$KeySigner {
  const KeySigner._();

  const factory KeySigner.encrypted() = KeySigner_Encrypted;
  const factory KeySigner.derived() = KeySigner_Derived;
  const factory KeySigner.ledger() = KeySigner_Ledger;

  /// Do not use this type. This is fucking hack because generator don't want generate
  /// converter for Vec<KeySigner> if it is simple enum
  const factory KeySigner.stub(
    bool field0,
  ) = KeySigner_Stub;
}
