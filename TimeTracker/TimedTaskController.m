//
//  TimedTaskController.m
//  TimeTracker
//
//  Created by Cora Jacobson on 11/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TimedTaskController.h"
#import "TimedTask.h"

@interface TimedTaskController () {
    NSMutableArray *_internalTasks;
}

@end


@implementation TimedTaskController

- (instancetype)init
{
    if (self = [super init]) {
        _internalTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

// MARK: - Convenience Accessors

- (NSArray<TimedTask *> *)tasks
{
    return _internalTasks.copy;
}

- (NSUInteger)taskCount
{
    return _internalTasks.count;
}

- (TimedTask *)taskAtIndex:(NSUInteger)index
{
    return [_internalTasks objectAtIndex:index];
}

-(void)createTimedTaskWithClient:(NSString *)client
                         summary:(NSString *)summary
                      hourlyRate:(double)rate
                     hoursWorked:(double)hours
{
    TimedTask *aTask = [[TimedTask alloc] initWithClient:client
                                                 summary:summary
                                              hourlyRate:rate
                                             hoursWorked:hours];
    [_internalTasks addObject:aTask];
}

-(void)editTask:(TimedTask *)task
             forClient:(NSString *)client
           withSummary:(NSString *)summary
            hourlyRate:(double)rate
           hoursWorked:(double)hours
{
    task.client = client;
    task.summary = summary;
    task.hourlyRate = rate;
    task.hoursWorked = hours;
}

@end
