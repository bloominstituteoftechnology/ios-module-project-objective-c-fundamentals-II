//
//  HLOTimedTaskController.m
//  TimeTracker
//
//  Created by Karen Rodriguez on 5/11/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "HLOTimedTaskController.h"


@implementation HLOTimedTaskController

- (instancetype)init {
    self = [super init];
    if (self) {
        _tasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWith:(NSString *)client summary:(NSString *)summary hourlyWage:(double)hourlyWage hoursWorked:(double)hoursWorked {
    HLOTimedTask *newTask = [[HLOTimedTask alloc] initWithClient:client summary:summary hourlyWage:hourlyWage hoursWorked:hoursWorked];

    [self.tasks addObject:newTask];
}

@end
