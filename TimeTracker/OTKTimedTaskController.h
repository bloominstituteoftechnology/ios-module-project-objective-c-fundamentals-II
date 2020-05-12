//
//  OTKTimedTaskController.h
//  TimeTracker
//
//  Created by Tobi Kuyoro on 12/05/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class OTKTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface OTKTimedTaskController : NSObject

@property (nonatomic, copy) NSMutableArray<OTKTimedTask *> *timedTasks;

- (void)createTimedTasksWithClient:(NSString *)client
                       workSummary:(NSString *)workSummary
                        hourlyRate:(int)hourlyRate
                       hoursWorked:(int)hoursWorked;

@end

NS_ASSUME_NONNULL_END
