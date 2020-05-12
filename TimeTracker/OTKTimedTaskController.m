//
//  OTKTimedTaskController.m
//  TimeTracker
//
//  Created by Tobi Kuyoro on 12/05/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "OTKTimedTaskController.h"
#import "OTKTimedTask.h"

@implementation OTKTimedTaskController

- (instancetype)init {
    if (self = [super init]) {
        _timedTasks = [[NSMutableArray alloc] init];
    }

    return self;
}

- (void)createTimedTasksWithClient:(NSString *)client
                       workSummary:(NSString *)workSummary
                        hourlyRate:(int)hourlyRate
                       hoursWorked:(int)hoursWorked {

    OTKTimedTask *timedTask = [[OTKTimedTask alloc] initWithClient:client
                                                       workSummary:workSummary
                                                        hourlyRate:hourlyRate
                                                       hoursWorked:hoursWorked];
    [self.timedTasks addObject:timedTask];
}

@end
