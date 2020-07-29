//
//  JMCTimedTaskController.h
//  TimeTracker
//
//  Created by Jarren Campos on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JMCTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface JMCTimedTaskController : NSObject

@property (nonatomic, readwrite) NSMutableArray<JMCTimedTask *> *timedTasks;

- (void)createTimedTaskWith:(NSString *)name
                    summary:(NSString *)summary
                 hourlyRate:(double)hourlyRate
                hoursWorked:(double)hoursWorked;

- (void)updateTimedTaskAt:(int)index
                     name:(NSString *)name
                  summary:(NSString *)summary
               hourlyRate:(double)hourlyRate
              hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
