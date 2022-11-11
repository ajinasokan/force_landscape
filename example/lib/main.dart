import 'package:flutter/material.dart';
import 'dart:async';

import 'package:flutter/services.dart';
import 'package:force_landscape/force_landscape.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _forceLandscapePlugin = ForceLandscape();
  bool force = false;

  Future<void> initPlatformState() async {
    force = !force;
    await _forceLandscapePlugin.forceLandscape(force);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Plugin example app'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: initPlatformState,
            child: Text('${force ? "Disable" : "Enable"} Landscape'),
          ),
        ),
      ),
    );
  }
}
