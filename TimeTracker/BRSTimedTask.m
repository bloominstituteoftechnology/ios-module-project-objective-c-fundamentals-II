//
//  BRSTimedTask.m
//  TimeTracker
//
//  Created by BrysonSaclausa on 11/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "BRSTimedTask.h"

@implementation BRSTimedTask

- (instancetype)initWithClientName:(NSString *)aClientName
                       summaryText:(NSString *)aSummaryText
                        hourlyRate:(double)aHourlyRate
                        hoursWorked:(double)aHoursWorked
                              total:(double)aTotal {
    self = [super init];
    if (self != nil) {
        _clientName = aClientName;
        _summaryText = aSummaryText;
        _hourlyRate = aHourlyRate;
        _hoursWorked = aHoursWorked;
        
    }
    return self;
}

- (double)total
{
    return _hoursWorked * _hourlyRate;
}

@end
