//
//  TTRTimedTaskController.m
//  TimeTracker
//
//  Created by Sal B Amer on 5/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TTRTimedTaskController.h"
#import "TTRTimedTask.h"

@implementation TTRTimedTaskController

-(instancetype)init
{
  if (self =  [super init]) {
    _timedTask = [[NSMutableArray alloc] init];
  }
  return self;
}

- (void)createTimedTaskWith:(NSString *)name
                    summary:(NSString *)summary
                 hourlyRate:(double)hourlyRate
                 totalHours:(double)totalHours {
  
  TTRTimedTask *timedTask = [[TTRTimedTask alloc] initWithName:name summary:summary hourlyRate:hourlyRate totalHours:totalHours];
  
  [_timedTask addObject: timedTask];
}

-(void)updateTotalTimes:(NSInteger)index
                   name:(NSString *)name
                summary:(NSString *)summary
             hourlyRate:(double)hourlyRate
             totalHours:(double)totalHours {
  [_timedTask objectAtIndex:index].name;
  [_timedTask objectAtIndex:index].summary;
  [_timedTask objectAtIndex:index].hourlyRate;
  [_timedTask objectAtIndex:index].totalHours;
}


@end
