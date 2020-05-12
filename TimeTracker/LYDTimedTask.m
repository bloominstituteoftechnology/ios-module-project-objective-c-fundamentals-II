//
//  LYDTimedTask.m
//  TimeTracker
//
//  Created by Lydia Zhang on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LYDTimedTask.h"

@implementation LYDTimedTask
- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                        hrRate:(double)hrRate
                           hrs:(double)hrs {
    self = [super init];
    if (self) {
        _client = client;
        _summary = summary;
        _hrRate = hrRate;
        _hrs = hrs;
    }
    return self;
}
-(double)total {
    return _hrRate * _hrs;
}
@end
