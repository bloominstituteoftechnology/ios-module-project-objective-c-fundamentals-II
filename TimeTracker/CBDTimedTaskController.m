//
//  CBDTimedTaskController.m
//  TimeTracker
//
//  Created by Christopher Devito on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CBDTimedTaskController.h"
#import "CBDTimedTask.h"

@implementation CBDTimedTaskController
- (instancetype)init {
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}
- (void)createTimedTaskWith:(NSString *)name
                    summary:(NSString *)summary
                 hourlyRate:(double)hourlyRate
                hoursWorked:(double)hoursWorked {
    CBDTimedTask *timedTask = [[CBDTimedTask alloc] initWithName:name summary:summary hourlyRate:hourlyRate hoursWorked:hoursWorked];
    [self.timedTasks addObject:timedTask];
}

- (void)updateTimedTaskAt:(int)index
                     name:(NSString *)name
                  summary:(NSString *)summary
               hourlyRate:(double)hourlyRate
              hoursWorked:(double)hoursWorked {
    [self.timedTasks objectAtIndex:index].name = name;
    [self.timedTasks objectAtIndex:index].summary = summary;
    [self.timedTasks objectAtIndex:index].hourlyRate = hourlyRate;
    [self.timedTasks objectAtIndex:index].hoursWorked = hoursWorked;
}
@end
