//
//  TimedTask.m
//  TimeTracker
//
//  Created by Matthew Martindale on 7/26/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MKMTimedTask.h"

@implementation MKMTimedTask

- (instancetype)initWithClient:(NSString *)aClient
                       summary:(NSString *)aSummary
                    hourlyRate:(double)anHourlyRate
                   hoursWorked:(double)anHoursWorked
{
    if (self = [super init]) {
        _client = aClient.copy;
        _summary = aSummary.copy;
        _hourlyRate = anHourlyRate;
        _hoursWorked = anHoursWorked;
    }
    return self;
}

- (double)total
{
    return _hoursWorked * _hourlyRate;
}

@end
