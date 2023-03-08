import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart' as flutter_nekoton_bridge;
import 'package:flutter_nekoton_bridge/example_related/mega_struct.dart';

class CallerImpl extends flutter_nekoton_bridge.AbstractCaller {
  @override
  String func0(String string, int i, double d, {required int arg0, required double arg1}) {
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
  flutter_nekoton_bridge.DynamicValue func2(MegaStruct megaStruct) {
    debugPrint('---------Call: func2: $megaStruct');
    final toSendDynamicValue = MegaStruct(
        name: 'Seen in Dart ${megaStruct.name}',
        coords: const Coords(x: 33.33, y: 44.44, z: 55.55),
        props: {
          ...megaStruct.props,
          ...{'KeyFromDart': 'ValFromDart'},
        });
    return flutter_nekoton_bridge.DynamicValueConvert.megaStruct(toSendDynamicValue);
  }
}
