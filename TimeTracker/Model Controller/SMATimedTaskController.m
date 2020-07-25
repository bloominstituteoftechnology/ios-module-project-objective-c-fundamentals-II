//
//  SMATimedTaskController.m
//  TimeTracker
//
//  Created by Sean Acres on 7/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SMATimedTaskController.h"
#import "../Model/SMATimedTask.h"

@implementation SMATimedTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWithClientName:(NSString *)clientName
                          workSummary:(NSString *)aWorkSummary
                           hourlyRate:(double)aHourlyRate
                           timeWorked:(double)aTimeWorked
{
    SMATimedTask *aTimedTask = [[SMATimedTask alloc] initWithClientName:clientName
                                                            workSummary:aWorkSummary
                                                             hourlyRate:aHourlyRate
                                                             timeWorked:aTimeWorked];
    [_timedTasks addObject:aTimedTask];
}

@end
