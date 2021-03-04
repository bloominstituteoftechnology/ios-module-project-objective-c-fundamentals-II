//
//  LSITimedTaskController.m
//  TimeTracker
//
//  Created by James McDougall on 3/4/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import "LSITimedTaskController.h"
#import "LSITimedTask.h"

@implementation LSITimedTaskController

//MARK: - Initializer -
- (instancetype)initWithTasksArray:(NSMutableArray<LSITimedTask *> *)timedTasks
{
    self = [super init];
    if (self) {
        _timedTasks = timedTasks;
    }
    return self;
}

//MARK: - Methods -
- (void)createTimedTaskWithClientName:(NSString *)clientName workSummary:(NSString *)workSummary payRate:(int)payRate hoursWorked:(int)hoursWorked
{
    LSITimedTask *newTimedTask = [[LSITimedTask alloc] initWithClientName:clientName workSummary:workSummary payRate:payRate hoursWorked:hoursWorked];
    [_timedTasks addObject:newTimedTask];
}

- (void)createTimedTaskWithObject:(LSITimedTask *)timedTask
{
    [_timedTasks addObject:timedTask];
}

@end
