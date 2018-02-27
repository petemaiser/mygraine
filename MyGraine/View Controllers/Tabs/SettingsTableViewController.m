//
//  SettingsTableViewController.m
//  MyGraine
//
//  Created by Pete Maiser on 1/7/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "SettingsTableViewController.h"
#import "AppDelegate.h"

@interface SettingsTableViewController ()
    @property (weak, nonatomic) SettingsStore *settings;
    @property (weak, nonatomic) DataStore *data;
@end

@implementation SettingsTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    AppDelegate *appDelegate = (AppDelegate *)[[UIApplication sharedApplication] delegate];
    self.settings = appDelegate.settingsStore;
    self.data = appDelegate.dataStore;
    
    UINib *nib3 = [UINib nibWithNibName:@"LabelFieldTableViewCell" bundle:nil];
    [self.tableView registerNib:nib3 forCellReuseIdentifier:@"LabelFieldTableViewCell"];

    UINib *nib4 = [UINib nibWithNibName:@"LabelPickerTableViewCell" bundle:nil];
    [self.tableView registerNib:nib4 forCellReuseIdentifier:@"LabelPickerTableViewCell"];

    UINib *nib5 = [UINib nibWithNibName:@"LabelSwitchTableViewCell" bundle:nil];
    [self.tableView registerNib:nib5 forCellReuseIdentifier:@"LabelSwitchTableViewCell"];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 3;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"Form Template";
        case 1:
            return @"Triggers";
        case 2:
            return @"Prevention Medicines";
        default:
            return @"";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"";
    switch (indexPath.section) {
        case 0:
            cellIdentifier = @"LabelFieldTableViewCell";
            break;
        case 1:
            cellIdentifier = @"LabelSwitchTableViewCell";
            break;
        case 2:
            cellIdentifier = @"LabelPickerTableViewCell";
            break;
        default:
            cellIdentifier = @"LabelFieldTableViewCell";
            break;
    }
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier forIndexPath:indexPath];
    return cell;
}

/*
// Override to support conditional editing of the table view.
- (BOOL)tableView:(UITableView *)tableView canEditRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the specified item to be editable.
    return YES;
}
*/

/*
// Override to support editing the table view.
- (void)tableView:(UITableView *)tableView commitEditingStyle:(UITableViewCellEditingStyle)editingStyle forRowAtIndexPath:(NSIndexPath *)indexPath {
    if (editingStyle == UITableViewCellEditingStyleDelete) {
        // Delete the row from the data source
        [tableView deleteRowsAtIndexPaths:@[indexPath] withRowAnimation:UITableViewRowAnimationFade];
    } else if (editingStyle == UITableViewCellEditingStyleInsert) {
        // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
    }   
}
*/

/*
// Override to support rearranging the table view.
- (void)tableView:(UITableView *)tableView moveRowAtIndexPath:(NSIndexPath *)fromIndexPath toIndexPath:(NSIndexPath *)toIndexPath {
}
*/

/*
// Override to support conditional rearranging of the table view.
- (BOOL)tableView:(UITableView *)tableView canMoveRowAtIndexPath:(NSIndexPath *)indexPath {
    // Return NO if you do not want the item to be re-orderable.
    return YES;
}
*/

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
