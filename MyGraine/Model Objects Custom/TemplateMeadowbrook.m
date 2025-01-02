//
//  TemplateMeadowbrook.m
//  MyGraine
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "TemplateMeadowbrook.h"

@implementation TemplateMeadowbrook

- (NSString *)templateName {
    return @"Meadowbrook";
}

- (NSURL *)googleTemplate {
    return [[NSURL alloc] initWithString:@""];
}

- (void)createLists
{
    // Subclasses need to override this method to establish the lists particular to their specific "template"
    
    // Cell types:
    //    bool -- "LabelButtonTableViewCell" cell type; contains a label and a checkbox.
    //    medicine -- "LabelButtonTableViewCell" cell type; contains a composite custom label and a checkbox.
    //    tracker -- "LabelThreeButtonTableViewCell" cell type; contains a label and three checkboxes.
    //    picker -- "LabelPickerTableViewCell" cell type; contains a label and a picker.
    
    // LabelFieldTableViewCell
    // LabelSwitchTableViewCell
    
    // Triggers
    NSDictionary *trig1 = @{
                            @"type" : @"bool",
                            @"label" : @"Menstrual Period",
                            @"defaultValue" : @NO,
                            @"cellIdentifier" : @"LabelButtonTableViewCell",
                            @"enabled" : @YES
                            };
    
    // Prevention Medicines
    NSDictionary *pmX1 =   @{
                            @"type" : @"medicine",
                            @"defaultLabel" : @"setup in settings",
                            @"medicine" : @"",
                            @"dose" : @"",
                            @"defaultValue" : @NO,
                            @"cellIdentifier" : @"LabelButtonTableViewCell",
                            @"enabled" : @YES
                            };
    NSDictionary *pmX2 =   @{
                             @"type" : @"medicine",
                             @"defaultLabel" : @"setup in settings",
                             @"medicine" : @"",
                             @"dose" : @"",
                             @"defaultValue" : @NO,
                             @"cellIdentifier" : @"LabelButtonTableViewCell",
                             @"enabled" : @YES
                             };
    NSDictionary *pmX3 =   @{
                             @"type" : @"medicine",
                             @"defaultLabel" : @"setup in settings",
                             @"medicine" : @"",
                             @"dose" : @"",
                             @"defaultValue" : @NO,
                             @"cellIdentifier" : @"LabelButtonTableViewCell",
                             @"enabled" : @YES
                             };

    // Prevention Behaviors
    NSDictionary *pbX1 =   @{
                            @"type" : @"bool",
                            @"label" : @"Exercise",
                            @"defaultValue" : @NO,
                            @"cellIdentifier" : @"LabelButtonTableViewCell",
                            @"enabled" : @YES
                            };
    NSDictionary *pbX2 =   @{
                             @"type" : @"bool",
                             @"label" : @"Relaxation",
                             @"defaultValue" : @NO,
                             @"cellIdentifier" : @"LabelButtonTableViewCell",
                             @"enabled" : @YES
                             };
    
    // Pain
    NSDictionary *pain1 = @{
                            @"type" : @"tracker",
                            @"label" : @"Morning",
                            @"defaultValue" : @0,
                            @"cellIdentifier" : @"LabelThreeButtonTableViewCell",
                            };
    NSDictionary *pain2 = @{
                            @"type" : @"tracker",
                            @"label" : @"Afternoon",
                            @"defaultValue" : @0,
                            @"cellIdentifier" : @"LabelThreeButtonTableViewCell",
                            };
    NSDictionary *pain3 = @{
                            @"type" : @"tracker",
                            @"label" : @"Evening/Night",
                            @"defaultValue" : @0,
                            @"cellIdentifier" : @"LabelThreeButtonTableViewCell",
                            };
    NSDictionary *pain4 = @{
                            @"type" : @"tracker",
                            @"label" : @"Duration",
                            @"defaultValue" : @0,
                            @"cellIdentifier" : @"LabelPickerTableViewCell",
                            };
    NSDictionary *pain5 = @{
                            @"type" : @"tracker",
                            @"label" : @"Disability for Day",
                            @"defaultValue" : @0,
                            @"cellIdentifier" : @"LabelPickerTableViewCell",
                            };
    
    // Symptoms
    // TODO...Remove Symptoms for Meadowbrook Template
    NSDictionary *symt1 = @{
                            @"type" : @"bool",
                            @"label" : @"Aura",
                            @"defaultValue" : @NO,
                            @"cellIdentifier" : @"LabelButtonTableViewCell",
                            @"enabled" : @YES
                            };
    NSDictionary *symt2 = @{
                            @"type" : @"bool",
                            @"label" : @"Pain one side only",
                            @"defaultValue" : @NO,
                            @"cellIdentifier" : @"LabelButtonTableViewCell",
                            @"enabled" : @YES
                            };
    
    // Acute Medicines
    NSDictionary *amr1a = @{
                            @"type" : @"medicine",
                            @"defaultLabel" : @"setup in settings",
                            @"medicine" : @"",
                            @"dose" : @"",
                            @"defaultValue" : @NO,
                            @"cellIdentifier" : @"LabelButtonTableViewCell",
                            @"enabled" : @YES
                            };
    NSDictionary *amr1b = @{
                            @"type" : @"tracker",
                            @"label" : @"Relief",
                            @"defaultValue" : @0,
                            @"cellIdentifier" : @"LabelThreeButtonTableViewCell",
                            @"enabled" : @"If Previous" // If the previos list item is enabled, then so shall this one be
                            };
    NSDictionary *amr2a = @{
                            @"type" : @"medicine",
                            @"defaultLabel" : @"setup in settings",
                            @"medicine" : @"",
                            @"dose" : @"",
                            @"defaultValue" : @NO,
                            @"cellIdentifier" : @"LabelButtonTableViewCell",
                            @"enabled" : @YES
                            };
    NSDictionary *amr2b = @{
                            @"type" : @"tracker",
                            @"label" : @"Relief",
                            @"defaultValue" : @0,
                            @"cellIdentifier" : @"LabelThreeButtonTableViewCell",
                            @"enabled" : @"If Previous" // If the previos list item is enabled, then so shall this one be
                            };
    NSDictionary *amr3a = @{
                            @"type" : @"medicine",
                            @"defaultLabel" : @"setup in settings",
                            @"medicine" : @"",
                            @"dose" : @"",
                            @"defaultValue" : @NO,
                            @"cellIdentifier" : @"LabelButtonTableViewCell",
                            @"enabled" : @YES
                            };
    NSDictionary *amr3b = @{
                            @"type" : @"tracker",
                            @"label" : @"Relief",
                            @"defaultValue" : @0,
                            @"cellIdentifier" : @"LabelThreeButtonTableViewCell",
                            @"enabled" : @"If Previous" // If the previos list item is enabled, then so shall this one be
                            };
    NSDictionary *amr4a = @{
                            @"type" : @"medicine",
                            @"medicine" : @"",
                            @"defaultLabel" : @"setup in settings",
                            @"dose" : @"",
                            @"defaultValue" : @NO,
                            @"cellIdentifier" : @"LabelButtonTableViewCell",
                            @"enabled" : @YES
                            };
    NSDictionary *amr4b = @{
                            @"type" : @"tracker",
                            @"label" : @"Relief",
                            @"defaultValue" : @0,
                            @"cellIdentifier" : @"LabelThreeButtonTableViewCell",
                            @"enabled" : @"If Previous" // If the previos list item is enabled, then so shall this one be
                            };
    NSDictionary *amr5a = @{
                            @"type" : @"medicine",
                            @"medicine" : @"",
                            @"defaultLabel" : @"setup in settings",
                            @"dose" : @"",
                            @"defaultValue" : @NO,
                            @"cellIdentifier" : @"LabelButtonTableViewCell",
                            @"enabled" : @YES
                            };
    NSDictionary *amr5b = @{
                            @"type" : @"tracker",
                            @"label" : @"Relief",
                            @"defaultValue" : @0,
                            @"cellIdentifier" : @"LabelThreeButtonTableViewCell",
                            @"enabled" : @"If Previous" // If the previos list item is enabled, then so shall this one be
                            };
    
    self.triggersList = [[NSMutableArray alloc] initWithObjects:trig1,nil];
    self.preventionMedicinesList = [[NSMutableArray alloc] initWithObjects:pmX1,pmX2,pmX3,nil];
    self.preventionBehaviorsList = [[NSMutableArray alloc] initWithObjects:pbX1,pbX2,nil];
    self.painList = [[NSArray alloc] initWithObjects:pain1,pain2,pain3,pain4,pain5,nil];
    self.symptomsList = [[NSMutableArray alloc] initWithObjects:symt1,symt2, nil];
    self.acuteMedicinesList = [[NSMutableArray alloc] initWithObjects:amr1a,amr1b,amr2a,amr2b,amr3a,amr3b,amr4a,amr4b,amr5a,amr5b,nil];
}

@end
