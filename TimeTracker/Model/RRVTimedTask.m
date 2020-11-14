//
//  RRVTimedTask.m
//  TimeTracker
//
//  Created by Rob Vance on 11/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "RRVTimedTask.h"

@implementation RRVTimedTask

- (instancetype) initWithName:(NSString *)aClientName
                  workSummary:(NSString *)aWorkSummary
                   hourlyRate:(double)aHourlyRate
                  hoursWorked:(double)someHoursWorked {
    if (self = [super init]) {
        _clientName = aClientName.copy;
        _workSummary = aWorkSummary.copy;
        _hourlyRate = aHourlyRate;
        _hoursWorked = someHoursWorked;
    }
    return self;
}

- (double)totalCost
{
    return _hoursWorked * _hourlyRate;
}

@end
