//
//  JMCTimedTask.m
//  TimeTracker
//
//  Created by Jarren Campos on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "JMCTimedTask.h"

@implementation JMCTimedTask

- (instancetype)initWithName:(NSString *)name
                     summary:(NSString *)summary
                  hourlyRate:(double)hourlyRate
                 hoursWorked:(double)hoursWorked {
    self = [super init];
    if (self) {
        _name = name;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

@synthesize total = _total;
- (double)total {
    _total = _hoursWorked * _hourlyRate;
    return _total;
}

@end
