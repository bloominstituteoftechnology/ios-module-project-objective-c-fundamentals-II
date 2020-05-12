//
//  WHTimedTaskController.m
//  TimeTracker
//
//  Created by Wyatt Harrell on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "WHTimedTaskController.h"
#import "WHTimedTask.h"

//@interface WHTimedTask () {
//    // (Optional) Private instance variables
//}
//
//
//
//@end

@implementation WHTimedTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWith:(NSString *)client
                    summary:(NSString *)summary
                 hourlyRate:(int)hourlyRate
                hoursWorked:(int)hoursWorked {
    WHTimedTask *timedTask = [[WHTimedTask alloc] initWithClient:client summary:summary hourlyRate:hourlyRate hoursWorked:hoursWorked];

    [_timedTasks addObject:timedTask];
}

@end
