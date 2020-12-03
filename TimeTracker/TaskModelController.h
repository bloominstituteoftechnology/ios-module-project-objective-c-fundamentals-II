//
//  TaskModelController.h
//  TimeTracker
//
//  Created by John McCants on 12/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class TimedTask;

@interface TaskModelController : NSObject

@property (nonatomic) NSMutableArray<TimedTask *> *taskArray;
@property (nonatomic) NSUInteger taskCount;

- (void)createTimedTaskWith:(NSString *)clientName
                            summaryText:(NSString *)summaryText
                            hourlyRate:(double)hourlyRate
                hoursWorked:(double)hoursWorked;



@end

NS_ASSUME_NONNULL_END
