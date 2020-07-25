//
//  CLPTimedTaskController.h
//  TimeTracker
//
//  Created by Chad Parker on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLPTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface CLPTimedTaskController : NSObject

@property (nonatomic, readonly, copy) NSMutableArray<CLPTimedTask *> *timedTasks;
@property (nonatomic, readonly) NSUInteger count;

- (void)createTimedTaskWithClient:(NSString *)client
                          summary:(NSString *)summary
                       hourlyRate:(NSDecimalNumber *)hourlyRate
                      hoursWorked:(NSDecimalNumber *)hoursWorked;

@end

NS_ASSUME_NONNULL_END
