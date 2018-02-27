//
//  SettingsStore.h
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "MyGModel.h"

@interface SettingsStore : MyGModel

@property (nonatomic, copy) NSString *chosenTemplateName;
@property (nonatomic, readonly) NSArray *templates;

- (void)resetTemplates;

@end
