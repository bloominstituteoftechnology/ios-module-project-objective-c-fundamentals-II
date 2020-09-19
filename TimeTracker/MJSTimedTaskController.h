//
//  MJSTimedTaskController.h
//  TimeTracker
//
//  Created by Morgan Smith on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MJSTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface MJSTimedTaskController : NSObject

@property (nonatomic, readonly) NSMutableArray<MJSTimedTask *> *tasks;

- (void)createTimedTaskWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
