import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'get_auto_rotate_android_platform_platform_interface.dart';

/// An implementation of [GetAutoRotateAndroidPlatformPlatform] that uses method channels.
class MethodChannelGetAutoRotateAndroidPlatform extends GetAutoRotateAndroidPlatformPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('get_auto_rotate_android_platform');

  @override
  Future<bool> getAutoRotate() async {
    final version = await methodChannel.invokeMethod<bool>('getAutoRotate') ?? false;
    return version;
  }
}
