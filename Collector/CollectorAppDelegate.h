//
//  CollectorAppDelegate.h
//  Collector
//
//  Created by Okke Timm on 11.05.11.
//  Copyright 2011 Timm Verwaltung. All rights reserved.
//

#import <UIKit/UIKit.h>

@class CollectorViewController;

@interface CollectorAppDelegate : NSObject <UIApplicationDelegate> {

}

@property (nonatomic, retain) IBOutlet UIWindow *window;

@property (nonatomic, retain) IBOutlet CollectorViewController *viewController;

@end
