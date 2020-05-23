//
//  CLBTimedTaskController.h
//  TimeTracker
//
//  Created by Christian Lorenzo on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CLBTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface CLBTimedTaskController : NSObject

- (void)addTimedTaskWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked;

@end

@interface CLBTimedTaskController (collections)

@property (nonatomic, readonly) NSArray<CLBTimedTask *> *tasks;

@end

NS_ASSUME_NONNULL_END
