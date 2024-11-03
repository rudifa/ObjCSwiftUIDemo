// SceneDelegate.m
#import "SceneDelegate.h"
#import "DemoViewController.h"
#import <UIKit/UIKit.h>

@interface SceneDelegate ()
@end

@implementation SceneDelegate

- (void)scene:(UIScene *)scene
    willConnectToSession:(UISceneSession *)session
                 options:(UISceneConnectionOptions *)connectionOptions {
  if ([scene isKindOfClass:[UIWindowScene class]]) {
    UIWindowScene *windowScene = (UIWindowScene *)scene;
    self.window = [[UIWindow alloc] initWithWindowScene:windowScene];

    // Create and set the root view controller
    DemoViewController *rootViewController = [[DemoViewController alloc] init];
    rootViewController.message = @"Hello from Objective-C!";

    self.window.rootViewController = rootViewController;
    [self.window makeKeyAndVisible];
  }
}

// Optional scene lifecycle methods
- (void)sceneDidDisconnect:(UIScene *)scene {
  // Called as the scene is being released by the system.
}

- (void)sceneDidBecomeActive:(UIScene *)scene {
  // Called when the scene has moved from an inactive state to an active state.
}

- (void)sceneWillResignActive:(UIScene *)scene {
  // Called when the scene will move from an active state to an inactive state.
}

- (void)sceneWillEnterForeground:(UIScene *)scene {
  // Called as the scene transitions from the background to the foreground.
}

- (void)sceneDidEnterBackground:(UIScene *)scene {
  // Called as the scene transitions from the foreground to the background.
}

@end
