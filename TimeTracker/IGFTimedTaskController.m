//
//  IGFTimedTaskController.m
//  TimeTracker
//
//  Created by Ian French on 9/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "IGFTimedTaskController.h"
#import "IGFTimedTask.h"

@implementation IGFTimedTaskController
- (instancetype) init{
    self = [super init];

    if(self)
    {
        _timedTasks = [[NSMutableArray alloc] init];
    }

    return self;
}

-(void) createTimedTaskWithClient:(NSString *)aClient summary:(NSString *)aSummary hoursWorked:(NSInteger)aHoursWorked hourlyRate:(double)aHourlyRate
{
    IGFTimedTask *task = [[IGFTimedTask alloc] initWithClient:aClient
                                                      summary:aSummary
                                                   hourlyRate:aHourlyRate
                                                  hoursWorked:aHoursWorked];

    [self.timedTasks addObject:task];
}

@end
