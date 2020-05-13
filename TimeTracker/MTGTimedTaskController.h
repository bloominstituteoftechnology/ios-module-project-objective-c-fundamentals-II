//
//  MTGTimedTaskController.h
//  TimeTracker
//
//  Created by Mark Gerrior on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

// forward class declaration
@class MTGTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface MTGTimedTaskController : NSObject

@property (nonatomic, readwrite) NSMutableArray<MTGTimedTask *> *timedTasks;

- (void)createTimedTaskWith:(NSString *)client
                workSummary:(NSString *)workSummary
                 hourlyRate:(double)hourlyRate
                hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
