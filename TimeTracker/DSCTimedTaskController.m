//
//  DSCTimedTaskController.m
//  TimeTracker
//
//  Created by denis cedeno on 5/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "DSCTimedTaskController.h"
#import "DSCTimeTask.h"

@implementation DSCTimedTaskController

- (instancetype)init
{
    if (self = [super init])
    {
        _timeTasks = [[NSMutableArray alloc]init];
        
//        [self addTestData];
    }
    return self;
}

//- (void)addTestData
//{
//    DSCTimeTask *aTask = [[DSCTimeTask alloc]initWithClient:@"Denis" workSummary:@"HairCut" rateCharged:50.00 hoursWorked:2.00];
//    [_timeTasks addObject:aTask];
//    [_timeTasks addObject:[[DSCTimeTask alloc]initWithClient:@"Steven" workSummary:@"Whateve's" rateCharged:39.00 hoursWorked:55.00]];
//}


- (void)createTimedTaskWithClient:(NSString *)clientName
                      workSummary:(NSString *)workSummary
                      rateCharged:(double)rateCharged
                      hoursWorked:(double)hoursWorked
{
    DSCTimeTask *task = [[DSCTimeTask alloc]
                         initWithClient:clientName
                         workSummary:workSummary
                         rateCharged:rateCharged
                         hoursWorked:hoursWorked];
    
    [self.timeTasks addObject:task];
}




@end
