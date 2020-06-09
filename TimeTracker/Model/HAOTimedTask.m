//
//  HAOTimedTask.m
//  TimeTracker
//
//  Created by Hunter Oppel on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "HAOTimedTask.h"

@implementation HAOTimedTask

- (instancetype)initWithClient:(NSString *)client summary:(NSString *)summary hourlyRate:(double)hourlyRate hoursWorked:(int)hoursWorked
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

- (double)totalWage
{
    return self.hoursWorked * self.hourlyRate;
}

@end
