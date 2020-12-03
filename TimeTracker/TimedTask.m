//
//  TimedTask.m
//  TimeTracker
//
//  Created by John McCants on 12/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TimedTask.h"


@implementation TimedTask

- (instancetype)initWithClientName:(NSString *)clientName workSummary:(NSString *)summaryText hourlyRate:(double)hourlyRate hoursWorked:(double)hoursWorked
{
    self = [super init];
    if (self) {
        _clientName = clientName;
        _summaryText = summaryText;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

- (double)totalBill {
    return self.hourlyRate * self.hoursWorked;
}


@end
