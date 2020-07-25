//
//  CLMTimedTaskController.m
//  TimeTracker
//
//  Created by Claudia Maciel on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CLMTimedTaskController.h"

@implementation CLMTimedTaskController

- (instancetype) init{
    self = [super init];
    
    if(self)
    {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    
    return self;
}

@end
