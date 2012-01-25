//
//  cs3217ViewController.m
//  ViewDemo
//
//  Created by Administrator on 1/25/12.
//  Copyright (c) 2012 __MyCompanyName__. All rights reserved.
//

#import "cs3217ViewController.h"

@implementation cs3217ViewController

@synthesize demo,addDemoBtn, removeDemoBtn;

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
    demo = [[demoViewController alloc] init]; //initialized from xib
    removeDemoBtn.enabled = NO;
}

- (void)viewDidUnload
{
    [self setAddDemoBtn:nil];
    [self setRemoveDemoBtn:nil];
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewDidAppear:(BOOL)animated
{
    [super viewDidAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated
{
	[super viewWillDisappear:animated];
}

- (void)viewDidDisappear:(BOOL)animated
{
	[super viewDidDisappear:animated];
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return YES;
}

- (IBAction)addDemoBtnDidPressed:(id)sender {
    [self.view addSubview:demo.view];
    addDemoBtn.enabled = NO;
    removeDemoBtn.enabled = YES;
}

- (IBAction)removeDemoBtnDidPressed:(id)sender {
    [demo.view removeFromSuperview];
    addDemoBtn.enabled = YES;
    removeDemoBtn.enabled = NO;
}

@end
