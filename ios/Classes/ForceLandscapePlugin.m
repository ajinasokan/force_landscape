#import "ForceLandscapePlugin.h"
#if __has_include(<force_landscape/force_landscape-Swift.h>)
#import <force_landscape/force_landscape-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "force_landscape-Swift.h"
#endif

@implementation ForceLandscapePlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftForceLandscapePlugin registerWithRegistrar:registrar];
}
@end
