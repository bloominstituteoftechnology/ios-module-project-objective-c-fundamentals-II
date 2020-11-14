//
//  TimedTask.m
//  TimeTracker
//
//  Created by Cora Jacobson on 11/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TimedTask.h"

@implementation TimedTask

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                    hourlyRate:(double)rate
                   hoursWorked:(double)hours
{
    if (self = [super init]) {
        _client = client.copy;
        _summary = summary.copy;
        _hourlyRate = rate;
        _hoursWorked = hours;
    }
    return  self;
}

- (double)total
{
    return _hourlyRate * _hoursWorked;
}

@end
