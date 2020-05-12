//
//  HLOTimedTask.m
//  TimeTracker
//
//  Created by Karen Rodriguez on 5/11/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "HLOTimedTask.h"

@implementation HLOTimedTask

- (instancetype)initWithClient:(NSString *)client summary:(NSString *)summary hourlyWage:(double)hourlyWage hoursWorked:(double)hoursWorked {
    self = [super init];
    if (self) {

        _client = client;
        _summary = summary;
        _hourlyWage = hourlyWage;
        _hoursWorked = hoursWorked;

    }
    return self;
}

- (double)total {
    return _hourlyWage * _hoursWorked;
}

@end
