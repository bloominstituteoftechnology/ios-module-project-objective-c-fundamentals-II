//
//  WHTimedTask.m
//  TimeTracker
//
//  Created by Wyatt Harrell on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "WHTimedTask.h"

@implementation WHTimedTask

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                    hourlyRate:(int)hourlyRate
                   hoursWorked:(int)hoursWorked {
    if (self = [super init]) {
        _client = client;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}
    
- (double)total {
    return _hourlyRate * _hoursWorked;
}


@end
