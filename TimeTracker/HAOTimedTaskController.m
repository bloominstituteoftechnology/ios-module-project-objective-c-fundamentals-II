//
//  HAOTimedTaskController.m
//  TimeTracker
//
//  Created by Hunter Oppel on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "HAOTimedTaskController.h"
#import "HAOTimedTask.h"

@implementation HAOTimedTaskController

-(instancetype)init
{
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWith:(NSString *)client :(NSString *)summary :(double)hourlyRate :(int)hoursWorked
{
    HAOTimedTask *task = [[HAOTimedTask alloc] initWithClient:client
                                                      summary:summary
                                                   hourlyRate:hourlyRate
                                                  hoursWorked:hoursWorked];
    
    [self.timedTasks addObject:task];
}

@end
