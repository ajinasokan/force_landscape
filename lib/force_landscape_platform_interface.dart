import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'force_landscape_method_channel.dart';

abstract class ForceLandscapePlatform extends PlatformInterface {
  /// Constructs a ForceLandscapePlatform.
  ForceLandscapePlatform() : super(token: _token);

  static final Object _token = Object();

  static ForceLandscapePlatform _instance = MethodChannelForceLandscape();

  /// The default instance of [ForceLandscapePlatform] to use.
  ///
  /// Defaults to [MethodChannelForceLandscape].
  static ForceLandscapePlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [ForceLandscapePlatform] when
  /// they register themselves.
  static set instance(ForceLandscapePlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<void> forceLandscape(bool force) {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }
}
