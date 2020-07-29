//
//  LSITimeTrackerController.m
//  TimeTracker
//
//  Created by Joe on 7/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITimeTrackerController.h"
#import "LSITimeTracker.h"

@interface LSITimeTrackerController () {
    NSMutableArray *_internalTrackedTimes;
}

@end

@implementation LSITimeTrackerController

- (instancetype)init
{
    if (self = [super init]) {
        _internalTrackedTimes = [[NSMutableArray alloc]init];
//        [self addTrackedTime];
    }
    return self;
}

- (double)countTheCost:(double)ofRate times:(double)manHours
{
    return ofRate * manHours;
}

- (void)addTrackedTime:(LSITimeTracker *)aTrackedTime
{
    [_internalTrackedTimes addObject:aTrackedTime];
}

@end
