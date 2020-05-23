//
//  JAGTimedTask.m
//  TimeTracker
//
//  Created by Jessie Ann Griffin on 5/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "JAGTimedTask.h"

@implementation JAGTimedTask

- (instancetype)initWithClient:(NSString *)aClient
                       summary:(NSString *)aSummary
                  hourlyRateOf:(double)anHourlyRate
                   hoursWorked:(double)hoursWorked
{
    if (self = [super init]) {
        _client = aClient;
        _summary = aSummary;
        _hourlyRate = anHourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

- (double)totalBill
{
    return _hourlyRate * _hoursWorked;
}

@end
