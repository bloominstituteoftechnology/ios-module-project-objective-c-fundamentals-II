//
//  LSITimeTrackerController.h
//  TimeTracker
//
//  Created by Joe on 7/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class LSITimeTracker;

@interface LSITimeTrackerController : NSObject

@property (nonatomic, readonly, copy) NSArray<LSITimeTracker *> *trackedTimes;

- (LSITimeTracker *)countTheCost:(double)ofRate times:(double)manHours;

@end

NS_ASSUME_NONNULL_END
