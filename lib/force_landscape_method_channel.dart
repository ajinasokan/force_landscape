import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'force_landscape_platform_interface.dart';

/// An implementation of [ForceLandscapePlatform] that uses method channels.
class MethodChannelForceLandscape extends ForceLandscapePlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('force_landscape');

  @override
  Future<void> forceLandscape() async {
    await methodChannel.invokeMethod<void>('forceLandscape');
  }

  @override
  Future<void> forcePortrait() async {
    await methodChannel.invokeMethod<void>('forcePortrait');
  }

  @override
  Future<void> allowPortraitOrLandscape() async {
    await methodChannel.invokeMethod<void>('allowPortraitOrLandscape');
  }
}
