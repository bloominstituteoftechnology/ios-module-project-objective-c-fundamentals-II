//
//  MJPTimedTaskController.m
//  TimeTracker
//
//  Created by Mark Poggi on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MJPTimedTaskController.h"

#import "MJPTimedTask.h"

@implementation MJPTimedTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {

        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

// MARK: - Methods

- (void)createTimedTaskWith:(NSString *)name
                    summary:(NSString *)summary
                 hourlyRate:(double)hourlyRate
                hoursWorked:(double)hoursWorked
{
    MJPTimedTask *timedTask = [[MJPTimedTask alloc] initWithName:name summary:summary hourlyRate:hourlyRate hoursWorked:hoursWorked];
    [self.timedTasks addObject:timedTask];
}

@end
