//
//  CMBTimedTask.m
//  TimeTracker
//
//  Created by Craig Belinfante on 11/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CMBTimedTask.h"

@implementation CMBTimedTask

- (instancetype)initWithName:(NSString *)aClient
                     summary:(NSString *)aSummary
                        rate:(NSInteger)aRate
                      amount:(double)anAmount
                       total:(double)aTotal;
{
    if (self = [super init]) {
        _client = aClient.copy;
        _summary = aSummary;
        _rate = aRate;
        _amount = anAmount;
        _total = aTotal;
    }
    return self;
}

@end
