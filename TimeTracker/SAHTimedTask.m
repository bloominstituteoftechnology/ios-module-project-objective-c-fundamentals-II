//
//  SAHTimedTask.m
//  TimeTracker
//
//  Created by scott harris on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SAHTimedTask.h"

@implementation SAHTimedTask

- (instancetype) initWithClient:(NSString *)client
                        summary:(NSString *)summary
                           rate:(double)rate
                    hoursWorked:(double)hoursWorked {
    self = [super init];
    if (self) {
        _client = client;
        _workSummary = summary;
        _hourlyRate = rate;
        _hoursWorked = hoursWorked;
    }
    
    return self;
}

- (double)total {
    return _hourlyRate * _hoursWorked;
}


@end
