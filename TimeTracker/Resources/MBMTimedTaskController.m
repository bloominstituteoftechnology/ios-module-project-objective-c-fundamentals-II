//
//  MBMTimedTaskController.m
//  TimeTracker
//
//  Created by Enrique Gongora on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MBMTimedTaskController.h"
#import "MBMTimedTask.h"

@implementation MBMTimedTaskController

- (instancetype)init {
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWithClient:(NSString *)client
                    summaryOfWork:(NSString *)summaryOfWork
                       hourlyRate:(double)hourlyRate
                      hoursWorked:(double)hoursWorked {
    MBMTimedTask *newTask = [[MBMTimedTask alloc]
                             initWithClient:client
                             summaryOfWork:summaryOfWork
                             hourlyRate:hourlyRate
                             hoursWorked:hoursWorked];
    [_timedTasks addObject:newTask];
}

@end
