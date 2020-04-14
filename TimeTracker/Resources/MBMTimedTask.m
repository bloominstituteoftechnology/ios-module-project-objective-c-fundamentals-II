//
//  MBMTimedTask.m
//  TimeTracker
//
//  Created by Enrique Gongora on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MBMTimedTask.h"

@implementation MBMTimedTask

- (instancetype)initWithClient:(NSString *)client
                 summaryOfWork:(NSString *)summaryOfWork
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(double)hoursWorked {
    self = [super init];
    if (self) {
        _client = client;
        _summaryOfWork = summaryOfWork;
        _hourlyRate = [NSNumber numberWithDouble:hourlyRate];
        _hoursWorked = [NSNumber numberWithDouble:hoursWorked];
    }
    return self;
}

- (double)total {
    return [self.hourlyRate doubleValue] * [self.hoursWorked doubleValue];
}
@end
