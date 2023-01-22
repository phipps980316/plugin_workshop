import Flutter
import UIKit

public class SwiftMyPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "my_plugin", binaryMessenger: registrar.messenger())
    let instance = SwiftMyPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
      case "getPlatformVersion" :
        result("iOS " + UIDevice.current.systemVersion);
      case "getMessage" :
        result("Hello from iOS");
      case "getLocale" :
        result(Locale.current.languageCode)
    case "openSettings" :
        if let url = URL(string: UIApplication.openSettingsURLString) {
            UIApplication.shared.open(url, options: [:], completionHandler: { (successful) in
                result(successful)
            })
        } else {
            result(false)
        }
      default:
        result(FlutterMethodNotImplemented)
    }
  }
}
