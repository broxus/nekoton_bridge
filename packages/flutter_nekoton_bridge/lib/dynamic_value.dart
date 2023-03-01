import 'dart:convert';

import 'package:flutter_nekoton_bridge/mega_struct.dart';
import 'package:nekoton_bridge/nekoton_bridge.dart';

extension DynamicValueConvert on DynamicValue {
  dynamic toDynamic() {
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
          json.decode((this as DynamicValue_MegaStruct).field0));
    }

    if (this is DynamicValue_None) return null;

    return null;
  }

  static DynamicValue megaStruct(MegaStruct megaStruct) {
    return DynamicValue.megaStruct(
      json.encode(
        megaStruct.toJson(),
      ),
    );
  }
}
