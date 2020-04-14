//
//  EPWTimedTaskController.h
//  TimeTracker
//
//  Created by beth on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class TimedTask;

@interface EPWTimedTaskController : NSObject

@property (nonatomic) NSMutableArray<TimedTask *>* timedTasks;

-(instancetype)init;

-(void) createTimedTaskWithClient:(NSString *)client summary:(NSString *)summary rate:(double)rate hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
