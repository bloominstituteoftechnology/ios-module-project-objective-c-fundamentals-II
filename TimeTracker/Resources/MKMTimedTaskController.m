//
//  MKMTimedTaskController.m
//  TimeTracker
//
//  Created by Matthew Martindale on 7/26/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MKMTimedTaskController.h"
#import "MKMTimedTask.h"

@interface MKMTimedTaskController () {
    NSMutableArray *_internalTasks;
}

@end

@implementation MKMTimedTaskController
- (instancetype)init
{
    if (self = [super init]) {
        _internalTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTask:(NSString *)aClient
                summary:(NSString *)aSummary
              houryRate:(double)anHourlyRate
            hoursWorked:(double)anHoursWorked
{
    MKMTimedTask *task = [[MKMTimedTask alloc] initWithClient:aClient
                                                      summary:aSummary
                                                   hourlyRate:anHourlyRate
                                                  hoursWorked:anHoursWorked];
    [_internalTasks addObject:task];
}

// MARK: - Convenience Accessors

- (NSArray<MKMTimedTask *> *)tasks
{
    return _internalTasks.copy;
}

- (NSUInteger)taskCount
{
    return _internalTasks.count;
}

- (MKMTimedTask *)taskAtIndex:(NSUInteger)index
{
    return [_internalTasks objectAtIndex:index];
}

@end
