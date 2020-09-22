//
//  IGFTimedTask.m
//  TimeTracker
//
//  Created by Ian French on 9/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "IGFTimedTask.h"

@implementation IGFTimedTask
- (instancetype) initWithClient:(NSString *)aClient summary:(NSString *)aSummary hourlyRate:(double)aHourlyRate hoursWorked:(NSInteger)aHoursWorked{
    self = [super init];

    if (self)
    {
        _client = aClient;
        _summary = aSummary;
        _hourlyRate = aHourlyRate;
        _hoursWorked = aHoursWorked;
    }
    return self;
}

-(double)total
{
    return _hoursWorked * _hourlyRate;
}
@end
