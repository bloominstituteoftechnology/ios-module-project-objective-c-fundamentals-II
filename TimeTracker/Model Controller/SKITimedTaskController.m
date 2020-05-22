//
//  SKITimedTaskController.m
//  TimeTracker
//
//  Created by Joshua Rutkowski on 5/22/20.
//  Copyright © 2020 Rutkowski. All rights reserved.
//

#import "SKITimedTaskController.h"
#import "SKITimedTask.h"

@implementation SKITimedTaskController

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
    SKITimedTask *timedTask = [[SKITimedTask alloc] initWithClientName: clientName
                                                       workDescription: workDescription
                                                     hourlyRateCharged: hourlyRateCharged
                                                     amountHoursWorked: amountHoursWorked];
    [_timedTasks addObject:timedTask];
}
@end
