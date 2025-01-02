//
//  MyGTableViewController.m
//  MyGraine
//
//  Created by Pete Maiser on 7/8/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "MyGTableViewController.h"

@interface MyGTableViewController ()

@end

@implementation MyGTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.settings = appDelegate.settingsStore;
    self.template = [self.settings currentTemplate];
    self.data = appDelegate.dataStore;
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

@end
