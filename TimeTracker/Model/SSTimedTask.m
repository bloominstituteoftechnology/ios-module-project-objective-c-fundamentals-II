//
//  SSTimedTask.m
//  TimeTracker
//
//  Created by Shawn Gee on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SSTimedTask.h"

@implementation SSTimedTask

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
