//
//  MJPTimedTask.m
//  TimeTracker
//
//  Created by Mark Poggi on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MJPTimedTask.h"

@implementation MJPTimedTask

// MARK: - Initializer

- (instancetype)initWithName:(NSString *)name summary:(NSString *)summary hourlyRate:(double)hourlyRate hoursWorked:(double)hoursWorked
{
    if (self = [super init]) {
        _name = name;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

// https://stackoverflow.com/questions/19784454/when-should-i-use-synthesize-explicitly
@synthesize total = _total;
- (double)total {
    _total = _hourlyRate * _hoursWorked;
    return _total;
}

@end
