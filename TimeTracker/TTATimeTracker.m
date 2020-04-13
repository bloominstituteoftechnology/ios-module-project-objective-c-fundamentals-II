//
//  TTATimeTracker.m
//  TimeTracker
//
//  Created by Dillon P on 4/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TTATimeTracker.h"

@implementation TTATimeTracker

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                    hourlyRate:(double)hourlyRate
                 numberOfHours:(double)numberOfHours

{
    if (self = [super init]) {
        _client = client.copy;
        _summary = summary.copy;
        _hourlyRate = hourlyRate;
        _numberOfHours = numberOfHours;
    }
    return self;
}

- (double)totalCost {
    return _hourlyRate * _numberOfHours;
}

@end
