//
//  MJSTimedTaskController.m
//  TimeTracker
//
//  Created by Morgan Smith on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MJSTimedTaskController.h"
#import "MJSTimedTask.h"

@interface MJSTimedTaskController ()

@property (nonatomic, readwrite) NSMutableArray<MJSTimedTask *> *tasks;

@end

@implementation MJSTimedTaskController

- (instancetype)init {
    if (self = [super init]) {
        _tasks = [[NSMutableArray alloc]init];
    }

    return self;
}

- (void)createTimedTaskWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked {
    MJSTimedTask *task = [[MJSTimedTask alloc] initWithClientName:clientName
                                                      workSummary:workSummary
                                                       hourlyRate:hourlyRate
                                                      hoursWorked:hoursWorked];
    [self.tasks addObject:task];
}

@end
