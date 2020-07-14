//
//  SABTimedTask.m
//  TimeTracker
//
//  Created by Stephanie Ballard on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SABTimedTask.h"

@implementation SABTimedTask

- (instancetype)initWithClientName:(NSString *)clientName
                   workedCompleted:(NSString *)workCompleted
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked; {
    if (self = [super init]) {
        _clientName = clientName;
        _workCompleted = workCompleted;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

- (double)total {
    return _hoursWorked * _hourlyRate;
}

@end
