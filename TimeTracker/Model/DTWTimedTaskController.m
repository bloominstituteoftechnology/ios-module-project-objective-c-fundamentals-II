//
//  DTWTimedTaskController.m
//  TimeTracker
//
//  Created by David Wright on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DTWTimedTaskController.h"
#import "DTWTimedTask.h"

@implementation DTWTimedTaskController

// Initializer
- (instancetype)init
{
    if (self = [super init]) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

@end
