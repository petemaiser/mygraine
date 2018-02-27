//
//  AppDelegate.m
//  MyGraine
//
//  Created by Pete Maiser on 1/1/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "AppDelegate.h"

// Remove NSLog when compiling for non-debug or non-simulator running
#if !defined(DEBUG) || !(TARGET_IPHONE_SIMULATOR)
#define NSLog(...)
#endif

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    SettingsStore *sStore = [[SettingsStore alloc] init];
    self.settingsStore = [NSKeyedUnarchiver unarchiveObjectWithFile:[sStore archiveFile]];
    if (self.settingsStore) {
        NSLog(@"Object with class %@ initialized from archive file.", NSStringFromClass([sStore class]));
    } else if (sStore) {
        self.settingsStore = sStore;
        NSLog(@"Object with class %@ newly initialized.", NSStringFromClass([sStore class]));
    }
    
    DataStore *dStore = [[DataStore alloc] init];
    self.dataStore = [NSKeyedUnarchiver unarchiveObjectWithFile:[dStore archiveFile]];
    if (self.dataStore) {
        NSLog(@"Object with class %@ initialized from archive file.", NSStringFromClass([dStore class]));
    } else if (dStore) {
        self.dataStore = dStore;
        NSLog(@"Object with class %@ newly initialized.", NSStringFromClass([dStore class]));
    }
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
    
    [self.settingsStore archive];
    [self.dataStore archive];
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
