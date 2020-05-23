//
//  TSATimedTaskController.m
//  TimeTracker
//
//  Created by Alex Thompson on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TSATimedTaskController.h"
#import "TSATimedTask.h"

@implementation TSATimedTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWith:(NSString *)client
                    summary:(NSString *)summary
                 hourlyRate:(double)hourlyRate
                hoursWorked:(NSInteger)hoursWorked {
    
    TSATimedTask *timedTask = [[TSATimedTask alloc] initWithClient:client summary:summary hourlyRate:hourlyRate hoursWorked:hoursWorked];
    
    [_timedTasks addObject:timedTask];
}

@end
