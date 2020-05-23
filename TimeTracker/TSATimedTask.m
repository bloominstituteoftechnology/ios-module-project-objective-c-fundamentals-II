//
//  TSATimedTask.m
//  TimeTracker
//
//  Created by Alex Thompson on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TSATimedTask.h"

@implementation TSATimedTask

- (instancetype)initWithClient:(NSString *)aClient total:(double)aTotal summary:(NSString *)aSummary hourlyRate:(double)aHourlyRate hoursWorked:(NSInteger)HoursWorked {
    
    if (self = [super init]) {
        
        _client = aClient.copy;
        _total = aTotal;
        _summary = aSummary;
        _hourlyRate = aHourlyRate;
        _hoursWorked = HoursWorked;
    }
    return self;
}

@end
