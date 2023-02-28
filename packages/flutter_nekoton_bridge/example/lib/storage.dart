import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart'
    as flutter_nekoton_bridge;
import 'package:flutter_nekoton_bridge/mega_struct.dart';

class Storage extends flutter_nekoton_bridge.AbstractStorage {
  @override
  String func0(String string, int i, double d,
      {required int arg0, required double arg1}) {
    debugPrint('Call: func0: $string $i $d $arg0 $arg1');

    return 'Return: Call: func0: $string $i $d $arg0 $arg1';
  }

  @override
  Future<String> func1(
    String string,
    int i,
    double d, {
    required int arg0,
    required double arg1,
  }) async {
    debugPrint('---------Call: func1: $string $i $d $arg0 $arg1');
    await Future.delayed(const Duration(seconds: 1), () {});
    debugPrint('+++++++++Call: func1: $string $i $d $arg0 $arg1');

    return 'Return: Call: func1: $string $i $d $arg0 $arg1';
  }

  @override
  String func2(MegaStruct megaStruct) {
    debugPrint('---------Call: func2: $megaStruct');
    return 'Okay';
  }
}
