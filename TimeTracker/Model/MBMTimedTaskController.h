//
//  MBMTimedTaskController.h
//  TimeTracker
//
//  Created by Michael on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MBMTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface MBMTimedTaskController : NSObject

@property (nonatomic) NSMutableArray<MBMTimedTask *> *timedTasks;


- (void)createTimedTaskWithClient:(NSString *)client
                    summaryOfWork:(NSString *)summaryOfWork
                       hourlyRate:(double)hourlyRate
                      hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
