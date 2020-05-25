//
//  DTWTimedTaskController.m
//  TimeTracker
//
//  Created by David Wright on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DTWTimedTaskController.h"
#import "DTWTimedTask.h"

@implementation DTWTimedTaskController

// Initializer
- (instancetype)init
{
    if (self = [super init]) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWithClient:(NSString *)client
                          summary:(NSString *)summary
                       hourlyRate:(double)hourlyRate
                      hoursWorked:(double)hoursWorked
{
    DTWTimedTask *newTimedTask = [[DTWTimedTask alloc] initWithClient:client
                                                              summary:summary
                                                           hourlyRate:hourlyRate
                                                          hoursWorked:hoursWorked];
    [_timedTasks addObject:newTimedTask];
}

- (void)updateTimedTaskAtIndex:(NSInteger)index
                    withClient:(NSString *)client
                       summary:(NSString *)summary
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(double)hoursWorked
{
    _timedTasks[index].client = client;
    _timedTasks[index].summary = summary;
    _timedTasks[index].hourlyRate = hourlyRate;
    _timedTasks[index].hoursWorked = hoursWorked;
}

@end
