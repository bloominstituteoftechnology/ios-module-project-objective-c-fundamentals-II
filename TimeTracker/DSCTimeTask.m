//
//  DSCTimeTask.m
//  TimeTracker
//
//  Created by denis cedeno on 5/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DSCTimeTask.h"

@implementation DSCTimeTask

- (instancetype)initWithClient:(NSString *)aClient
                   workSummary:(NSString *)aSummaryOfWork
                   rateCharged:(double)aRateCharged
                   hoursWorked:(double)aWorkedHours
{
    if (self = [super init]) {
        _client = aClient.copy;
        _workSummary = aSummaryOfWork.copy;
        _rateCharged = aRateCharged;
        _hoursWorked = aWorkedHours;
    }
    return self;
}

@synthesize total = _total;
- (double)total {
    _total = _hoursWorked * _rateCharged;
    return _total;
}

@end
