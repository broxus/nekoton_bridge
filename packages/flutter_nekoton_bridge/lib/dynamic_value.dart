import 'package:nekoton_bridge/nekoton_bridge.dart';

extension ToDynamic on DynamicValue {
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

    if (this is DynamicValue_None) return null;

    return null;
  }
}
