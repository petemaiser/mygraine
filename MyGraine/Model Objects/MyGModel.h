//
//  MyGModel.h
//
//  Created by Pete Maiser on 2/3/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <Mantle/Mantle.h>

@interface MyGModel : MTLModel

- (NSString *)archiveFile;
- (BOOL)archive;
    
@end
