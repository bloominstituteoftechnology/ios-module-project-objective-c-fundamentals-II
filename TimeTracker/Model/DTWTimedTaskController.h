//
//  DTWTimedTaskController.h
//  TimeTracker
//
//  Created by David Wright on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DTWTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface DTWTimedTaskController : NSObject

@property (nonatomic, copy) NSMutableArray<DTWTimedTask *> *timedTasks;

- (void)createTimedTaskWithClient:(NSString *)client
                          summary:(NSString *)summary
                       hourlyRate:(double)hourlyRate
                      hoursWorked:(double)hoursWorked;

- (void)updateTimedTaskAtIndex:(NSInteger)index
                    withClient:(NSString *)client
                       summary:(NSString *)summary
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
