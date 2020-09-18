//
//  EFSTimedTaskController.m
//  TimeTracker
//
//  Created by Clayton Watkins on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "EFSTimedTaskController.h"
#import "EFSTimedTask.h"

@implementation EFSTimedTaskController

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


- (void)createTimedTaskWith:(NSString *)aClientName
                          workSummary:(NSString *)aWorkSummary
                           hourlyRate:(double)aHourlyRate
                          hoursWorked:(double)someHoursWorked
{
    EFSTimedTask *aTask = [[EFSTimedTask alloc] initWithName:aClientName
                                                 workSummary:aWorkSummary
                                                  hourlyRate:aHourlyRate
                                                 hoursWorked:someHoursWorked];
    [_taskArray addObject:aTask];
}

- (EFSTimedTask *)taskAtIndex:(NSUInteger)index
{
    return [_taskArray objectAtIndex:index];
}


@end
