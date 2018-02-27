//
//  SettingsStore.m
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import "SettingsStore.h"
#import "TemplateMeadowbrook.h"


@interface SettingsStore ()
    @property (nonatomic, copy) NSArray *privateTemplates;
@end

@implementation SettingsStore

- (instancetype)init
{
    self = [super init];
    
    if (self) {
        self.chosenTemplateName = @"";
        self.privateTemplates = [self createTemplatesList];
    }

    return self;
}

- (NSArray *)templates
{
    return self.privateTemplates;
}

- (NSArray *)createTemplatesList
{
    TemplateMeadowbrook *t0 = [[TemplateMeadowbrook alloc] init];
    NSArray *a = [[NSArray alloc] initWithObjects:t0, nil];
    return a;
}

- (void)resetTemplates
{
    self.privateTemplates = nil;
    [self createTemplatesList];
}

@end
