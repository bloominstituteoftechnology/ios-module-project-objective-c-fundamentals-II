//
//  TSATimedTaskController.h
//  TimeTracker
//
//  Created by Alex Thompson on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
@class TSATimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface TSATimedTaskController : NSObject

@property (readonly, copy) NSMutableArray<TSATimedTask *> *timedTasks;

- (void)createTimedTaskWith:(NSString *)client
                    summary:(NSString *)summary
                    hourlyRate:(double)hourlyRate
                hoursWorked:(NSInteger)hoursWorked;

@end

NS_ASSUME_NONNULL_END
