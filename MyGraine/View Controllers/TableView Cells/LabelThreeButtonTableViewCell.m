//
//  LabelThreeButtonTableViewCell.m
//  MyGraine
//
//  Created by Pete Maiser on 2/10/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "LabelThreeButtonTableViewCell.h"

@implementation LabelThreeButtonTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (void)setTemplateDictionary:(NSDictionary *)templateDictionary
{
    super.templateDictionary = templateDictionary;
    NSString *label = templateDictionary[@"label"];
    if ( (!label) ||
        ([label isEqualToString:@""]) )  {
        label = @"[setup in settings]";
    }
    self.label.text = label;
}

- (IBAction)button1Pressed:(id)sender
{
    if ([self.button1 isSelected]) {
        [self.button1 setSelected:NO];
        // change the dictionary value
    } else {
        [self.button1 setSelected:YES];
        // change the dictionary value
    }
}

- (IBAction)button2Pressed:(id)sender
{
    if ([self.button2 isSelected]) {
        [self.button2 setSelected:NO];
        // change the dictionary value
    } else {
        [self.button2 setSelected:YES];
        // change the dictionary value
    }
}

- (IBAction)button3Pressed:(id)sender
{
    if ([self.button3 isSelected]) {
        [self.button3 setSelected:NO];
        // change the dictionary value
    } else {
        [self.button3 setSelected:YES];
        // change the dictionary value
    }
}

@end
