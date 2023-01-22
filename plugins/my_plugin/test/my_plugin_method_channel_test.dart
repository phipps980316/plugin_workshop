import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_plugin/my_plugin_method_channel.dart';

void main() {
  MethodChannelMyPlugin platform = MethodChannelMyPlugin();
  const MethodChannel channel = MethodChannel('my_plugin');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      switch (methodCall.method) {
        case "getPlatformVersion":
          return '42';
        case "getMessage":
          return 'Hello';
        case "getLocale":
          return 'en';
        default:
          return Exception("No such mock method");
      }
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });

  test('getMessage', () async {
    expect(await platform.getMessage(), 'Hello');
  });

  test('getLocale', () async {
    expect(await platform.getLocale(), 'en');
  });
}
