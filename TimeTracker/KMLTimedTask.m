//
//  KMLTimedTask.m
//  TimeTracker
//
//  Created by Keri Levesque on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "KMLTimedTask.h"

@implementation KMLTimedTask

- (instancetype)initWithClient:(NSString*)client
                 summaryOfWork:(NSString*)summaryOfWork
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(int)hoursWorked {
    self = [super init];
    if (self) {
        _client = client;
        _summaryOfWork = summaryOfWork;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
        
    }
    return self;
}
- (double)total {
    return _hourlyRate * _hoursWorked;
}
@end
