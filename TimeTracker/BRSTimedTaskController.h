//
//  BRSTimedTaskController.h
//  TimeTracker
//
//  Created by BrysonSaclausa on 11/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class BRSTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface BRSTimedTaskController : NSObject

@property (nonatomic) NSArray<BRSTimedTask *> *loggedTotalsArray;

- (BRSTimedTask *)createTimedTaskWith:(NSString *)aClientName summaryText:(NSString *)aSummaryText hourlyRate:(double)aHourlyRate hoursWorked:(double)aHoursWorked;

@end

NS_ASSUME_NONNULL_END
