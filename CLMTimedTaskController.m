//
//  CLMTimedTaskController.m
//  TimeTracker
//
//  Created by Claudia Maciel on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLMTimedTaskController.h"
#import "CLMTimedTask.h"

@implementation CLMTimedTaskController

- (instancetype) init{
    self = [super init];
    
    if(self)
    {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    
    return self;
}

-(void) createTimedTaskWithClient:(NSString *)aClient summary:(NSString *)theSummary hoursWorked:(NSInteger)theHoursWorked hourlyRate:(double)theHourlyRate
{
    CLMTimedTask *task = [[CLMTimedTask alloc] initWithClient:aClient
                                                      summary:theSummary
                                                   hourlyRate:theHourlyRate
                                                  hoursWorked:theHoursWorked];
    
    [self.timedTasks addObject:task];
}

@end
