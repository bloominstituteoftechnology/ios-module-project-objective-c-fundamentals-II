//
//  LSITimedTaskController.h
//  TimeTracker
//
//  Created by James McDougall on 3/4/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "LSITimedTask.h"

NS_ASSUME_NONNULL_BEGIN

@interface LSITimedTaskController : NSObject

@property NSMutableArray<LSITimedTask *> *timedTasks;

- (instancetype)initWithTasksArray:(NSMutableArray<LSITimedTask*>*)timedTasks;

- (void)createTimedTaskWithClientName:(NSString *)clientName workSummary:(NSString *)workSummary payRate:(int)payRate hoursWorked:(int)hoursWorked;
- (void)createTimedTaskWithObject: (LSITimedTask *)timedTask;

@end

NS_ASSUME_NONNULL_END
