//
//  timerTaskController.m
//  TimeTracker
//
//  Created by Kelson Hartle on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "timerTaskController.h"
#import "LSITimedTask.h"

@interface timerTaskController()
{
    // (Optional)Private instance variables.
}

// Private Properties
@property (nonatomic, readwrite) NSMutableArray<LSITimedTask *> *internalTasks;

// Private Outlets

// Private methods
@end

@implementation timerTaskController

-(instancetype)init {
    self = [super init];
    if (self) {
        _internalTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

// Computed property (no autogenerated _instanceVariable)
- (NSArray<LSITimedTask *> *)tasks {
    
    return [_internalTasks copy]; // copy: NSMutableArray -> NSArray
}

- (void)createTimedTask:(LSITimedTask *)task {
    [self.internalTasks addObject:task];
    
}


@end