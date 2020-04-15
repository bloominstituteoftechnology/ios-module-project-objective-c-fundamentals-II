//
//  NPTTimedTaskController.m
//  TimeTracker
//
//  Created by Nick Nguyen on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "NPTTimedTaskController.h"
#import "NPTTimedTask.h"

@interface NPTTimedTaskController ()

@property (nonatomic) NSMutableArray <NPTTimedTask *> *internalTask;

@end

@implementation NPTTimedTaskController

- (instancetype)init {
    self = [super init];
    if (self) {
        _internalTask = [[NSMutableArray alloc]init];
      
    }
    return self;
}
- (NSArray<NPTTimedTask*>*)timeTasks {
    return [self.internalTask copy];
}


- (void)createTaskWithClient:(NSMutableString*)client summary:(NSMutableString*)summary hourlyRate:(double)hourlyRate timeWorked:(double)timeWorked {
    
    NPTTimedTask * task = [[NPTTimedTask alloc] initWithClient:client summary:summary hourlyRate:hourlyRate timeWorked:timeWorked];
    
    [self.internalTask addObject:task];
    
    
}

- (void)updateTaskWithTask:(NPTTimedTask*)task client:(NSMutableString*)client summary:(NSMutableString*)summary hourlyRate:(double)hourlyRate timeWorked:(double)timeWorked {
    
//    NSUInteger index = [self.timeTasks indexOfObject:task];
    
    NPTTimedTask * scratch  = task;
    
    scratch.client =client;
    
    scratch.summary =summary;
    
    scratch.hourlyRate = hourlyRate;
    
    scratch.timeWorked = timeWorked;
    
//
//    [self.timeTasks removeObjectAtIndex:index];
//
//    self.timeTasks[index] = scratch;
}


@end
