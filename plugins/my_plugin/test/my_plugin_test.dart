import 'package:flutter_test/flutter_test.dart';
import 'package:my_plugin/my_plugin.dart';
import 'package:my_plugin/my_plugin_platform_interface.dart';
import 'package:my_plugin/my_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockMyPluginPlatform
    with MockPlatformInterfaceMixin
    implements MyPluginPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getLocale() => Future.value('en');

  @override
  Future<String?> getMessage() => Future.value('Hello');

  @override
  Future<void> openSettings() {
    throw UnimplementedError();
  }
}

void main() {
  final MyPluginPlatform initialPlatform = MyPluginPlatform.instance;

  test('$MethodChannelMyPlugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelMyPlugin>());
  });

  test('getPlatformVersion', () async {
    MyPlugin myPlugin = MyPlugin();
    MockMyPluginPlatform fakePlatform = MockMyPluginPlatform();
    MyPluginPlatform.instance = fakePlatform;

    expect(await myPlugin.getPlatformVersion(), '42');
  });

  test('getLocale', () async {
    MyPlugin myPlugin = MyPlugin();
    MockMyPluginPlatform fakePlatform = MockMyPluginPlatform();
    MyPluginPlatform.instance = fakePlatform;

    expect(await myPlugin.getLocale(), 'en');
  });

  test('getMessage', () async {
    MyPlugin myPlugin = MyPlugin();
    MockMyPluginPlatform fakePlatform = MockMyPluginPlatform();
    MyPluginPlatform.instance = fakePlatform;

    expect(await myPlugin.getMessage(), 'Hello');
  });
}
