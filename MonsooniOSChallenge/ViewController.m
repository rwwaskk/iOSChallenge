//
//  ViewController.m
//  MonsooniOSChallenge
//
//  Created by yunrui zhang on 4/21/15.
//  Copyright (c) 2015 yunrui zhang. All rights reserved.
//

#import "ViewController.h"
#import "DisplayViewController.h"

@interface ViewController ()



@end

@implementation ViewController


- (void)viewDidLoad {
  [super viewDidLoad];
  
  // Do any additional setup after loading the view, typically from a nib.
  
  
  //Set button styles
  self.randomize.layer.cornerRadius=self.randomize.bounds.size.height/2.0f;
  self.randomize.layer.backgroundColor=[UIColor colorWithRed:0.18 green:0.2 blue:0.255 alpha:1].CGColor;
  
  
  self.go.layer.cornerRadius=self.randomize.bounds.size.height/2.0f;
  self.go.layer.backgroundColor=[UIColor colorWithRed:0.18 green:0.2 blue:0.255 alpha:1].CGColor;
  
  self.searchBtn.layer.cornerRadius=self.searchBtn.bounds.size.height/8.0f;
  self.menuBtn.layer.cornerRadius=self.menuBtn.bounds.size.height/8.0f;
  self.compassBtn.layer.cornerRadius=self.compassBtn.bounds.size.height/8.0f;
  self.calendarBtn.layer.cornerRadius=self.calendarBtn.bounds.size.height/8.0f;


}

- (void)didReceiveMemoryWarning {
  [super didReceiveMemoryWarning];
  // Dispose of any resources that can be recreated.
}


- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
  // Make sure your segue name in storyboard is the same as this line
  if ([[segue identifier] isEqualToString:@"modal"])
  {
    // Get reference to the destination view controller
    DisplayViewController *vc = [segue destinationViewController];
    
    // Pass any objects to the view controller here, like...
   
    
    NSString *result = [NSString stringWithFormat:@"Your Delivery is On The Way... \r You will have a %@ of GIANT SQUID SUSHI, which is %@, %@ and %@. You will have %@ of them for %@!\r ENJOY!",
                       self.batches.values[self.batches.current_index], self.flavor.values[self.flavor.current_index],
                       self.hotness.values[self.hotness.current_index],
                       self.texture.values[self.texture.current_index],
                       self.amount.values[self.amount.current_index],
                       self.time.values[self.time.current_index]];
    
    [vc setText:result];
    
    
    
  }
}

- (IBAction)randomize:(id)sender {
  
  NSString *batchValue = [self.batches getRandomValue];
  self.batchesLabel.text=batchValue;
  
  NSString *flavorValue = [self.flavor getRandomValue];
  self.flavorLabel.text=flavorValue;
  
  NSString *hotnessValue = [self.hotness getRandomValue];
  self.hotnessLabel.text=hotnessValue;
  
  NSString *textureValue = [self.texture getRandomValue];
  self.textureLabel.text=textureValue;
  
  NSString *amountValue = [self.amount getRandomValue];
  self.amountLabel.text=amountValue;
  
  NSString *timeValue = [self.time getRandomValue];
  self.timeLabel.text=timeValue;

}

- (IBAction)go:(id)sender {
  
}
- (IBAction)changeBatches:(id)sender {

  [self change:self.batches For:self.batchesLabel];
}

- (IBAction)changeFlavor:(id)sender {

  [self change:self.flavor For:self.flavorLabel];
}

- (IBAction)changeTexture:(id)sender {

  [self change:self.texture For:self.textureLabel];
}

- (IBAction)changeHotness:(id)sender {

  [self change:self.hotness For:self.hotnessLabel];
}

- (IBAction)changeAmount:(id)sender {

  [self change:self.amount For:self.amountLabel];
}

- (IBAction)changeTime:(id)sender {
  
  
  [self change:self.time For:self.timeLabel];

}



- (void) change:(CustomUIControl*) control For:(UILabel*) label{
  
  control.current_index++;
  if (control.current_index>=control.size){
    control.current_index=0;
  }
  NSString *value = control.values[control.current_index];
  label.text=value;
  
  [control setNeedsDisplay];
}


- (IBAction)menu:(id)sender {
  NSLog(@"%@", @"Segued!");
  self.searchBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
  self.menuBtn.layer.backgroundColor=[UIColor colorWithRed:0.753 green:0.678 blue:0.663 alpha:0.5].CGColor;
  self.compassBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
  self.calendarBtn.layer.backgroundColor=[UIColor clearColor].CGColor;

}

- (IBAction)compass:(id)sender {
  self.searchBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
  self.menuBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
  self.compassBtn.layer.backgroundColor=[UIColor colorWithRed:0.753 green:0.678 blue:0.663 alpha:0.5].CGColor;
  self.calendarBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
}

- (IBAction)calendar:(id)sender {
  self.searchBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
  self.menuBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
  self.compassBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
  self.calendarBtn.layer.backgroundColor=[UIColor colorWithRed:0.753 green:0.678 blue:0.663 alpha:0.5].CGColor;
}

- (IBAction)search:(id)sender {
  UIButton* button = (UIButton*)sender;
  button.selected = !button.selected;
  self.searchBtn.layer.backgroundColor=[UIColor colorWithRed:0.753 green:0.678 blue:0.663 alpha:0.5].CGColor;
  self.menuBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
   self.compassBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
   self.calendarBtn.layer.backgroundColor=[UIColor clearColor].CGColor;
}
@end
