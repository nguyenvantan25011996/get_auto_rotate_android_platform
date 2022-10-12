
import 'get_auto_rotate_android_platform_platform_interface.dart';

class GetAutoRotateAndroidPlatform {
  Future<bool> getAutoRotate() {
    return GetAutoRotateAndroidPlatformPlatform.instance.getAutoRotate();
  }
}
