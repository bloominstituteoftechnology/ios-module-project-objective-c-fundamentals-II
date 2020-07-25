//
//  CLPTimedTaskController.m
//  TimeTracker
//
//  Created by Chad Parker on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLPTimedTaskController.h"
#import "CLPTimedTask.h"

@implementation CLPTimedTaskController

- (instancetype)init
{
    if (self = [super init]) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSUInteger)count
{
    return self.timedTasks.count;
}

- (void)createTimedTaskWithClient:(NSString *)client
                          summary:(NSString *)summary
                       hourlyRate:(NSDecimalNumber *)hourlyRate
                      hoursWorked:(NSDecimalNumber *)hoursWorked
{
    CLPTimedTask *timedTask = [[CLPTimedTask alloc] initWithClient:client summary:summary hourlyRate:hourlyRate hoursWorked:hoursWorked];
    [self.timedTasks addObject:timedTask];
}

@end
