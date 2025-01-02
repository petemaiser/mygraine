//
//  Template.h
//  MyGraine
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "MyGModel.h"

@interface Template : MyGModel

@property (nonatomic, readonly) NSString *templateName;
@property (nonatomic, readonly) NSURL *googleTemplate;

@property (nonatomic) NSArray *triggersList;
@property (nonatomic) NSArray *preventionMedicinesList;
@property (nonatomic) NSArray *preventionBehaviorsList;
@property (nonatomic) NSArray *painList;
@property (nonatomic) NSArray *symptomsList;
@property (nonatomic) NSArray *acuteMedicinesList;

- (void)createLists;

@end
