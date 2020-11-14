//
//  RRVTimedTaskController.m
//  TimeTracker
//
//  Created by Rob Vance on 11/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "RRVTimedTaskController.h"
#import "RRVTimedTask.h"

@implementation RRVTimedTaskController

- (instancetype)init
{
    if (self = [super init]) {
        _taskArray = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSUInteger)taskCount
{
    return self.taskArray.count;
}

- (void)createTimeTaskWith:(NSString *)aClientName
               workSummary:(NSString *)aWorkSummary
                hourlyRate:(double)aHourlyRate
               hoursWorked:(double)someHoursWorked
{
    RRVTimedTask *aTask = [[RRVTimedTask alloc] initWithName:aClientName
                                                 workSummary:aWorkSummary
                                                  hourlyRate:aHourlyRate
                                                 hoursWorked:someHoursWorked];
    [_taskArray addObject:aTask];
}

- (RRVTimedTask *)taskAtIndex:(NSUInteger)index
{
    return [_taskArray objectAtIndex:index];
}

@end
