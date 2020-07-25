//
//  SMATimedTask.m
//  TimeTracker
//
//  Created by Sean Acres on 7/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "SMATimedTask.h"

@implementation SMATimedTask

- (instancetype)initWithClientName:(NSString *)aClientName workSummary:(NSString *)aWorkSummary hourlyRate:(double)aHourlyRate timeWorked:(double)aTimeWorked
{
    if(self = [super init]) {
        _clientName = aClientName.copy;
        _workSummary = aWorkSummary.copy;
        _hourlyRate = aHourlyRate;
        _timeWorked = aTimeWorked;
    }
    return self;
}

@end
