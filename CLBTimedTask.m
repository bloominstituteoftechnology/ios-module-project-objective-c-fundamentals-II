//
//  CLBTimedTask.m
//  TimeTracker
//
//  Created by Christian Lorenzo on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLBTimedTask.h"

@implementation CLBTimedTask

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
