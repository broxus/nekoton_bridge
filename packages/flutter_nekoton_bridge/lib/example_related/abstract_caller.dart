import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

abstract class AbstractCaller {
  // TODO: remove all non-integration test related things FROM here
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
  // TODO: remove all non-integration test related things TO here

  // These methods SHOULD NOT be removed
  // or altered because it used in integration tests

  Future<DynamicValue> test0(String string);

  Future<DynamicValue> test1(String string);
}
