//
//  SSTimedTaskController.m
//  TimeTracker
//
//  Created by Shawn Gee on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SSTimedTaskController.h"
#import "SSTimedTask.h"

@interface SSTimedTaskController ()

@property (nonatomic, readwrite) NSMutableArray<SSTimedTask *> *tasks;

@end

@implementation SSTimedTaskController

- (instancetype)init {
    if (self = [super init]) {
        _tasks = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)addTimedTaskWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked {
    SSTimedTask *task = [[SSTimedTask alloc] initWithClientName:clientName
                                                    workSummary:workSummary
                                                     hourlyRate:hourlyRate
                                                    hoursWorked:hoursWorked];
    
    [self.tasks addObject:task];
}


@end
