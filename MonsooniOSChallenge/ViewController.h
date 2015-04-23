//
//  ViewController.h
//  MonsooniOSChallenge
//
//  Created by yunrui zhang on 4/21/15.
//  Copyright (c) 2015 yunrui zhang. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomUIControl.h"
#import <QuartzCore/QuartzCore.h>

@interface ViewController : UIViewController




//Buttons
@property (weak, nonatomic) IBOutlet UIButton *randomize;
@property (weak, nonatomic) IBOutlet UIButton *go;

//Actions: buttons
- (IBAction)randomize:(id)sender;
- (IBAction)go:(id)sender;


//Actions: custom
- (IBAction)changeBatches:(id)sender;
- (IBAction)changeFlavor:(id)sender;
- (IBAction)changeTexture:(id)sender;
- (IBAction)changeHotness:(id)sender;
- (IBAction)changeAmount:(id)sender;
- (IBAction)changeTime:(id)sender;


//Custom Controls
@property (weak, nonatomic) IBOutlet CustomUIControl *batches;
@property (weak, nonatomic) IBOutlet CustomUIControl *flavor;
@property (weak, nonatomic) IBOutlet CustomUIControl *texture;
@property (weak, nonatomic) IBOutlet CustomUIControl *hotness;
@property (weak, nonatomic) IBOutlet CustomUIControl *amount;
@property (weak, nonatomic) IBOutlet CustomUIControl *time;

//Labels
@property (weak, nonatomic) IBOutlet UILabel *batchesLabel;
@property (weak, nonatomic) IBOutlet UILabel *flavorLabel;
@property (weak, nonatomic) IBOutlet UILabel *textureLabel;
@property (weak, nonatomic) IBOutlet UILabel *hotnessLabel;
@property (weak, nonatomic) IBOutlet UILabel *amountLabel;
@property (weak, nonatomic) IBOutlet UILabel *timeLabel;


- (void) change:(CustomUIControl*) control For: (UILabel*) label;
- (IBAction)menu:(id)sender;
- (IBAction)compass:(id)sender;
- (IBAction)calendar:(id)sender;
- (IBAction)search:(id)sender;

//Dummy Buttons
@property (weak, nonatomic) IBOutlet UIButton *menuBtn;
@property (weak, nonatomic) IBOutlet UIButton *compassBtn;
@property (weak, nonatomic) IBOutlet UIButton *calendarBtn;
@property (weak, nonatomic) IBOutlet UIButton *searchBtn;

@end

