//
//  JMCTimedTaskController.m
//  TimeTracker
//
//  Created by Jarren Campos on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "JMCTimedTaskController.h"
#import "JMCTimedTask.h"

@implementation JMCTimedTaskController
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
    JMCTimedTask *timedTask = [[JMCTimedTask alloc] initWithName:name
                                                         summary:summary
                                                      hourlyRate:hourlyRate
                                                     hoursWorked:hoursWorked];
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
