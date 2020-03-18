//
//  PEITimedTaskController.m
//  TimeTracker
//
//  Created by Austin Potts on 3/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "PEITimedTaskController.h"
#import "PEITimedTask.h"


@interface PEITimedTaskController () {
     int _counter; //Private variable defaults to 0
}

@property NSMutableArray<PEITimedTask *> *internalTask;

@end


@implementation PEITimedTaskController

- (instancetype) init {
    self = [super init];
    if (self) {
        
        
        //How do I initialize my internal Task
        //Set the _timedTasks to a new instance of NSMutableArray
        _internalTask = [[NSMutableArray alloc] init];
        
    }
    return self;
}

- (void)initWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(double)hourlyrate
                        timeWorked:(double)timeWorked {
    
    //This should initialize a TimedTask
    PEITimedTask *newestTask = [[PEITimedTask alloc]
                                initWithClientName:clientName
                                workSummary:workSummary
                                hourlyRate:hourlyrate
                                timeWorked:timeWorked];
    
    // then add it to the timedTasks array
    [_timedTask addObject:newestTask];
    
}


@end
