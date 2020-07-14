//
//  NNETimedTask.m
//  TimeTracker
//
//  Created by Nonye on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "NNETimedTask.h"

@implementation NNETimedTask

- (instancetype)initWithClientName:(NSString *)clientName
                    workedComplete:(NSString *)workComplete
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked; {
    self = [super init];
    if (self != nil) {
        _clientName = clientName;
        _workComplete = workComplete;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

- (double)total {
    return _hoursWorked * _hourlyRate;
}

@end
