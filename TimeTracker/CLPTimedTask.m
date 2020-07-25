//
//  CLPTimedTask.m
//  TimeTracker
//
//  Created by Chad Parker on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLPTimedTask.h"

@implementation CLPTimedTask

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                    hourlyRate:(NSDecimalNumber *)hourlyRate
                   hoursWorked:(NSDecimalNumber *)hoursWorked
{
    if (self = [super init]) {
        _client = client.copy;
        _summary = summary.copy;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

- (NSDecimalNumber *)total
{
    return [self.hourlyRate decimalNumberByMultiplyingBy:self.hoursWorked];
}

@end
