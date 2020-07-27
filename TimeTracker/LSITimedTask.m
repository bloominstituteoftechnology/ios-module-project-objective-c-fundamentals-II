//
//  LSITimedTask.m
//  TimeTracker
//
//  Created by Kelson Hartle on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITimedTask.h"

@implementation LSITimedTask

- (instancetype)initWithClientName:(NSString *)name
                       workSummary:(NSString *)workSummary
                        hourlyRate:(int)hourlyRate
                        amountOfHoursWorked:(int)amountOfHoursWorked; {
    
    if (self = [super init]) {
        // #1 init: always use _propertyName (instance variable)
        _clientName = name;
        _workSummary = workSummary;
        _hourlyRate = hourlyRate;
        _amountOfHoursWorked = amountOfHoursWorked;
    }
    return self;
}

- (double)totalPrice
{
    return self.amountOfHoursWorked * self.hourlyRate;
}


@end
