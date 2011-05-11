//
//  CollectorViewController.m
//  Collector
//
//  Created by Okke Timm on 11.05.11.
//  Copyright 2011 Timm Verwaltung. All rights reserved.
//

#import "CollectorViewController.h"

@implementation CollectorViewController

- (void)updateUI
{
    totalNumbers.text = [NSString stringWithFormat:@"%d", model.totalNumberCount];
    totalStrings.text = [NSString stringWithFormat:@"%d", model.totalStringCount];
}

- (IBAction)collect:(UIButton *)sender
{
    if (!model) model = [[Collector alloc] init];
    double doubleValue = [sender.titleLabel.text doubleValue];
    if (doubleValue) {
        [model collect:[NSNumber numberWithDouble:doubleValue]];
    } else {
        [model collect:sender.titleLabel.text];
    }
    [self updateUI];
}

- (void)dealloc
{
    [model release];
    [super dealloc];
}

- (void)didReceiveMemoryWarning
{
    // Releases the view if it doesn't have a superview.
    [super didReceiveMemoryWarning];
    
    // Release any cached data, images, etc that aren't in use.
}

#pragma mark - View lifecycle

/*
// Implement viewDidLoad to do additional setup after loading the view, typically from a nib.
- (void)viewDidLoad
{
    [super viewDidLoad];
}
*/

- (void)viewDidUnload
{
    [super viewDidUnload];
    // Release any retained subviews of the main view.
    // e.g. self.myOutlet = nil;
}

- (BOOL)shouldAutorotateToInterfaceOrientation:(UIInterfaceOrientation)interfaceOrientation
{
    // Return YES for supported orientations
    return (interfaceOrientation == UIInterfaceOrientationPortrait);
}

@end
