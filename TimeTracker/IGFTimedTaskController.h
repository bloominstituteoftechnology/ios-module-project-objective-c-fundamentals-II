//
//  IGFTimedTaskController.h
//  TimeTracker
//
//  Created by Ian French on 9/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class IGFTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface IGFTimedTaskController : NSObject


// Properties
@property (nonatomic, readwrite) NSMutableArray<IGFTimedTask *> *timedTasks;

// Methods
- (void) createTimedTaskWithClient:(NSString *) aClient
                           summary:(NSString *)aSummary
                       hoursWorked:(NSInteger)aHoursWorked
                        hourlyRate:(double)aHourlyRate;

@end

NS_ASSUME_NONNULL_END

