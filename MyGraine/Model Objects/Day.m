//
//  Day.m
//  MyGraine
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "Day.h"
#import "Template.h"

@interface Day ()
    @property (nonatomic, copy) NSDate *privateDate;
    @property (nonatomic, copy) NSString *privateTemplateName;
@end

@implementation Day

- (instancetype)initWithDate:(NSDate *)date
{
    self = [super init];
    
    if (self) {
        self.privateDate = date;
        self.privateTemplateName = nil;
        
        self.triggersDictionary = nil;
        self.preventionMedicinesDictionary = nil;
        self.preventionBehaviorsDictionary = nil;
        self.painDictionary = nil;
        self.symptomsDictionary = nil;
        self.acuteMedicinesDictionary = nil;
    }
    
    return self;
}

- (NSDate *)date
{
    return self.privateDate;
}

- (void)setTemplateName:(NSString *)templateName
{
    self.privateTemplateName = templateName;
}

- (NSString *)templateName
{
    return self.privateTemplateName;
}

- (BOOL)dataRecorded {
    return ([self behaviorsRecorded]||[self headacheRecorded]);
}

- (BOOL)behaviorsRecorded {
    return (self.triggersDictionary||self.preventionMedicinesDictionary||self.preventionBehaviorsDictionary);
}

- (BOOL)headacheRecorded {
    return (self.painDictionary||self.symptomsDictionary||self.acuteMedicinesDictionary);
}

@end
