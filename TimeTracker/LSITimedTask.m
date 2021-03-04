//
//  LSITimedTask.m
//  TimeTracker
//
//  Created by James McDougall on 3/3/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import "LSITimedTask.h"

@implementation LSITimedTask

- (instancetype)initWithClientName:(NSString *)clientName workSummary:(NSString *)workSummary payRate:(int)payRate hoursWorked:(int)hoursWorked
{
    if (self = [super init]) {
        _clientName = clientName;
        _workSummary = workSummary;
        _payRate = payRate;
        _hoursWorked = hoursWorked;
    }
    
    return self;
}

- (int)payAmount {
    return _hoursWorked * _payRate;
}

@end
