//
//  CLMTimedTask.m
//  TimeTracker
//
//  Created by Claudia Maciel on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLMTimedTask.h"

@implementation CLMTimedTask

- (instancetype) initWithClient:(NSString *)aClient summary:(NSString *)theSummary hourlyRate:(double)theHourlyRate hoursWorked:(NSInteger)theHoursWorked{
    self = [super init];
    
    if (self)
    {
        _client = aClient;
        _summary = theSummary;
        _hourlyRate = theHourlyRate;
        _hoursWorked = theHoursWorked;
    }
    return self;
}

-(double)total
{
    return _hoursWorked * _hourlyRate;
}

@end
