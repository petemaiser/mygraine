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
    // The below will create bare lists -- subclasses need to override this method
    // to establish the lists particular to their specific "template"
    self.triggersList = [[NSMutableArray alloc] init];
    self.preventionMedicinesList = [[NSMutableArray alloc] init];
    self.preventionBehaviorsList = [[NSMutableArray alloc] init];
    self.symptomsList = [[NSMutableArray alloc] init];
    self.acuteMedicinesList = [[NSMutableArray alloc] init];
}

@end
