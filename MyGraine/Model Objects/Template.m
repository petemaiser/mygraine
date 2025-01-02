//
//  Template.m
//  MyGraine
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "Template.h"

@implementation Template

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        [self createLists];
    }
    
    return self;
}

- (void)createLists
{
    // Subclasses need to override this method to establish the lists particular to their specific "template"

    // Cell types:
    //    bool -- "Label and Button" cell type; contains a label and a checkbox.
    //    medicine -- "Label and Button" cell type; contains a composite custom label and a checkbox.
    //    tracker -- "Label and Three Buttons" cell type; contains a label and three checkboxes.
    //    picker -- "Label and Picker" cell type; contains a label and a picker.
    
    // The below will create bare lists
    self.triggersList = [[NSArray alloc] init];
    self.preventionMedicinesList = [[NSArray alloc] init];
    self.preventionBehaviorsList = [[NSArray alloc] init];
    self.painList = [[NSArray alloc] init];
    self.symptomsList = [[NSArray alloc] init];
    self.acuteMedicinesList = [[NSArray alloc] init];
}

@end
