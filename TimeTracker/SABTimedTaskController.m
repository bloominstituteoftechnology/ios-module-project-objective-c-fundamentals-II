//
//  SABTimedTaskController.m
//  TimeTracker
//
//  Created by Stephanie Ballard on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SABTimedTaskController.h"
#import "SABTimedTask.h"

// Class Extension
@interface SABTimedTaskController () {
}

@property (nonatomic) NSMutableArray<SABTimedTask *> *internalTimedTasks;

@end

@implementation SABTimedTaskController

- (instancetype)init {
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTasksWithClientName:(NSString *)clientName
                         workCompleted:(NSString *)workCompleted
                            hourlyRate:(double)hourlyRate
                           hoursWorked:(double)hoursWorked {
    
    SABTimedTask *timedTask = [[SABTimedTask alloc] initWithClientName:clientName
                                                       workedCompleted:workCompleted
                                                            hourlyRate:hourlyRate
                                                           hoursWorked:hoursWorked];
    }

-(void)addTimedTasksObject:(SABTimedTask *)timedTask {
    [self.internalTimedTasks addObject:timedTask];
}

@end
