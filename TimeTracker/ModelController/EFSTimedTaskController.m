//
//  EFSTimedTaskController.m
//  TimeTracker
//
//  Created by Clayton Watkins on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "EFSTimedTaskController.h"
#import "EFSTimedTask.h"

@interface EFSTimedTaskController () {
    NSMutableArray *_timedTasks;
}

@end

@implementation EFSTimedTaskController

- (instancetype)init
{
    if (self = [super init]) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (EFSTimedTask *)createTimedTaskWith:(NSString *)aClientName
                          workSummary:(NSString *)aWorkSummary
                           hourlyRate:(double)aHourlyRate
                          hoursWorked:(double)someHoursWorked
{
    EFSTimedTask *aTask = [[EFSTimedTask alloc] initWithName:aClientName
                                                 workSummary:aWorkSummary
                                                  hourlyRate:aHourlyRate
                                                 hoursWorked:someHoursWorked];
    [_timedTasks addObject:aTask];
    return aTask;
}

- (EFSTimedTask *)taskAtIndex:(NSUInteger)index
{
    return [_timedTasks objectAtIndex:index];
}


@end
