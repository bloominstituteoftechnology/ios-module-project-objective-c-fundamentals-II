//
//  CBDTimedTask.m
//  TimeTracker
//
//  Created by Christopher Devito on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CBDTimedTask.h"

@implementation CBDTimedTask

// MARK: - Initializers
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

// Initialize total property as computed
@synthesize total = _total;
- (double)total {
    _total = _hoursWorked * _hourlyRate;
    return _total;
}

@end
