//
//  HSITimedTaskController.m
//  TimeTracker
//
//  Created by Kenny on 6/9/20.
//  Copyright © 2020 Hazy Studios Inc. All rights reserved.
//

#import "HSITimedTaskController.h"

@interface HSITimedTaskController ()

@property (nonatomic) NSMutableArray *internalTimedTasks;

@end

@implementation HSITimedTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _internalTimedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

//getter for tasks
- (NSArray<HSITimedTask *> *)tasks {
    return [self.internalTimedTasks copy];
}

- (void) createTimedTask:(HSITimedTask *)task
{
    [self.internalTimedTasks addObject: task];
}

@end
