//
//  DailyRoutineTableViewController.m
//  MyGraine
//
//  Created by Pete Maiser on 1/1/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "DailyRoutineTableViewController.h"
#import "DailyRoutineTableViewCell.h"

@interface DailyRoutineTableViewController ()

@end

@implementation DailyRoutineTableViewController

- (void)viewDidLoad {
    [super viewDidLoad];
        
    UINib *nib1 = [UINib nibWithNibName:@"LabelButtonTableViewCell" bundle:nil];
    [self.tableView registerNib:nib1 forCellReuseIdentifier:@"LabelButtonTableViewCell"];
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
    switch (section) {
        case 0:
            return 1;
        case 1:
            return [self.template.triggersList count];
        case 2:
            return [self.template.preventionMedicinesList count];
        case 3:
            return [self.template.preventionBehaviorsList count];
        default:
            return 0;
    }
}

- (NSString *)tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section
{
    switch (section) {
        case 0:
            return @"";
        case 1:
            return @"Triggers";
        case 2:
            return @"Prevention Medicines";
        case 3:
            return @"Prevention Behaviors";
        default:
            return @"";
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    Month *month = self.data.months[0];
    Day *day = month.days[0];
    
    if (indexPath.section == 0) {
        DailyRoutineTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"DailyRoutineTableViewCell" forIndexPath:indexPath];
        NSDateFormatter *dateFormatter = [[NSDateFormatter alloc] init];
        [dateFormatter setDateStyle:NSDateFormatterMediumStyle];
        [dateFormatter setTimeStyle:NSDateFormatterNoStyle];
        cell.DateLabel.text = [dateFormatter stringFromDate:day.date];
        return (cell);
    } else {
        MyGTableViewCell *cell = nil;
        NSArray *list = nil;
    
        switch (indexPath.section) {
        case 0:
            break;
        case 1:
            list = self.template.triggersList;
            break;
        case 2:
            list = self.template.preventionMedicinesList;
            break;
        case 3:
            list = self.template.preventionBehaviorsList;
            break;
        default:
            break;
        }
        
        // Identify the correct template, and create the cell
        NSDictionary *templateDictionary = list[indexPath.row];
        cell = [tableView dequeueReusableCellWithIdentifier:templateDictionary[@"cellIdentifier"] forIndexPath:indexPath];
        
        // Link the correct data store dictionary to the cell
        // ...need to change the triggers Dictionary into a Triggers List?
        cell.templateDictionary = templateDictionary;
        cell.dataDictionary = day.triggersDictionary;
     
        return cell;
    }
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
