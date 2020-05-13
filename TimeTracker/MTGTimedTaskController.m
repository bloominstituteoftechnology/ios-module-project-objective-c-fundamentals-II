//
//  MTGTimedTaskController.m
//  TimeTracker
//
//  Created by Mark Gerrior on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MTGTimedTaskController.h"
#import "MTGTimedTask.h"

@interface MTGTimedTaskController () {
    // (Optional) Private instance variables
}

// Private Properties

// Private Outlets

// Private methods

@end

@implementation MTGTimedTaskController

- (instancetype)init {
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWith:(NSString *)client
                workSummary:(NSString *)workSummary
                 hourlyRate:(double)hourlyRate
                hoursWorked:(double)hoursWorked {

    MTGTimedTask *newTimedTask = [[MTGTimedTask alloc] initWithClient:client workSummary:workSummary hourlyRate:hourlyRate hoursWorked:hoursWorked];

    [self.timedTasks addObject:newTimedTask];
}

@end
