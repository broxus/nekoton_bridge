import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/example_related/caller_test_class_wrapper.dart';
import 'dart:async';

import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart'
    as flutter_nekoton_bridge;

import 'package:flutter_nekoton_bridge/example_related/caller_wrapper.dart'
    as caller;
import 'caller_impl.dart';

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

    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    flutter_nekoton_bridge.setupLogger(
      level: flutter_nekoton_bridge.LogLevel.Trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
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

  /// Cached instance
  /// ignore: unused_field
  caller.CallerWrapper? _caller;

  void _onPressedInitDartCaller() async {
    flutter_nekoton_bridge.initRustToDartCaller();
    _caller = flutter_nekoton_bridge.initCallerWrapper(CallerImpl());
  }

  List<CallerTestClassWrapper> testCallers = [];

  void _onPressedAddTestCaller() async {
    testCallers.add(await flutter_nekoton_bridge
        .initCallerTestClassWrapper(Random().nextInt(1000)));
    setState(() {});
  }

  void _onPressedTriggerTestCallers() {
    for (var c in testCallers) {
      c.caller.callSomeFunc();
    }
  }

  void _onPressedDartCallFunc0(bool needResult) async {
    flutter_nekoton_bridge.simpleCallFunc0(needResult: needResult);
  }

  void _onPressedDartCallFunc1(bool needResult) async {
    flutter_nekoton_bridge.simpleCallFunc1(needResult: needResult);
  }

  void _onPressedDartCallFunc2() async {
    flutter_nekoton_bridge.simpleCallFunc2();
  }

  void _onPressedTestInfo() async {
    flutter_nekoton_bridge.testLoggerInfo('test logger: info');
  }

  void _onPressedTestDebug() async {
    flutter_nekoton_bridge.testLoggerDebug('test logger: debug');
  }

  void _onPressedTestWarn() async {
    flutter_nekoton_bridge.testLoggerWarn('test logger: warn');
  }

  void _onPressedTestError() async {
    flutter_nekoton_bridge.testLoggerError('test logger: error');
  }

  void _onPressedTestPanic() async {
    flutter_nekoton_bridge.testLoggerPanic('test logger: panic');
  }

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
            child: Wrap(
              children: [
                // These buttons (with *Test* callbacks) SHOULD NOT be removed
                // or altered because it used in integration tests
                TextButton(
                  onPressed: () => _onPressedTestInfo(),
                  child: const Text('i'),
                ),
                TextButton(
                  onPressed: () => _onPressedTestDebug(),
                  child: const Text('d'),
                ),
                TextButton(
                  onPressed: () => _onPressedTestWarn(),
                  child: const Text('w'),
                ),
                TextButton(
                  onPressed: () => _onPressedTestError(),
                  child: const Text('e'),
                ),
                TextButton(
                  onPressed: () => _onPressedTestPanic(),
                  child: const Text('p'),
                ),
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
                  onPressed: () => _onPressedDartCallFunc0(true),
                  child: const Text('CallFunc0 WITH result'),
                ),
                TextButton(
                  onPressed: () => _onPressedDartCallFunc1(true),
                  child: const Text('CallFunc1 WITH result'),
                ),
                TextButton(
                  onPressed: () => _onPressedDartCallFunc0(false),
                  child: const Text('CallFunc0 WITHOUT result'),
                ),
                TextButton(
                  onPressed: () => _onPressedDartCallFunc1(false),
                  child: const Text('CallFunc1 WITHOUT result'),
                ),
                TextButton(
                  onPressed: () => _onPressedDartCallFunc2(),
                  child: const Text('CallFunc2'),
                ),
                TextButton(
                  onPressed: () => _onPressedAddTestCaller(),
                  child: const Text('Add test caller'),
                ),
                TextButton(
                  onPressed: () => _onPressedTriggerTestCallers(),
                  child: const Text('Trigger test callers'),
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
