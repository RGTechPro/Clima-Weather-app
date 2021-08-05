//
//  Generated file. Do not edit.
//

#import "GeneratedPluginRegistrant.h"

#if __has_include(<flutter_config/FlutterConfigPlugin.h>)
#import <flutter_config/FlutterConfigPlugin.h>
#else
@import flutter_config;
#endif

#if __has_include(<geolocator/GeolocatorPlugin.h>)
#import <geolocator/GeolocatorPlugin.h>
#else
@import geolocator;
#endif

@implementation GeneratedPluginRegistrant

+ (void)registerWithRegistry:(NSObject<FlutterPluginRegistry>*)registry {
  [FlutterConfigPlugin registerWithRegistrar:[registry registrarForPlugin:@"FlutterConfigPlugin"]];
  [GeolocatorPlugin registerWithRegistrar:[registry registrarForPlugin:@"GeolocatorPlugin"]];
}

@end
