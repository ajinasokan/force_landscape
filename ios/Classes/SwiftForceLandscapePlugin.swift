import Flutter
import UIKit

public class SwiftForceLandscapePlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "force_landscape", binaryMessenger: registrar.messenger())
        let instance = SwiftForceLandscapePlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        let force = call.arguments as! Bool;
        
        if #available(iOS 16.0, *) {
            let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene
            if force {
                windowScene?.requestGeometryUpdate(.iOS(interfaceOrientations: .landscapeLeft))
            } else {
                windowScene?.requestGeometryUpdate(.iOS(interfaceOrientations: .portrait))
            }
        } else {
            if force {
                let value = UIInterfaceOrientation.landscapeLeft.rawValue
                UIDevice.current.setValue(value, forKey: "orientation")
            } else {
                let value = UIInterfaceOrientation.portrait.rawValue
                UIDevice.current.setValue(value, forKey: "orientation")
            }
        }
        
        result(nil)
    }
}
