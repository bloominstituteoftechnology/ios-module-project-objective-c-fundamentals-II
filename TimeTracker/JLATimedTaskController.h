//
//  JLATimedTaskController.h
//  TimeTracker
//
//  Created by Jorge Alvarez on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class JLATimedTask;

@interface JLATimedTaskController : NSObject

@property (readonly, nonatomic) NSMutableArray<JLATimedTask *> *timedTasks;

- (void)createTimedTasksWithClientName:(NSString *)clientName
                               summary:(NSString *)summary
                            hourlyRate:(double)hourlyRate
                           hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
