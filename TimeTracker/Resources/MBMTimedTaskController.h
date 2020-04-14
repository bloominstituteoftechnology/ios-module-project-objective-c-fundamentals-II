//
//  MBMTimedTaskController.h
//  TimeTracker
//
//  Created by Enrique Gongora on 4/14/20.
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
