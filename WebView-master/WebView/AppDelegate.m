//
//  AppDelegate.h
//  WebView
//
//  Created by Özcan Akbulut on 01.11.13.
//  Copyright (c) 2013 Özcan Akbulut. All rights reserved.
//

#import "AppDelegate.h"
@import Firebase;
@import FirebaseMessaging;

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    [FIRApp configure];
    
    // Add an observer for handling a token refresh callback .
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(tokenRefreshCallback:) name:kFIRInstanceIDTokenRefreshNotification object:nil];
    
    
    // Request Permission for notifications from user
    UIUserNotificationType allNotificationTypes = (UIUserNotificationTypeSound | UIUserNotificationTypeAlert | UIUserNotificationTypeBadge);
    UIUserNotificationSettings *settings = [UIUserNotificationSettings settingsForTypes:allNotificationTypes categories:nil];
    [application registerUserNotificationSettings:settings];
    
    // Request a device token from Apple Push Notification Service
    [application registerForRemoteNotifications];
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    [[FIRMessaging messaging] disconnect];
    NSLog(@"Disconnected from FCM");
    
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
    
    [self connectToFirebase];
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

- (void)application:(UIApplication *)application didReceiveRemoteNotification:(NSDictionary *)userInfo fetchCompletionHandler:(void (^)(UIBackgroundFetchResult))completionHandler {
    // If you are receiving a Notification message while your app is in background,
    // this callback will not be fired till the user taps on the notification launching the application.
    
    // Print messageID
    NSLog(@"Message ID: %@", userInfo[@"gcm.message_ID"]);
    
    // Print Full message
    NSLog(@"%@", userInfo);
}

#pragma mark - Custom Firebase Code
- (void)tokenRefreshCallback:(NSNotification *)notification {
    NSString *refreshedToken = [[FIRInstanceID instanceID] token];
    NSLog(@"InstanceID token: %@", refreshedToken);
    
    // Connect to FCM since connection may have failed when attempted before having a token.
    [self connectToFirebase];
}

- (void)connectToFirebase {
    [[FIRMessaging messaging] connectWithCompletion:^(NSError *_Nullable error) {
        if (error != nil) {
            NSLog(@"Unable to connect to FCM. %@", error);
        } else {
            NSLog(@"Connected to FCM.");
        }
    }];
}



@end
