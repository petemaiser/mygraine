//
//  Month.h
//  MyGraine
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "MyGModel.h"

@interface Month : MyGModel

@property (nonatomic, copy) NSString *patientName;
@property (nonatomic, copy) NSString *patientDOB;
@property (nonatomic) NSInteger *disabilityThisMonth;
@property (nonatomic, readonly) NSArray *days;

- (instancetype)initWithDate:(NSDate *)date;

@end
