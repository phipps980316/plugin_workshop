import 'my_plugin_platform_interface.dart';

class MyPlugin {
  Future<String?> getPlatformVersion() {
    return MyPluginPlatform.instance.getPlatformVersion();
  }

  Future<String?> getMessage() {
    return MyPluginPlatform.instance.getMessage();
  }

  Future<String?> getLocale() {
    return MyPluginPlatform.instance.getLocale();
  }

  Future<void> openSettings() {
    return MyPluginPlatform.instance.openSettings();
  }
}
