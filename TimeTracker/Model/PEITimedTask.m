//
//  PEITimedTask.m
//  TimeTracker
//
//  Created by Austin Potts on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "PEITimedTask.h"

@implementation PEITimedTask

- (instancetype)initWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(int)hourlyrate
                        timeWorked:(int)timeWorked {
                            // total:(double *)total
    self = [super init];
    if (self) {
        _clientName = clientName;
        _workSummary = workSummary;
        _hourlyRate = hourlyrate;
        _timeWorked = timeWorked;
       // _total = total;
    }
    return self;
}

//Implement the getter method for your total property
- (double)total {
      return self.timeWorked * self.hourlyRate;
  }

@end
