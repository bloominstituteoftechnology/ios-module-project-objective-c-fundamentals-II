//
//  SSTimedTaskController.h
//  TimeTracker
//
//  Created by Shawn Gee on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SSTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface SSTimedTaskController : NSObject

- (void)addTimedTaskWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked;

@end

@interface SSTimedTaskController (Collections)

@property (nonatomic, readonly) NSArray<SSTimedTask *> *tasks;

@end

NS_ASSUME_NONNULL_END
