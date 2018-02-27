//
//  DataStore.h
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "MyGModel.h"

@interface DataStore : MyGModel

@property (nonatomic, readonly) NSArray *months;

- (instancetype)initWithDate:(NSDate *)date;

@end
