//
//  EPWTimedTaskController.m
//  TimeTracker
//
//  Created by beth on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "EPWTimedTaskController.h"
#import "TimedTask.h"

@implementation EPWTimedTaskController

-(instancetype)init {
    self = [super init];
    if(self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}



@end
