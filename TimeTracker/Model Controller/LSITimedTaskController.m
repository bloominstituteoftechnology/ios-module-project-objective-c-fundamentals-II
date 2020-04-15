//
//  LSITimedTaskController.m
//  TimeTracker
//
//  Created by Ufuk Türközü on 14.04.20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITimedTaskController.h"
#import "LSITimedTask.h"

@implementation LSITimedTaskController


-(instancetype)init {
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}
-(void)createTimeTaskWithClient:(NSString *)client
                              workSummary:(NSString *)workSummary
                              ratePerHour:(double)ratePerHour
                              hoursWorked:(double)hoursWorked {
    
    
    LSITimedTask *task = [[LSITimedTask alloc] initWithClient:client workSummary:workSummary ratePerHour:ratePerHour hoursWorked:hoursWorked];
    
    [_timedTasks addObject:task];
}

@end
