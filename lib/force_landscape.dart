import 'force_landscape_platform_interface.dart';

class ForceLandscape {
  Future<void> forceLandscape(bool force) {
    return ForceLandscapePlatform.instance.forceLandscape(force);
  }
}
