//
//  MyGTableViewCell.h
//  MyGraine
//
//  Created by Pete Maiser on 4/8/18.
//  Copyright © 2018 Pete Maiser. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface MyGTableViewCell : UITableViewCell

@property (nonatomic) NSDictionary *templateDictionary;
@property (nonatomic) NSMutableDictionary *dataDictionary;

//- (void)reloadData;

// ...TODO is this needed?


@end
