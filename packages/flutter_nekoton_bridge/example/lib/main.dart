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

  // TODO: remove all non-integration test related things FROM here

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

  // TODO: remove all non-integration test related things TO here

  // These buttons (with *Test* callbacks) SHOULD NOT be removed
  // or altered because it used in integration tests
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

  void _testCallerCallTest0Async(bool needResult) async {
    final result = await flutter_nekoton_bridge.testCallerCallTest0Async(
        'testCallerCallTest0Async $needResult', needResult);
    debugPrint('result ${result.toDynamic()}');
  }

  void _testCallerCallTest0Sync(bool needResult) async {
    final result = await flutter_nekoton_bridge.testCallerCallTest0Sync(
        'testCallerCallTest0Sync $needResult', needResult);
    debugPrint('result ${result.toDynamic()}');
  }

  void _testCallerCallTest1Async(bool needResult) async {
    final futures = <Future<flutter_nekoton_bridge.DynamicValue>>[];
    for (int i = 0; i < 7; i++) {
      futures.add(flutter_nekoton_bridge.testCallerCallTest1Async(
          'testCallerCallTest1Async $needResult', needResult));
    }
    final results = await Future.wait(futures);
    for (var result in results) {
      debugPrint('result ${result.toDynamic()}');
    }
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
            child: Column(
              children: [
                const Text(
                  'logger-related',
                  style: textStyle,
                ),
                Wrap(
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
                  ],
                ),
                const Text(
                  'caller-related',
                  style: textStyle,
                ),
                Wrap(
                  children: [
                    // These buttons (with *Test* callbacks) SHOULD NOT be removed
                    // or altered because it used in integration tests
                    TextButton(
                      onPressed: _onPressedInitDartCaller,
                      child: const Text('initDartCaller'),
                    ),
                    TextButton(
                      onPressed: () => _testCallerCallTest0Async(false),
                      child: const Text('Test0Async'),
                    ),
                    TextButton(
                      onPressed: () => _testCallerCallTest0Async(true),
                      child: const Text('Test0AsyncResult'),
                    ),
                    TextButton(
                      onPressed: () => _testCallerCallTest0Sync(false),
                      child: const Text('Test0Sync'),
                    ),
                    // WARNING! You should not run a method synchronously,
                    // waiting for its result!!!
                    TextButton(
                      onPressed: () => _testCallerCallTest0Sync(true),
                      child: const Text('Test0SyncResult'),
                    ),
                    TextButton(
                      onPressed: () => _testCallerCallTest1Async(true),
                      child: const Text('Test1AsyncResult'),
                    ),
                  ],
                ),
                // TODO: remove all non-integration test related things FROM here
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
                // TODO: remove all non-integration test related things TO here
              ],
            ),
          ),
        ),
      ),
    );
  }
}
