//
//  LYDTimedTaskController.m
//  TimeTracker
//
//  Created by Lydia Zhang on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LYDTimedTaskController.h"
#import "LYDTimedTask.h"

@implementation LYDTimedTaskController

- (instancetype)init {
    self = [super init];
    if (self) {
        _timedTaskArray = [[NSMutableArray alloc]init];
    }
    return self;
}

- (void)createTaskWithClient:(NSString *)client
                     summary:(NSString *)summary
                      hrRate:(double)hrRate
                         hrs:(double)hrs {
    LYDTimedTask *task = [[LYDTimedTask alloc] initWithClient:client summary:summary hrRate:hrRate hrs:hrs];
    [_timedTaskArray addObject:task];
    
}



@end
