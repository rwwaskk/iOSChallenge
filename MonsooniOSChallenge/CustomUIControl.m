//
//  CustomUIControl.m
//  MonsooniOSChallenge
//
//  Created by yunrui zhang on 4/21/15.
//  Copyright (c) 2015 yunrui zhang. All rights reserved.
//

#import "CustomUIControl.h"
#import "ViewController.h"

@implementation CustomUIControl


- (id)initWithCoder:(NSCoder *)aDecoder
{
  self = [super initWithCoder:aDecoder];
  if (self) {
    // Initialization code
    
 [self setBackgroundColor:[UIColor clearColor]];
    switch (self.tag){
      
    case 1:
        self.values = [NSArray arrayWithObjects:@"ONE OF A KIND", @"SMALL BATCH", @"LARGE BATCH", @"MASS MARKET", nil];
        self.size=4;

        
        break;
        
      case 2:
        self.values = [NSArray arrayWithObjects:@"SAVORY", @"SWEET", @"UNAMI", nil];
        self.size=3;

        break;
        
        
      case 3:
        self.values = [NSArray arrayWithObjects:@"SPICY", @"MILD", nil];
        self.size=2;

        break;
        
      case 4:
        self.values = [NSArray arrayWithObjects:@"CRUNCHY", @"MUSHY",@"SMOOTH", nil];
        self.size=3;

        break;
        
      case 5:
        self.values = [NSArray arrayWithObjects:@"A LITTLE", @"A LOT", nil];
        self.size=2;

        break;
        
      case 6:
        self.values = [NSArray arrayWithObjects:@"BREAKFAST", @"BRUNCH", @"LUNCH", @"SNACK", @"DINNER", nil];
        self.size=5;
        break;
    }
    
    self.current_index=0;
  }
  return self;
}


- (NSString *) getRandomValue {
  int r = arc4random_uniform(self.size);
  self.current_index=r;
  [self setNeedsDisplay];
  return self.values[r];
}


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
  
  
  
  int check = self.current_index+1;
  
  
  
  float radius = 105;
  float gap = M_PI/10;
  
  //calculate size and segment size
  float size = (2*M_PI)/self.size;
  float segment_size = ((2*M_PI)-(self.size*gap))/self.size;
  
  int counter = self.size;
  
  CGContextRef context = UIGraphicsGetCurrentContext();
  CGContextSetLineWidth(context, 2.0);
 
  

  float start_angle = 0;
  float end_angle = segment_size;
  
  
  //The loop to draw the segments
  while (counter>0){
    
    
    if (counter == check)
    {
      CGContextSetStrokeColorWithColor(context,  [UIColor colorWithRed:1 green:0.29 blue:0.329 alpha:1].CGColor);
      CGContextSetFillColorWithColor(context, [UIColor clearColor].CGColor);
      
    }
    else
    {
      CGContextSetStrokeColorWithColor(context,  [UIColor colorWithRed:0.455 green:0.035 blue:0.251 alpha:0.5].CGColor);
      CGContextSetFillColorWithColor(context, [UIColor clearColor].CGColor);
    }
    CGContextBeginPath(context);
    CGContextAddArc(context,  radius /2,  radius /2,  radius /2, start_angle,end_angle,NO);
    CGContextDrawPath(context, kCGPathFillStroke); // Or kCGPathFill
    counter--;
    start_angle+=size;
    end_angle+=size;
    
  }
  
  UIGraphicsEndImageContext();
  
}

@end
