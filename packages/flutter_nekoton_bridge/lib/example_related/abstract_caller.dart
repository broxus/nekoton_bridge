import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

abstract class AbstractCaller {
  String func0(
    String string,
    int i,
    double d, {
    required int arg0,
    required double arg1,
  });

  Future<String> func1(
    String string,
    int i,
    double d, {
    required int arg0,
    required double arg1,
  });

  DynamicValue func2(
    MegaStruct megaStruct,
  );
}
