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

@property (nonatomic) NSArray<EFSTimedTask *> *taskArray;

- (EFSTimedTask *)createTimedTaskWith:(NSString *)aClientName workSummary:(NSString *)aWorkSummary hourlyRate:(double)aHourlyRate hoursWorked:(double)someHoursWorked;

@end

NS_ASSUME_NONNULL_END
