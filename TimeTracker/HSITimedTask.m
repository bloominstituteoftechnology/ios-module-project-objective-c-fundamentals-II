//
//  HSITimedTask.m
//  TimeTracker
//
//  Created by Kenny on 6/9/20.
//  Copyright © 2020 Hazy Studios Inc. All rights reserved.
//

#import "HSITimedTask.h"

@implementation HSITimedTask

- (instancetype)initWithClient:(NSString *)client summary:(NSString *)summary hourlyRate:(double)hourlyRate hoursWorked:(double)hoursWorked;
{
    self = [super init];
    if (self) {
        _client = client;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

- (double)total
{
    return self.hourlyRate * self.hoursWorked;
}

@end
