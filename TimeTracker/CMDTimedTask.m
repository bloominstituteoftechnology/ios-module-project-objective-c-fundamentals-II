//
//  CMDTimedTask.m
//  TimeTracker
//
//  Created by Chris Dobek on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CMDTimedTask.h"

@implementation CMDTimedTask

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
