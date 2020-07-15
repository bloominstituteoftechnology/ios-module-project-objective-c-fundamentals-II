//
//  CAMTimedTaskController.m
//  TimeTracker
//
//  Created by Cody Morley on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CAMTimedTaskController.h"

@implementation CAMTimedTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

- (void)createTimedTaskWithName:(NSString *)name
                        summary:(NSString *)summary
                           rate:(double)rate
                          hours:(double)hours
{
    CAMTimedTask *newTask = [[CAMTimedTask alloc] initWithName:name
                                                       summary:summary
                                                          rate:rate
                                                         hours:hours];
    [self.timedTasks addObject: newTask];
}

@end
