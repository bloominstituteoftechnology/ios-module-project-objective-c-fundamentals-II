//
//  JLATimedTaskController.m
//  TimeTracker
//
//  Created by Jorge Alvarez on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "JLATimedTaskController.h"
#import "JLATimedTask.h"

// Class Extension
@interface JLATimedTaskController ()

// Private property
@property (nonatomic) NSMutableArray<JLATimedTask *> *internalTimedTasks;

// Private methods

@end

@implementation JLATimedTaskController


- (instancetype)init {
    self = [super init];
    if (self) {
        
        _internalTimedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTasksWithClientName:(NSString *)clientName
                               summary:(NSString *)summary
                            hourlyRate:(double)hourlyRate
                           hoursWorked:(double)hoursWorked {
    
    JLATimedTask *timedTask = [[JLATimedTask alloc] initWithClientName:clientName
                                                               summary:summary
                                                            hourlyRate:hourlyRate
                                                           hoursWorked:hoursWorked];
    
    [self.internalTimedTasks addObject:timedTask];
}

- (NSArray<JLATimedTask *> *)timedTasks {
    return [self.internalTimedTasks copy];
}

@end
