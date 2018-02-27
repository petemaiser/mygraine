//
//  Day.h
//  MyGraine
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "MyGModel.h"
@class Template;

@interface Day : MyGModel

@property (nonatomic, readonly) NSDate *date;
@property (nonatomic, readonly) NSString *templateName;

@property (nonatomic) NSMutableDictionary *triggersDictionary;
@property (nonatomic) NSMutableDictionary *preventionMedicinesDictionary;
@property (nonatomic) NSMutableDictionary *preventionBehaviorsDictionary;
@property (nonatomic) NSMutableDictionary *painDictionary;
@property (nonatomic) NSMutableDictionary *symptomsDictionary;
@property (nonatomic) NSMutableDictionary *acuteMedicinesDictionary;

- (instancetype)initWithDate:(NSDate *)date;
- (void)setTemplateName:(NSString *)templateName;

- (BOOL)dataRecorded;
- (BOOL)behaviorsRecorded;
- (BOOL)headacheRecorded;


@end
