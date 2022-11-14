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

  Future<void> initPlatformState() async {
    await _forceLandscapePlugin.forceLandscape();
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
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  _forceLandscapePlugin.forceLandscape();
                },
                child: const Text('forceLandscape'),
              ),
              ElevatedButton(
                onPressed: () {
                  _forceLandscapePlugin.forcePortrait();
                },
                child: const Text('forcePortrait'),
              ),
              ElevatedButton(
                onPressed: () {
                  _forceLandscapePlugin.allowPortraitOrLandscape();
                },
                child: const Text('allowPortraitOrLandscape'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
