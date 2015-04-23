//
//  DisplayViewController.h
//  MonsooniOSChallenge
//
//  Created by yunrui zhang on 4/22/15.
//  Copyright (c) 2015 yunrui zhang. All rights reserved.
//

#import "ViewController.h"

@interface DisplayViewController : ViewController
- (void) setText:(NSString*) text;

@property (weak, nonatomic) IBOutlet UITextView *resultText;


@end
