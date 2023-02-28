import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart'
    as flutter_nekoton_bridge;

class Storage extends flutter_nekoton_bridge.AbstractStorage {
  @override
  void func0(
    String string,
    int i,
    double d, {
    required int arg0,
    required double arg1,
  }) {
    debugPrint('Call: func0: $string $i $d $arg0 $arg1');
  }
}
