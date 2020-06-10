//
//  LSITimeTask.m
//  TimeTracker
//
//  Created by Bhawnish Kumar on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITimeTask.h"

@implementation LSITimeTask

- (instancetype)initWithClientName:(NSString *)clientName summary:(NSString *)summary hourlyRate:(double)hourlyRate timeWorked:(double)timeWorked
{
    
    self = [super init];

      if (self != nil) {
          _clientName = clientName;
          _summmary = summary;
          _hourlyRate = hourlyRate;
          _timeWorked = timeWorked;
      }
      return self;

}

- (double)total
{
    return self.hourlyRate * self.timeWorked;
}


@end
