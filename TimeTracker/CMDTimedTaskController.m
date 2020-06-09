//
//  CMDTimedTaskController.m
//  TimeTracker
//
//  Created by Chris Dobek on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CMDTimedTaskController.h"
#import "CMDTimedTask.h"

@implementation CMDTimedTaskController

-(instancetype)init
{
    if (self = [super init])
    {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWith:(NSString *)clientName
            workDescription:(NSString *)workDescription
          hourlyRateCharged:(double)hourlyRateCharged
          amountHoursWorked:(double)amountHoursWorked {
    CMDTimedTask *timedTask = [[CMDTimedTask alloc] initWithClientName: clientName
                                                       workDescription: workDescription
                                                     hourlyRateCharged: hourlyRateCharged
                                                     amountHoursWorked: amountHoursWorked];
    [_timedTasks addObject:timedTask];
}

- (void)updateTimedTaskAt:(NSInteger)index
              clientName:(NSString *)clientName
         workDescription:(NSString *)workDescription
       hourlyRateCharged:(double)hourlyRateCharged
       amountHoursWorked:(double)amountHoursWorked {
    [_timedTasks objectAtIndex:index].clientName = clientName;
    [_timedTasks objectAtIndex:index].workDescription = workDescription;
    [_timedTasks objectAtIndex:index].hourlyRateCharged = hourlyRateCharged;
    [_timedTasks objectAtIndex:index].amountHoursWorked = amountHoursWorked;
}

@end
