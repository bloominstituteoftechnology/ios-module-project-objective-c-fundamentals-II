//
//  SAHTimedTaskController.h
//  TimeTracker
//
//  Created by scott harris on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SAHTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface SAHTimedTaskController : NSObject

@property (nonatomic, readonly, copy) NSMutableArray<SAHTimedTask *> *timedTasks;

- (instancetype)init;

- (void) createTimedTaskWithClient:(NSString *)client summary:(NSString *)summary rate:(double)rate hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
