//
//  HeadacheDetailTableViewController.m
//  MyGraine
//
//  Created by Pete Maiser on 1/2/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "HeadacheDetailTableViewController.h"
#import "HeadacheTableViewCell.h"
#import "LabelButtonTableViewCell.h"
#import "LabelThreeButtonTableViewCell.h"

@interface HeadacheDetailTableViewController ()

@end

@implementation HeadacheDetailTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    UINib *nib1 = [UINib nibWithNibName:@"LabelButtonTableViewCell" bundle:nil];
    [self.tableView registerNib:nib1 forCellReuseIdentifier:@"LabelButtonTableViewCell"];
    
    UINib *nib2 = [UINib nibWithNibName:@"LabelThreeButtonTableViewCell" bundle:nil];
    [self.tableView registerNib:nib2 forCellReuseIdentifier:@"LabelThreeButtonTableViewCell"];
    
    if (!self.headache) {
        UIBarButtonItem *cancelButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemCancel target:self action:@selector(cancel:)];
        self.navigationItem.leftBarButtonItem = cancelButton;
        UIBarButtonItem *saveButton = [[UIBarButtonItem alloc] initWithBarButtonSystemItem:UIBarButtonSystemItemSave target:self action:@selector(save:)];
        self.navigationItem.rightBarButtonItem = saveButton;
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - Table view data source

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    if (section == 0) {
        return 1;
    } else {
        return 2;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"";
        case 1:
            return @"Pain";
        case 2:
            return @"Symptoms";
        case 3:
            return @"Acute Medications";
        default:
            return @"";
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    NSString *cellIdentifier = @"";
    switch (indexPath.section) {
        case 0:
            cellIdentifier = @"HeadacheTableViewCell";
            break;
        case 1:
            cellIdentifier = @"LabelThreeButtonTableViewCell";
            break;
        case 2:
            cellIdentifier = @"LabelButtonTableViewCell";
            break;
        case 3:
            cellIdentifier = @"LabelButtonTableViewCell";
            break;
        default:
            cellIdentifier = @"HeadacheTableViewCell";
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


#pragma mark - Navigation

- (IBAction)cancel:(id)sender {
    // Remove any items that were created, if needed
    
    // Dismiss view
    [self.navigationController popViewControllerAnimated:YES];
}

- (IBAction)save:(id)sender {
    // Save any items that were created, if needed
    
    // Dismiss view
    [self.navigationController popViewControllerAnimated:YES];
}

/*
// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
