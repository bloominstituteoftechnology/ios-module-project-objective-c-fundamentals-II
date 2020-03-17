//
//  MBMTimedTask.m
//  TimeTracker
//
//  Created by Michael on 3/17/20.
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

//- (NSNumber numberWithDouble:total)total {
//    return [self.hoursWorked doubleValue] * [self.hourlyRate doubleValue];
//}

@end
