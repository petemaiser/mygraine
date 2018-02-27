//
//  LabelPickerTableViewCell.h
//  MyGraine
//
//  Created by Pete Maiser on 2/10/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LabelPickerTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIPickerView *picker;

@end
