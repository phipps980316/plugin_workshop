import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

import 'my_plugin_platform_interface.dart';

/// An implementation of [MyPluginPlatform] that uses method channels.
class MethodChannelMyPlugin extends MyPluginPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('my_plugin');

  @override
  Future<String?> getPlatformVersion() async {
    final version =
        await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<String?> getMessage() async {
    final message = await methodChannel.invokeMethod<String>('getMessage');
    return message;
  }

  @override
  Future<String?> getLocale() async {
    final locale = await methodChannel.invokeMethod<String>('getLocale');
    return locale;
  }

  @override
  Future<void> openSettings() async {
    await methodChannel.invokeMethod<bool>('openSettings');
  }
}
