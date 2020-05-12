//
//  WHTimedTaskController.h
//  TimeTracker
//
//  Created by Wyatt Harrell on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
@class WHTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface WHTimedTaskController : NSObject

@property (nonatomic, readonly) NSMutableArray<WHTimedTask *> *timedTasks;

- (void)createTimedTaskWith:(NSString *)client
                    summary:(NSString *)summary
                 hourlyRate:(int)hourlyRate
                hoursWorked:(int)hoursWorked;

@end

NS_ASSUME_NONNULL_END
