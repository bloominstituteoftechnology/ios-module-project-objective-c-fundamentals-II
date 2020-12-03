//
//  TaskModelController.m
//  TimeTracker
//
//  Created by John McCants on 12/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TaskModelController.h"
#import "TimedTask.h"


@implementation TaskModelController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _taskArray = [[NSMutableArray alloc] init];
    }
    return self;
}

-(NSUInteger)taskCount
{
    return self.taskArray.count;
}

- (void)createTimedTaskWith:(NSString *)clientName summaryText:(NSString *)summaryText hourlyRate:(double)hourlyRate hoursWorked:(double)hoursWorked
{
    TimedTask *newTask = [[TimedTask alloc] initWithName:clientName summaryText:summaryText hourlyRate:hourlyRate hoursWorked:hoursWorked];
    [_taskArray addObject:newTask];
    
}

@end
