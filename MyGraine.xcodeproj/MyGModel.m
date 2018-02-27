//
//  MyGModel.m
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "MyGModel.h"

@implementation MyGModel

- (instancetype)init
{
    return [super init];
}

- (NSString *)archiveFile
{
    NSArray *documentDirectories = NSSearchPathForDirectoriesInDomains(NSDocumentDirectory, NSUserDomainMask, YES);
    NSString *documentDirectory = [documentDirectories firstObject];
    NSString *archiveFile = [NSString stringWithFormat:@"%@.%@.archive", [NSString stringWithUTF8String:getprogname()], NSStringFromClass([self class])];
    return [documentDirectory stringByAppendingPathComponent:archiveFile];
}

- (BOOL)archive
{
    NSString *file = [self archiveFile];
    BOOL success = [NSKeyedArchiver archiveRootObject:self
                                               toFile:file];
    if (success) {
        NSLog(@"Object with class %@ archived to file.", NSStringFromClass([self class]));
    } else {
        NSLog(@"Object with class %@ achive attempt FAILED.", NSStringFromClass([self class]));
    }
    
    return success;
}
    
@end
