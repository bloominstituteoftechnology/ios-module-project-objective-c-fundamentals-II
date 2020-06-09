//
//  MJPTimedTaskController.h
//  TimeTracker
//
//  Created by Mark Poggi on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MJPTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface MJPTimedTaskController : NSObject

//@property (nonatomic, readonly) NSArray<LSITip *> *tips;
//
//- (void)addTip:(LSITip *)tip;

// MARK: - Create a mutable Array

@property (nonatomic, readwrite) NSMutableArray<MJPTimedTask *> *timedTasks;

- (void)createTimedTaskWith:(NSString *)name
                    summary:(NSString *)summary
                 hourlyRate:(double)hourlyRate
                hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
