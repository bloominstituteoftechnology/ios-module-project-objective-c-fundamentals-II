//
//  CDGTimedTaskController.m
//  TimeTracker
//
//  Created by Chris Gonzales on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CDGTimedTaskController.h"
#import "CDGTimedTask.h"

@interface CDGTimedTaskController()

@property (nonatomic) NSMutableArray<CDGTimedTask *> *internaltimedTasks;

@end

@implementation CDGTimedTaskController

-(instancetype)init {
    self = [super init];
    if (self) {
        _internaltimedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}



- (void)createTimedTask:(NSString *)clientName
     workoutDescription:(NSString *)workoutDescription
             hourlyRate:(double)hourlyRate
            hoursWorked:(double)hoursWorked {
CDGTimedTask *newTask = [[CDGTimedTask alloc] initWithClientName:clientName
                                              workoutDescription:workoutDescription
                                                      hourlyRate:hourlyRate
                                                     hoursWorked:hoursWorked];
    [self.internaltimedTasks addObject:newTask];
}


@end
