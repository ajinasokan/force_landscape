import Flutter
import UIKit

public class SwiftForceLandscapePlugin: NSObject, FlutterPlugin {
    public static func register(with registrar: FlutterPluginRegistrar) {
        let channel = FlutterMethodChannel(name: "force_landscape", binaryMessenger: registrar.messenger())
        let instance = SwiftForceLandscapePlugin()
        registrar.addMethodCallDelegate(instance, channel: channel)
    }
    
    public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
        var deviceOrientation : UIInterfaceOrientationMask = UIInterfaceOrientationMask.all;
        
        if call.method == "forceLandscape" {
            deviceOrientation = UIInterfaceOrientationMask.landscapeLeft;
       } else if call.method == "forcePortrait" {
           deviceOrientation = UIInterfaceOrientationMask.portrait;
       }

        if  #available(iOS 16.0, *)  {
            // UIApplication.shared.keyWindow?.rootViewController?.setNeedsUpdateOfSupportedInterfaceOrientations();
            for  scene in UIApplication.shared.connectedScenes {
                if let windowScene = scene as? UIWindowScene? {
                    let pref = UIWindowScene.GeometryPreferences.iOS.init();
                    pref.interfaceOrientations = deviceOrientation;
                    windowScene?.requestGeometryUpdate(pref);
                }
            }
        }  else {
            UIDevice.current.setValue(deviceOrientation.rawValue, forKey: "orientation");
            UIViewController.attemptRotationToDeviceOrientation();
        }
        
        result(nil)
    }
}
