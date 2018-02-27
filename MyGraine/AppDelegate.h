//
//  AppDelegate.h
//  MyGraine
//
//  Created by Pete Maiser on 1/1/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "SettingsStore.h"
#import "DataStore.h"

@interface AppDelegate : UIResponder <UIApplicationDelegate>

@property (strong, nonatomic) UIWindow *window;
@property (strong, nonatomic) SettingsStore *settingsStore;
@property (strong, nonatomic) DataStore *dataStore;

@end

