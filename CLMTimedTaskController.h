//
//  CLMTimedTaskController.h
//  TimeTracker
//
//  Created by Claudia Maciel on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLMTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface CLMTimedTaskController : NSObject

// Properties
@property (nonatomic, readwrite) NSMutableArray<CLMTimedTask *> *timedTasks;

// Methods
- (void) createTimedTaskWithClient:(NSString *) aClient
                           summary:(NSString *)theSummary
                       hoursWorked:(NSInteger)theHoursWorked
                        hourlyRate:(double)theHourlyRate;

@end

NS_ASSUME_NONNULL_END
