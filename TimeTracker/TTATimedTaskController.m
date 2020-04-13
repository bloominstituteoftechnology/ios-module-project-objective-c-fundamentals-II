//
//  TTATimedTaskController.m
//  TimeTracker
//
//  Created by Dillon P on 4/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TTATimedTaskController.h"
#import "TTATimeTracker.h"

@interface TTATimedTaskController () {
    NSMutableArray *_internalTimedTask;
}

@end


@implementation TTATimedTaskController

- (instancetype)init
{
    if (self = [super init]) {
        _internalTimedTask = [[NSMutableArray alloc] init];

        
#ifdef DEBUG
        [self addTestData];
    }
#endif
    
    return self;
}

- (void)addTestData
{
    [_internalTimedTask addObject:[[TTATimeTracker alloc] initWithClient:@"Client"
                                                                 summary:@"No summary"
                                                              hourlyRate:20.0
                                                           numberOfHours:2.0]];
    
    [_internalTimedTask addObject:[[TTATimeTracker alloc] initWithClient:@"Client 2"
                                                                 summary:@"No summary here"
                                                              hourlyRate:25.0
                                                           numberOfHours:3.0]];
}

- (NSArray<TTATimeTracker *> *)timedTasks
{
    return _internalTimedTask.copy;
}

- (NSUInteger)timedTasksCount
{
    return _internalTimedTask.count;
}

- (TTATimeTracker *)taskAtIndex:(NSUInteger)index
{
    return [_internalTimedTask objectAtIndex:index];
}

- (void)addTimedTask:(TTATimeTracker *)aTimedTask
{
    [_internalTimedTask addObject:aTimedTask];
}

@end
