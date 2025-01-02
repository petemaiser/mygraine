//
//  MyGTableViewController.h
//  MyGraine
//
//  Created by Pete Maiser on 7/8/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "AppDelegate.h"
#import "SettingsStore.h"
#import "Template.h"
#import "DataStore.h"
#import "Month.h"
#import "Day.h"
#import "MyGTableViewCell.h"  //...TODO is this needed?

@interface MyGTableViewController : UITableViewController

@property (weak, nonatomic) SettingsStore *settings;
@property (weak, nonatomic) Template *template;
@property (weak, nonatomic) DataStore *data;

@end
