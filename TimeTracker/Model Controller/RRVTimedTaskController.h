//
//  RRVTimedTaskController.h
//  TimeTracker
//
//  Created by Rob Vance on 11/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN
@class RRVTimedTask;

@interface RRVTimedTaskController : NSObject

@property (nonatomic, readonly, copy) NSMutableArray<RRVTimedTask *> *taskArray;
@property (nonatomic, readonly) NSUInteger taskCount;

- (void)createTimeTaskWith:(NSString *)aClientName
               workSummary:(NSString *)aWorkSummary
                hourlyRate:(double)aHourlyRate
               hoursWorked:(double)someHoursWorked;

- (RRVTimedTask *)taskAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
