//
//  MKTimedController.m
//  TimeTracker
//
//  Created by Lambda_School_Loaner_268 on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MKTimedController.h"
#import "MKTimedTask.h"


@implementation MKTimedTaskController

-(instancetype) init {
    if (self = [super init]) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)createTimedTasksWithClientName:(NSString *)clientName
                              sunmary:(NSString *)summary
                           hourlyRate:(double)hourlyRate
                          hoursWorked:(double)hoursWorked {
    MKTimedTask *timedTask = [[MKTimedTask alloc] initWithClientName:clientName
                                                             summary:summary
                                                          hourlyRate:hourlyRate
                                                         hoursWorked:hoursWorked];
    [self.timedTasks addObject:timedTask];
    
}

@end
