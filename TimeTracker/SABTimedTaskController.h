//
//  SABTimedTaskController.h
//  TimeTracker
//
//  Created by Stephanie Ballard on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SABTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface SABTimedTaskController : NSObject

@property (nonatomic, readwrite) NSArray<SABTimedTask *> *timedTasks;

-(void)createTimedTasksWithClientName:(NSString *)clientName
                        workCompleted:(NSString *)workCompleted
                           hourlyRate:(double)hourlyRate
                          hoursWorked:(double)hoursWorked;
@end

NS_ASSUME_NONNULL_END
