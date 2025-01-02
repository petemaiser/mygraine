//
//  LabelButtonTableViewCell.m
//  MyGraine
//
//  Created by Pete Maiser on 2/10/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "LabelButtonTableViewCell.h"

@implementation LabelButtonTableViewCell

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
        NSString *defaultLabel = templateDictionary[@"defaultLabel"];
        self.label.text = defaultLabel;
    } else {
        self.label.text = label;
    }
}

- (IBAction)buttonPressed:(id)sender
{    
    if ([self.button isSelected]) {
        [self.button setSelected:NO];
       // change the dictionary value
    } else {
        [self.button setSelected:YES];
       // change the dictionary value
    }
}

//- (void)reloadData
//{
//    [super reloadData];
//    self.label.text = self.templateDictionary[@"label"];
//}

@end
