//
//  TimedTaskController.h
//  TimeTracker
//
//  Created by Cora Jacobson on 11/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface TimedTaskController : NSObject

@property (nonatomic, readonly, copy) NSArray<TimedTask *> *tasks;

@property (nonatomic, readonly) NSUInteger taskCount;

- (TimedTask *)taskAtIndex:(NSUInteger)index;

-(void)createTimedTaskWithClient:(NSString *)client
                         summary:(NSString *)summary
                      hourlyRate:(double)rate
                     hoursWorked:(double)hours;

@end

NS_ASSUME_NONNULL_END
