import 'dart:convert';

import 'package:flutter_nekoton_bridge/example_related/mega_struct.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart';

extension DynamicValueConvert on DynamicValue {
  dynamic toDynamic() {
    if (this is DynamicValue_U16) return (this as DynamicValue_U16).field0;
    if (this is DynamicValue_U32) return (this as DynamicValue_U32).field0;
    if (this is DynamicValue_I32) return (this as DynamicValue_I32).field0;
    if (this is DynamicValue_U64) return (this as DynamicValue_U64).field0;
    if (this is DynamicValue_I64) return (this as DynamicValue_I64).field0;
    if (this is DynamicValue_F32) return (this as DynamicValue_F32).field0;
    if (this is DynamicValue_F64) return (this as DynamicValue_F64).field0;

    if (this is DynamicValue_String) {
      return (this as DynamicValue_String).field0;
    }

    if (this is DynamicValue_MegaStruct) {
      return MegaStruct.fromJson(
          json.decode((this as DynamicValue_MegaStruct).field0),);
    }

    if (this is DynamicValue_None) return null;

    if (this is DynamicValue_Error) return (this as DynamicValue_Error).field0;

    return null;
  }

  // TODO: remove all non-integration test related things FROM here
  static DynamicValue megaStruct(MegaStruct megaStruct) {
    return DynamicValue.megaStruct(
      json.encode(
        megaStruct.toJson(),
      ),
    );
  }
  // TODO: remove all non-integration test related things TO here

  static DynamicValue error(ErrorCode errorCode) {
    return DynamicValue.error(errorCode);
  }
}
