// SceneDelegate.m
#import "SceneDelegate.h"
#import <SwiftUI/SwiftUI.h>
#import "ObjCSwiftUIDemo-Swift.h" // This will be auto-generated and contain our Swift interfaces

@implementation SceneDelegate

- (void)scene:(UIScene *)scene
willConnectToSession:(UISceneSession *)session
       options:(UISceneConnectionOptions *)connectionOptions {
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];

    // Create the SwiftUI view and host it in a UIHostingController
    ContentView *contentView = [[ContentView alloc] init];
    UIHostingController *hostingController = [[UIHostingController alloc] initWithRootView:contentView];

    self.window.rootViewController = hostingController;
    [self.window makeKeyAndVisible];
}

@end
