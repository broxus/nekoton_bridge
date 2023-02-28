import 'package:nekoton_bridge/nekoton_bridge.dart';

extension ToDynamic on DynamicValue {
  dynamic toDynamic() {
    // maybeWhen(orElse: () => Null);
    return field0;
  }
}
