//
//  NNETimedTaskController.h
//  TimeTracker
//
//  Created by Nonye on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class NNETimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface NNETimedTaskController : NSObject

// MARK: - PROPERTIES

@property (nonatomic, readwrite) NSArray<NNETimedTask *> *timedTasks;

- (void)createTimedTasksWithClientName:(NSString *)clientName
                          workComplete:(NSString *)workComplete
                            hourlyRate:(double)hourlyRate
                           hoursWorked:(double)hourdWorked;

@end

NS_ASSUME_NONNULL_END
