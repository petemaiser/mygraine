//
//  DataStore.m
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "DataStore.h"
#import "Month.h"

@interface DataStore ()
    @property (nonatomic) NSArray *privateMonths;
@end

@implementation DataStore

- (instancetype)initWithDate:(NSDate *)date;
{
    self = [super init];
    
    if (self) {
        Month *month = [[Month alloc] initWithDate:date];
        NSArray *monthsList = [[NSArray alloc] initWithObjects:month, nil];
        self.privateMonths = monthsList;
    }
    
    return self;
}

- (NSArray *)months
{
    return self.privateMonths;
}


@end
