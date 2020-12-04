//
//  MKJTimedTaskController.m
//  TimeTracker
//
//  Created by Kenneth Jones on 12/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MKJTimedTaskController.h"
#import "MKJTimedTask.h"

@implementation MKJTimedTaskController

- (instancetype)init
{
    self = [super init];
    if (self) {
        _timedTasks = [[NSMutableArray alloc] init];
    }
    return self;
}

-(void)createTimedTaskWithClient:(NSString *)aClient
                         summary:(NSString *)aSummary
                            rate:(double)aRate
                           hours:(double)aHours
{
    MKJTimedTask *aTask = [[MKJTimedTask alloc] initWithClient:aClient
                                                       summary:aSummary
                                                          rate:aRate
                                                         hours:aHours];
    
    [_timedTasks addObject:aTask];
}

@end
