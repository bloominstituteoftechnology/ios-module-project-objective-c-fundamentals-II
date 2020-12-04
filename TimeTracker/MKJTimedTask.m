//
//  MKJTimedTask.m
//  TimeTracker
//
//  Created by Kenneth Jones on 11/26/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MKJTimedTask.h"

@implementation MKJTimedTask

- (instancetype)initWithClient:(NSString *)aClient
                       summary:(NSString *)aSummary
                          rate:(double)aRate
                         hours:(double)aHours
{
    if (self = [super init]) {
        _client = aClient.copy;
        _summary = aSummary.copy;
        _rate = aRate;
        _hours = aHours;
    }
    return self;
}

- (double)total
{
    return _rate * _hours;
}

@end
