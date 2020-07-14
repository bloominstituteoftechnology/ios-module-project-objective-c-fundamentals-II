//
//  NNETimedTaskController.m
//  TimeTracker
//
//  Created by Nonye on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "NNETimedTaskController.h"
#import "NNETimedTask.h"

@interface NNETimedTaskController()

@property(nonatomic) NSMutableArray<NNETimedTask *> *internalTimedTask;

@end

@implementation NNETimedTaskController

- (instancetype)init {
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    
    return self;
}

- (void)createTimedTasksWithClientName:(NSString *)clientName
                          workComplete:(NSString *)workComplete hourlyRate:(double)hourlyRate hoursWorked:(double)hourdWorked {
    
    
    NNETimedTask *timedTask = [[NNETimedTask alloc] initWithClientName:clientName workedComplete:workComplete hourlyRate:hourlyRate hoursWorked:hourdWorked];
}

- (void)addTimedTasksObject:(NNETimedTask *)timedTask {
    [self.internalTimedTask addObject:timedTask];
}
@end
