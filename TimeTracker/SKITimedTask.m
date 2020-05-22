//
//  SKITimedTask.m
//  TimeTracker
//
//  Created by Joshua Rutkowski on 5/22/20.
//  Copyright © 2020 Rutkowski. All rights reserved.
//

#import "SKITimedTask.h"

@implementation SKITimedTask

- (instancetype)initWithClientName:(NSString *)aClientName
  workDescription:(NSString *)aWorkDescription
hourlyRateCharged:(double)anHourlyRateCharged
amountHoursWorked:(double)anAmountHoursWorked
{
    if (self = [super init])
    {
        _clientName = aClientName;
        _workDescription = aWorkDescription;
        _hourlyRateCharged = anHourlyRateCharged;
        _amountHoursWorked = anAmountHoursWorked;
    }
    return self;
}


@synthesize totalAmount = _totalAmount;
- (double)totalAmount
{
    _totalAmount = _amountHoursWorked * _hourlyRateCharged;
    return _totalAmount;
}

@end
