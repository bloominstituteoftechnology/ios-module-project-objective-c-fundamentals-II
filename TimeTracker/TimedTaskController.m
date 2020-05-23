//
//  TimedTaskController.m
//  TimeTracker
//
//  Created by Jessie Ann Griffin on 5/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TimedTaskController.h"
#import "TimedTask.h"

@implementation TimedTaskController

- (instancetype)init
{
    if (self = [super init]) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWith:(NSString *)aClient
                   aSummary:(NSString *)aSummary
             anHourlyRateOf:(double)anHourlyRate
                hoursWorked:(double)hoursWorked
{
    [_timedTasks addObject:[[TimedTask alloc] initWithClient:aClient
                                                     summary:aSummary
                                                hourlyRateOf:anHourlyRate
                                                 hoursWorked:hoursWorked]];
}

@end
