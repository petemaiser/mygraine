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
    
    self.triggersList = [[NSMutableArray alloc] initWithObjects:@"", nil];
    self.preventionMedicinesList = [[NSMutableArray alloc] initWithObjects:@"", nil];
    self.preventionBehaviorsList = [[NSMutableArray alloc] initWithObjects:@"", nil];
    self.symptomsList = [[NSMutableArray alloc] initWithObjects:@"", nil];
    self.acuteMedicinesList = [[NSMutableArray alloc] initWithObjects:@"", nil];
}

@end
