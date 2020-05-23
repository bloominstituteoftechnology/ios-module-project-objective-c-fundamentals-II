//
//  CLBTimedTaskController.m
//  TimeTracker
//
//  Created by Christian Lorenzo on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLBTimedTaskController.h"
#import "CLBTimedTask.h"


@interface CLBTimedTaskController ()

@property (nonatomic, readwrite) NSMutableArray<CLBTimedTask *> *tasks;

@end

@implementation CLBTimedTaskController

- (instancetype)init {
    if (self = [super init]) {
        _tasks = [[NSMutableArray alloc]init];
    }
    
    return self;
}

- (void)addTimedTaskWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked {
    CLBTimedTask *task = [[CLBTimedTask alloc] initWithClientName:clientName
                                                      workSummary:workSummary
                                                       hourlyRate:hourlyRate
                                                      hoursWorked:hoursWorked];
    [self.tasks addObject:task];
}

@end


