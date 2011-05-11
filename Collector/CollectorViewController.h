//
//  CollectorViewController.h
//  Collector
//
//  Created by Okke Timm on 11.05.11.
//  Copyright 2011 Timm Verwaltung. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Collector.h"

@interface CollectorViewController : UIViewController {
    Collector *model;
    IBOutlet UILabel *totalStrings;
    IBOutlet UILabel *totalNumbers;
}

- (IBAction)collect:(UIButton *)sender;

@end
