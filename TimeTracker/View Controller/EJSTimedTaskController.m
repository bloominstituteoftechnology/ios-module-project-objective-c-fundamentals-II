//
//  EJSTimedTaskController.m
//  TimeTracker
//
//  Created by Enzo Jimenez-Soto on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "EJSTimedTaskController.h"
#import "EJSTimedTask.h"

@interface EJSTimedTaskController ()

@property (nonatomic) NSMutableArray<EJSTimedTask *> * internalTimedTasks;

@end

@implementation EJSTimedTaskController


- (instancetype)init {
    self = [super init];
    if (self) {
        _internalTimedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)createTimedTasksWithClientName:(NSString *)clientName
                              summary:(NSString *)summary
                           hourlyRate:(double)hourlyRate
                          hoursWorked:(double)hoursWorked {
    EJSTimedTask *timedTask = [[EJSTimedTask alloc] initWithClientName:clientName
                                                               summary:summary
                                                            hourlyRate:hourlyRate
                                                           hoursWorked:hoursWorked];
    
    [self.internalTimedTasks addObject: timedTask];
}

- (NSArray<EJSTimedTask *> *)timedTasks {
    return [self.internalTimedTasks copy];
}

@end
