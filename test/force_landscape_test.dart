// import 'package:flutter_test/flutter_test.dart';
// import 'package:force_landscape/force_landscape.dart';
// import 'package:force_landscape/force_landscape_platform_interface.dart';
// import 'package:force_landscape/force_landscape_method_channel.dart';
// import 'package:plugin_platform_interface/plugin_platform_interface.dart';

// class MockForceLandscapePlatform
//     with MockPlatformInterfaceMixin
//     implements ForceLandscapePlatform {
//   @override
//   Future<String?> getPlatformVersion() => Future.value('42');
// }

// void main() {
//   final ForceLandscapePlatform initialPlatform =
//       ForceLandscapePlatform.instance;

//   test('$MethodChannelForceLandscape is the default instance', () {
//     expect(initialPlatform, isInstanceOf<MethodChannelForceLandscape>());
//   });

//   test('getPlatformVersion', () async {
//     ForceLandscape forceLandscapePlugin = ForceLandscape();
//     MockForceLandscapePlatform fakePlatform = MockForceLandscapePlatform();
//     ForceLandscapePlatform.instance = fakePlatform;

//     expect(await forceLandscapePlugin.getPlatformVersion(), '42');
//   });
// }
