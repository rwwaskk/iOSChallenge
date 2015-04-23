//
//  CustomUIControl.h
//  MonsooniOSChallenge
//
//  Created by yunrui zhang on 4/21/15.
//  Copyright (c) 2015 yunrui zhang. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface CustomUIControl : UIControl
  @property (nonatomic, retain) NSArray *values;

  @property (nonatomic) int size;
  @property (nonatomic) int current_index;

  - (NSString *) getRandomValue;
@end
