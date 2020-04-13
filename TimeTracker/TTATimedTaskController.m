//
//  TTATimedTaskController.m
//  TimeTracker
//
//  Created by Dillon P on 4/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TTATimedTaskController.h"

@interface TTATimedTaskController () {
    NSMutableArray *_internalTimedTask;
}

@end


@implementation TTATimedTaskController

- (instancetype)init
{
    if (self = [super init]) {
        _internalTimedTask = [[NSMutableArray alloc] init];
    }
    return self;
}

- (NSArray<TTATimeTracker *> *)timedTasks
{
    return _internalTimedTask.copy;
}

- (NSUInteger)timedTasksCount
{
    return _internalTimedTask.count;
}

@end
