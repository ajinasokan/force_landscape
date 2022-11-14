import 'force_landscape_platform_interface.dart';

class ForceLandscape {
  Future<void> forceLandscape() {
    return ForceLandscapePlatform.instance.forceLandscape();
  }

  Future<void> forcePortrait() {
    return ForceLandscapePlatform.instance.forcePortrait();
  }

  Future<void> allowPortraitOrLandscape() {
    return ForceLandscapePlatform.instance.allowPortraitOrLandscape();
  }
}
