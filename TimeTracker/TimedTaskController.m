//
//  TimedTaskController.m
//  TimeTracker
//
//  Created by Bhawnish Kumar on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TimedTaskController.h"
#import "LSITimeTask.h"

@interface TimedTaskController () {
    // (Optional) Private instance variables
}

// Private Properties

// Private Outlets

// Private methods

@end

@implementation TimedTaskController


- (instancetype)init {
    
    self = [super init];
    if (self) {
        _timeTask = [[NSMutableArray alloc] init];
    }
    return self;
    
}

- (void)createTimedTaskWith:(NSString *)client
                    summary:(NSString *)summary
                 hourlyRate:(double)hourlyRate
                 timeWorked:(double)timeWorked
{
    
    LSITimeTask *newTimedTask = [[LSITimeTask alloc] initWithClientName:client summary:summary hourlyRate:hourlyRate timeWorked:timeWorked];
    
    [self.timeTask addObject:newTimedTask];
}


@end

