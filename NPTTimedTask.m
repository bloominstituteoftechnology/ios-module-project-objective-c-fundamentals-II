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

-(instancetype)initWithClient:(NSString*)client
                      summary:(NSString*)summary hourlyRate:(double)hourlyRate timeWorked:(double)timeWorked
                     totalPay:(double)totalPay {
    self = [super init];
    if (self) {
        _client = [client copy];
        _summary = [summary copy];
        _hourlyRate = hourlyRate;
        _timeWorked = timeWorked;
        _totalPay = totalPay;
    }
    return self;

}

- (double) totalPay {
      return self.hourlyRate * self.timeWorked;
  }
@end
