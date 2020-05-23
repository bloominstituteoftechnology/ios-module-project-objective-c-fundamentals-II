//
//  JAGTimedTaskController.h
//  TimeTracker
//
//  Created by Jessie Ann Griffin on 5/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class JAGTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface JAGTimedTaskController : NSObject

@property (nonatomic, copy) NSMutableArray<JAGTimedTask *> *timedTasks;

- (void)createTimedTaskWith:(NSString *)aClient
                   aSummary:(NSString *)aSummary
             anHourlyRateOf:(double)anHourlyRate
                hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
