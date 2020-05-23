//
//  TTRTimedTask.m
//  TimeTracker
//
//  Created by Sal B Amer on 5/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TTRTimedTask.h"

@implementation TTRTimedTask

- (instancetype)initWithName:(NSString *)aName
                     summary:(NSString *)aSummary
                  hourlyRate:(double)aHourlyRate
                  totalHours:(double)aTotalHours
{
  if (self = [super init]) {
    _name = aName.copy;
    _summary = aSummary.copy;
    _hourlyRate = aHourlyRate;
    _totalHours = aTotalHours;
  }
  return self;
}

@synthesize totalCost = _totalCost;
-(double)totalCost
{
  _totalCost = _totalHours * _hourlyRate;
  return _totalCost;
}

@end
