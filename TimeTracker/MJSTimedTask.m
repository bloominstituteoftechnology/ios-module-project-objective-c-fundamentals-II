//
//  MJSTimedTask.m
//  TimeTracker
//
//  Created by Morgan Smith on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MJSTimedTask.h"

@implementation MJSTimedTask

- (instancetype)initWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked {

    if (self = [super init]) {
        _clientName = clientName;
        _workSummary = workSummary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }

    return self;
}

- (double)totalBill {
    return self.hourlyRate * self.hoursWorked;
}

@end
