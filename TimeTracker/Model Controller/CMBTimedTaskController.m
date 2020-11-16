//
//  CMBTimedTaskController.m
//  TimeTracker
//
//  Created by Craig Belinfante on 11/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CMBTimedTaskController.h"
#import "CMBTimedTask.h"

@interface CMBTimedTaskController () {
    NSMutableArray *_internalTasks;
}

@end

@implementation CMBTimedTaskController

- (instancetype)init
{
    if (self = [super init]) {
        _internalTasks = [[NSMutableArray alloc] init];
#ifdef DEBUG
        // FIXME: Test Mode (remove for production)
        [self addTestData];
#endif
    }
    return self;
}

- (void)addTestData
{
    CMBTimedTask *aTask = [[CMBTimedTask alloc] initWithName:@"Lambda"
                                                     summary:@"built an app"
                                                        rate:25
                                                      amount:3.
                                                       total:75.];
    
    [_internalTasks addObject:aTask];
    
    [_internalTasks addObject:[[CMBTimedTask alloc] initWithName:@"Sample"
                                                         summary:@"this is a sample"
                                                            rate:20
                                                          amount:3.
                                                           total:60.]];
}

- (NSArray<CMBTimedTask *> *)tasks
{
    return _internalTasks.copy;
}

- (NSUInteger)taskCount
{
    return _internalTasks.count;
}

- (CMBTimedTask *)taskAtIndex:(NSUInteger)index
{
    return [_internalTasks objectAtIndex:index];
}

- (void)addTasks:(CMBTimedTask *)aTask
{
    [_internalTasks addObject:aTask];
}

@end
