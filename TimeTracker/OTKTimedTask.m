//
//  TimedTask.m
//  TimeTracker
//
//  Created by Tobi Kuyoro on 12/05/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "OTKTimedTask.h"

@implementation OTKTimedTask

- (instancetype)initWithClient:(NSString *)client
                   workSummary:(NSString *)workSummary
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(int)hoursWorked {
    if (self = [super init]) {
        _client = client;
        _workSummary = workSummary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }

    return self;
}

- (double)total {
    return _hourlyRate * _hoursWorked;
}

@end
