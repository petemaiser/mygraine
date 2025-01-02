//
//  LabelFieldTableViewCell.m
//  MyGraine
//
//  Created by Pete Maiser on 2/10/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "LabelFieldTableViewCell.h"

@implementation LabelFieldTableViewCell

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

@end
