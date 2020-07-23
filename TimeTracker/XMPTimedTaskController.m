//
//  XMPTimedTaskController.m
//  TimeTracker
//
//  Created by conner on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "XMPTimedTaskController.h"
#import "XMPTimedTask.h"

@implementation XMPTimedTaskController

- (instancetype)init {
    self = [super init];
    if(self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWithClientName:(NSString*)clientName summary:(NSString*)summary hourlyRate:(float)hourlyRate hoursWorked:(float)hoursWorked {
    XMPTimedTask* newTask = [[XMPTimedTask alloc] initWithClientName:clientName summary:summary hourlyRate:hourlyRate hoursWorked:hoursWorked];
    [self.timedTasks addObject:newTask];
}

@end
