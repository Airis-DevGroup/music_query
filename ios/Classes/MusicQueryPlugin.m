#import "MusicQueryPlugin.h"
#if __has_include(<music_query/music_query-Swift.h>)
#import <music_query/music_query-Swift.h>
#else
// Support project import fallback if the generated compatibility header
// is not copied when this plugin is created as a library.
// https://forums.swift.org/t/swift-static-libraries-dont-copy-generated-objective-c-header/19816
#import "music_query-Swift.h"
#endif

@implementation MusicQueryPlugin
+ (void)registerWithRegistrar:(NSObject<FlutterPluginRegistrar>*)registrar {
  [SwiftMusicQueryPlugin registerWithRegistrar:registrar];
}
@end
