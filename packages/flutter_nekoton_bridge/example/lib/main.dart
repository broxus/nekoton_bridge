import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/example_related/example_related_lib.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

import 'caller_impl.dart';

Future<void> main() async {
  await NekotonBridge.init();
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
    sumResult = simpleAdderSync(a: 1, b: 2);
    sumAsyncResult = simpleAdder(a: 3, b: 4);

    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    setupLogger(
      level: LogLevel.trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );
  }

  // TODO: remove all non-integration test related things FROM here

  void _onPressed() async {
    fromMyClass = await queryMyClass();
    setState(() {});
  }

  void _onPressedLog() async {
    debugPrint('Log!');
    simpleLog(string: 'From dart: ${DateTime.now().toIso8601String()}');
  }

  void _onPressedPanic() async {
    debugPrint('Panic!');
    simplePanic();
  }

  /// Cached instance
  /// ignore: unused_field
  CallerWrapper? _caller;

  void _onPressedInitDartCaller() async {
    initRustToDartCaller();
    _caller = initCallerWrapper(CallerImpl());
  }

  List<CallerTestClassWrapper> testCallers = [];

  void _onPressedAddTestCaller() async {
    testCallers.add(await initCallerTestClassWrapper(Random().nextInt(1000)));
    setState(() {});
  }

  void _onPressedTriggerTestCallers() {
    for (var c in testCallers) {
      c.caller.callSomeFunc();
    }
  }

  void _onPressedDartCallFunc0(bool needResult) async {
    simpleCallFunc0(needResult: needResult);
  }

  void _onPressedDartCallFunc1(bool needResult) async {
    simpleCallFunc1(needResult: needResult);
  }

  void _onPressedDartCallFunc2() async {
    simpleCallFunc2();
  }

  void _onPressedDartCallFunc3() async {
    simpleCallFunc3();
    simpleCallFunc3();
    simpleCallFunc3();
    simpleCallFunc3();
    simpleCallFunc3();
    simpleCallFunc3();
    simpleCallFunc3();
    simpleCallFunc3();
    simpleCallFunc3();
    simpleCallFunc3();
    simpleCallFunc3();
    simpleCallFunc3();
  }

  // TODO: remove all non-integration test related things TO here

  // These buttons (with *Test* callbacks) SHOULD NOT be removed
  // or altered because it used in integration tests
  void _onPressedTestInfo() async {
    testLoggerInfo(string: 'test logger: info');
  }

  void _onPressedTestDebug() async {
    testLoggerDebug(string: 'test logger: debug');
  }

  void _onPressedTestWarn() async {
    testLoggerWarn(string: 'test logger: warn');
  }

  void _onPressedTestError() async {
    testLoggerError(string: 'test logger: error');
  }

  void _onPressedTestPanic() async {
    testLoggerPanic(string: 'test logger: panic');
  }

  void _testCallerCallTest0Async(bool needResult) async {
    final result = await testCallerCallTest0Async(
      string: 'testCallerCallTest0Async $needResult',
      needResult: needResult,
    );
    debugPrint('result ${result.toDynamic()}');
  }

  void _testCallerCallTest0Sync(bool needResult) {
    final result = testCallerCallTest0Sync(
      string: 'testCallerCallTest0Sync $needResult',
      needResult: needResult,
    );
    debugPrint('result ${result.toDynamic()}');
  }

  void _testCallerCallTest1Async(bool needResult) async {
    final futures = <Future<DynamicValue>>[];
    for (int i = 0; i < 7; i++) {
      futures.add(testCallerCallTest1Async(
        string: 'testCallerCallTest1Async $needResult',
        needResult: needResult,
      ));
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
                TextButton(
                  onPressed: () => _onPressedDartCallFunc3(),
                  child: const Text('CallFunc3'),
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
