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
    
    NSCalendar *calendar = [NSCalendar currentCalendar];
    NSDateComponents *dateComponentsStart = [calendar components:(NSCalendarUnitMonth) fromDate:startDate];
    NSDateComponents *dateComponentsAdd = [[NSDateComponents alloc] init];
    dateComponentsAdd.day = 1;
 
    for (int i=0; i<=30; i++) {
        NSDate *date = [calendar dateByAddingComponents:dateComponentsAdd toDate:startDate options:0];
        NSDateComponents *dateComponentsNew = [calendar components:(NSCalendarUnitMonth) fromDate:date];
        if (dateComponentsNew.month != dateComponentsStart.month) {
            break;
        }
        Day *day = [[Day alloc] initWithDate:date];
        [daysList addObject:day];
        dateComponentsNew.day += i;
    }
    self.privateDays = daysList;
}

- (NSArray *)days
{
    return self.privateDays;
}

@end
