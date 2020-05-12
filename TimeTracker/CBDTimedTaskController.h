//
//  CBDTimedTaskController.h
//  TimeTracker
//
//  Created by Christopher Devito on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CBDTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface CBDTimedTaskController : NSObject

@property (nonatomic, readwrite) NSMutableArray<CBDTimedTask *> *timedTasks;

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
