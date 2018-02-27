//
//  DailyRoutineTableViewCell.h
//  MyGraine
//
//  Created by Pete Maiser on 2/10/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface DailyRoutineTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *DateLabel;
@property (weak, nonatomic) IBOutlet UIButton *leftButton;
@property (weak, nonatomic) IBOutlet UIButton *rightButton;

@end
