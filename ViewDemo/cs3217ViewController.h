//
//  cs3217ViewController.h
//  ViewDemo
//
//  Created by Administrator on 1/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "demoViewController.h"

@interface cs3217ViewController : UIViewController

@property(nonatomic,readonly,strong) demoViewController *demo;

- (IBAction)addDemoBtnDidPressed:(id)sender;
- (IBAction)removeDemoBtnDidPressed:(id)sender;

@property (weak, nonatomic) IBOutlet UIButton *addDemoBtn;
@property (weak, nonatomic) IBOutlet UIButton *removeDemoBtn;

@end
