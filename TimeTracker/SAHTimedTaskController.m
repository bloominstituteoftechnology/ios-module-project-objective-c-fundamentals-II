//
//  SAHTimedTaskController.m
//  TimeTracker
//
//  Created by scott harris on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SAHTimedTaskController.h"
#import "SAHTimedTask.h"

@implementation SAHTimedTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWithClient:(NSString *)client summary:(NSString *)summary rate:(double)rate hoursWorked:(double)hoursWorked {
    
    SAHTimedTask *task = [[SAHTimedTask alloc] initWithClient:client summary:summary rate:rate hoursWorked:hoursWorked];
    
    [self.timedTasks addObject:task];
}

@end
