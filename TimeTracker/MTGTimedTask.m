//
//  MTGTimedTask.m
//  TimeTracker
//
//  Created by Mark Gerrior on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MTGTimedTask.h"

@implementation MTGTimedTask

- (instancetype)initWithClient:(NSString *)client
                   workSummary:(NSString *)workSummary
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(double)hoursWorked {

    self = [self init];

    if (self != nil) {
        _client = client;
        _workSummary = workSummary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

/// total as a readonly property
- (double)total {
    return _hourlyRate * _hoursWorked;
}

@end
