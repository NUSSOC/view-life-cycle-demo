//
//  demoViewController.m
//  ViewDemo
//
//  Created by Administrator on 1/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "demoViewController.h"

@implementation demoViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        //init counters
        countViewDidLoad = 0;
        countReceiveMemoryWaring = 0;
        countViewDidUnLoad = 0;
    }
    return self;
}

//You can init this call in simulator - 
//iOS Simulator -> Hardware -> Simulate Memory Warning
- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    countReceiveMemoryWaring++;
    NSLog(@"didReceiveMemoryWarning called for %d time",countReceiveMemoryWaring);
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

//CAUTION from TA
//You should NOT override loadView when you load the view from nib/storyboard
//I wrote this only for demo purpose
/*
-(void)loadView{
    [super loadView];
}
*/

- (void)viewDidLoad
{
    [super viewDidLoad];
    countViewDidLoad++;
    NSLog(@"viewDidLoad called for %d time",countViewDidLoad);
}

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
    countViewDidUnLoad++;
    NSLog(@"viewDidUnload called for %d time",countViewDidUnLoad);
}

#pragma mark - View lifecycle - not that important sections

-(void)viewWillAppear:(BOOL)animated{
    NSLog(@"View will appear!!");
}

-(void)viewDidDisappear:(BOOL)animated{
    NSLog(@"view did disappear");
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
	return YES;
}

@end
