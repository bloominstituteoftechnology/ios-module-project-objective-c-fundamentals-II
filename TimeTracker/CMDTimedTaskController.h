//
//  CMDTimedTaskController.h
//  TimeTracker
//
//  Created by Chris Dobek on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CMDTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface CMDTimedTaskController : NSObject

@property (nonatomic, readwrite) NSMutableArray<CMDTimedTask *> *timedTasks;

- (void)createTimedTaskWith:(NSString *)clientName
            workDescription:(NSString *)workDescription
          hourlyRateCharged:(double)hourlyRateCharged
          amountHoursWorked:(double)amountHoursWorked;

- (void)updateTimedTaskAt:(NSInteger)index
               clientName:(NSString *)clientName
          workDescription:(NSString *)workDescription
        hourlyRateCharged:(double)hourlyRateCharged
        amountHoursWorked:(double)amountHoursWorked;

@end

NS_ASSUME_NONNULL_END
