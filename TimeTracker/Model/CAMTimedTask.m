//
//  CAMTimedTask.m
//  TimeTracker
//
//  Created by Cody Morley on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CAMTimedTask.h"

@implementation CAMTimedTask

- (instancetype)initWithName:(NSString *)name
                     summary:(NSString *)summary
                        rate:(double)rate
                       hours:(double)hours;
{
    self = [super init];
    if (self) {
        _name = [name copy];
        _summary = [summary copy];
        _rate = rate;
        _hours = hours;
    }
    return self;
}

@end
