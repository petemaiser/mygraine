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

@property (nonatomic) NSMutableArray *triggersList;
@property (nonatomic) NSMutableArray *preventionMedicinesList;
@property (nonatomic) NSMutableArray *preventionBehaviorsList;
@property (nonatomic) NSMutableArray *symptomsList;
@property (nonatomic) NSMutableArray *acuteMedicinesList;

- (void)createLists;

@end
