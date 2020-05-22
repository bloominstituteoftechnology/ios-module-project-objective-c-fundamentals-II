//
//  SKITimedTaskController.h
//  TimeTracker
//
//  Created by Joshua Rutkowski on 5/22/20.
//  Copyright © 2020 Rutkowski. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SKITimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface SKITimedTaskController : NSObject

@property (nonatomic, readwrite) NSMutableArray<SKITimedTask *> *timedTasks;

- (void)createTimedTaskWith:(NSString *)clientName
             workDescription:(NSString *)workDescription
           hourlyRateCharged:(double)hourlyRateCharged
           amountHoursWorked:(double)amountHoursWorked;

- (void)updateTimedTaskAt:(int)index
              clientName:(NSString *)clientName
         workDescription:(NSString *)workDescription
       hourlyRateCharged:(double)hourlyRateCharged
       amountHoursWorked:(double)amountHoursWorked;
@end

NS_ASSUME_NONNULL_END
