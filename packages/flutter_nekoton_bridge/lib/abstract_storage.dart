import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';
import 'package:flutter_nekoton_bridge/mega_struct.dart';

abstract class AbstractStorage {
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
