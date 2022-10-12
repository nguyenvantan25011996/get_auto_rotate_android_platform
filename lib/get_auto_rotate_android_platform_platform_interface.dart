import 'package:plugin_platform_interface/plugin_platform_interface.dart';

import 'get_auto_rotate_android_platform_method_channel.dart';

abstract class GetAutoRotateAndroidPlatformPlatform extends PlatformInterface {
  /// Constructs a GetAutoRotateAndroidPlatformPlatform.
  GetAutoRotateAndroidPlatformPlatform() : super(token: _token);

  static final Object _token = Object();

  static GetAutoRotateAndroidPlatformPlatform _instance = MethodChannelGetAutoRotateAndroidPlatform();

  /// The default instance of [GetAutoRotateAndroidPlatformPlatform] to use.
  ///
  /// Defaults to [MethodChannelGetAutoRotateAndroidPlatform].
  static GetAutoRotateAndroidPlatformPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [GetAutoRotateAndroidPlatformPlatform] when
  /// they register themselves.
  static set instance(GetAutoRotateAndroidPlatformPlatform instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<bool> getAutoRotate() {
    throw UnimplementedError('getAutoRotate() has not been implemented.');
  }
}
