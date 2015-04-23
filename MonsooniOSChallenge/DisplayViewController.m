//
//  DisplayViewController.m
//  MonsooniOSChallenge
//
//  Created by yunrui zhang on 4/22/15.
//  Copyright (c) 2015 yunrui zhang. All rights reserved.
//

#import "DisplayViewController.h"

@interface DisplayViewController ()
  @property (nonatomic, retain) NSString *s;
@end

@implementation DisplayViewController

-(id)init{
  self.text=@"";
  return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self.resultText setText:self.s];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/
- (void) setText:(NSString*) text{
  self.s=text;
}

@end
