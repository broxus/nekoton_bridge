import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart'
    as flutter_nekoton_bridge;

import 'storage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  late int sumResult;
  late Future<int> sumAsyncResult;
  String? fromMyClass;

  @override
  void initState() {
    super.initState();
    sumResult = flutter_nekoton_bridge.simpleAdderSync(1, 2);
    sumAsyncResult = flutter_nekoton_bridge.simpleAdder(3, 4);

    flutter_nekoton_bridge.setupLogger(
      level: flutter_nekoton_bridge.LogLevel.Trace,
      mobileLogger: true,
      logHandler: (logEntry) => debugPrint(
        'FromRust: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (rust_time=${logEntry.timeMillis})',
      ),
    );
  }

  void _onPressed() async {
    fromMyClass = await flutter_nekoton_bridge.queryMyClass();
    setState(() {});
  }

  void _onPressedLog() async {
    debugPrint('Log!');
    flutter_nekoton_bridge.simpleLog();
  }

  void _onPressedPanic() async {
    debugPrint('Panic!');
    flutter_nekoton_bridge.simplePanic();
  }

  Storage? _storage;
  void _onPressedInitDartCaller() async {
    final storage = _storage ??= Storage();
    flutter_nekoton_bridge.initAbstractStorage(storage);
  }

  void _onPressedDartCallFunc0() async {
    flutter_nekoton_bridge.simpleCallFunc0();
  }

  // void _onPressedSimpleCallDart() async {
  //   flutter_nekoton_bridge.simpleCallDart();
  // }

  // void _onPressedStubCallDart() async {
  //   final stub = flutter_nekoton_bridge.DartCallStub(
  //     fnName: "dartMegaFunction",
  //     args: [
  //       const flutter_nekoton_bridge.DynamicValue_U32(420),
  //       const flutter_nekoton_bridge.DynamicValue_String("Hello nekoton"),
  //     ],
  //   );
  //   flutter_nekoton_bridge.stubCallDart(stub);
  // }

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(fontSize: 25);
    const spacerSmall = SizedBox(height: 10);
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const Text(
                  'This calls a native function through FFI that is shipped as source in the package. '
                  'The native code is built as part of the Flutter Runner build.',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                spacerSmall,
                Text(
                  'sum(1, 2) = $sumResult',
                  style: textStyle,
                  textAlign: TextAlign.center,
                ),
                spacerSmall,
                FutureBuilder<int>(
                  future: sumAsyncResult,
                  builder: (BuildContext context, AsyncSnapshot<int> value) {
                    final displayValue =
                        (value.hasData) ? value.data : 'loading';
                    return Text(
                      'await sumAsync(3, 4) = $displayValue',
                      style: textStyle,
                      textAlign: TextAlign.center,
                    );
                  },
                ),
                TextButton(
                  onPressed: _onPressed,
                  child: Text('From MyClass $fromMyClass'),
                ),
                TextButton(
                  onPressed: _onPressedLog,
                  child: const Text('Log'),
                ),
                TextButton(
                  onPressed: _onPressedPanic,
                  child: const Text('Panic'),
                ),
                TextButton(
                  onPressed: _onPressedInitDartCaller,
                  child: const Text('initDartCaller'),
                ),
                TextButton(
                  onPressed: _onPressedDartCallFunc0,
                  child: const Text('CallFunc0'),
                ),
                // TextButton(
                //   onPressed: _onPressedStubCallDart,
                //   child: const Text('stubCallDart'),
                // ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
