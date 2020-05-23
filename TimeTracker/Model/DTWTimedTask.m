//
//  DTWTimedTask.m
//  TimeTracker
//
//  Created by David Wright on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DTWTimedTask.h"

@implementation DTWTimedTask

// Initializer
- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(double)hoursWorked
{
    if (self = [super init]) {
        _client = client.copy;
        _summary = summary.copy;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

@end
