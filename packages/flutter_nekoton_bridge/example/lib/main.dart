import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_nekoton_bridge/flutter_nekoton_bridge.dart';

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
  String? fromMyClass;

  @override
  void initState() {
    super.initState();

    // This setup thing SHOULD NOT be removed or altered because it used in integration tests
    setupLogger(
      level: LogLevel.trace,
      mobileLogger: false,
      logHandler: (logEntry) => debugPrint(
        'FromLib: ${logEntry.level} ${logEntry.tag} ${logEntry.msg} (lib_time=${logEntry.timeMillis})',
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Native Packages'),
        ),
        body: const Text('Hello World'),
      ),
    );
  }
}
