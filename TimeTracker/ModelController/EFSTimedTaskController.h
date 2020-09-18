//
//  EFSTimedTaskController.h
//  TimeTracker
//
//  Created by Clayton Watkins on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class EFSTimedTask;

@interface EFSTimedTaskController : NSObject

@property (nonatomic, readonly, copy) NSMutableArray<EFSTimedTask *> *taskArray;
@property (nonatomic, readonly) NSUInteger taskCount;

- (void)createTimedTaskWith:(NSString *)aClientName
                          workSummary:(NSString *)aWorkSummary
                           hourlyRate:(double)aHourlyRate
                          hoursWorked:(double)someHoursWorked;

- (EFSTimedTask *)taskAtIndex:(NSUInteger)index;

@end

NS_ASSUME_NONNULL_END
