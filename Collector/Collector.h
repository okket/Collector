//
//  Collector.h
//  Collector
//
//  Created by Okke Timm on 11.05.11.
//  Copyright 2011 Timm Verwaltung. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Collector : NSObject {
    NSMutableDictionary *counts;
}

- (void)collect:(id)anObject;

@property (readonly) int totalStringCount;
@property (readonly) int totalNumberCount;

@end
