//
//  SKITimedTaskController.m
//  TimeTracker
//
//  Created by Joshua Rutkowski on 5/22/20.
//  Copyright © 2020 Rutkowski. All rights reserved.
//

#import "SKITimedTaskController.h"
#import "SKITimedTask.h"

@implementation SKITimedTaskController

-(instancetype)init
{
    if (self = [super init])
    {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}
@end
