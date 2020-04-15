//
//  NPTTimedTask.m
//  TimeTracker
//
//  Created by Nick Nguyen on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "NPTTimedTask.h"

@implementation NPTTimedTask
@synthesize totalPay = _totalPay;

- (instancetype)initWithClient:(NSMutableString *)client
                      summary:(NSMutableString *)summary hourlyRate:(double)hourlyRate timeWorked:(double)timeWorked
                     {
    self = [super init];
    if (self) {
        _client = [client copy];
        _summary = [summary copy];
        _hourlyRate = hourlyRate;
        _timeWorked = timeWorked;
        
    }
    return self;

}

- (double) totalPay {
      return self.hourlyRate * self.timeWorked;
  }

@end


