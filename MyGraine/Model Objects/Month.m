//
//  Month.m
//  MyGraine
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "Month.h"
#import "Day.h"

@interface Month ()
    @property (nonatomic, copy) NSArray *privateDays;
@end

@implementation Month

- (instancetype)initWithDate:(NSDate *)date
{
    self = [super init];
    
    if (self) {
        self.patientName = @"";
        self.patientDOB = @"";
        self.disabilityThisMonth = 0;
        
        NSCalendar *calendar = [NSCalendar currentCalendar];
        NSDateComponents *dateComponents = [calendar components:(NSCalendarUnitEra | NSCalendarUnitYear | NSCalendarUnitMonth) fromDate:date];
        dateComponents.day = 1;
        [self createDaysWithStartDate:[calendar dateFromComponents:dateComponents]];
    }
    
    return self;
}

- (void)createDaysWithStartDate:(NSDate *)startDate;
{
    NSMutableArray *daysList = [[NSMutableArray alloc] init];
    
    NSDate *date = startDate;
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponentsAddDay = [[NSDateComponents alloc] init];
    dateComponentsAddDay.day = 1;
    
    NSDateComponents *dateComponentsAddMonth = [[NSDateComponents alloc] init];
    dateComponentsAddMonth.month = 1;
    NSDate *dateStop = [calendar dateByAddingComponents:dateComponentsAddMonth toDate:startDate options:0];

    for (int i=0; i<=30; i++) {
        Day *day = [[Day alloc] initWithDate:date];
        [daysList addObject:day];
        NSDate *dateNew = [calendar dateByAddingComponents:dateComponentsAddDay toDate:date options:0];
        if ([dateNew isEqualToDate:dateStop]) {
            break;
        } else {
            date = dateNew;
        }
    }
    self.privateDays = daysList;
}

- (NSArray *)days
{
    return self.privateDays;
}

@end
