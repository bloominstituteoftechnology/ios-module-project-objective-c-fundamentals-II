//
//  DSCTimedTaskController.h
//  TimeTracker
//
//  Created by denis cedeno on 5/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
@class DSCTimeTask;

NS_ASSUME_NONNULL_BEGIN

@interface DSCTimedTaskController : NSObject

@property (nonatomic, readwrite) NSMutableArray<DSCTimeTask *> *timeTasks;

//@property(nonatomic, readonly) NSUInteger taskCount;

//- (DSCTimeTask *)taskAtIndex:(NSUInteger)index;
//- (void)addTask:(DSCTimeTask *)aTask;

- (void)createTimedTaskWithClient:(NSString *)clientName
                      workSummary:(NSString *)workSummary
                      rateCharged:(double)rateCharged
                      hoursWorked:(double)hoursWorked;


@end

NS_ASSUME_NONNULL_END
