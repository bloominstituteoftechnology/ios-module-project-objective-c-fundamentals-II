//
//  XMPTimedTaskController.h
//  TimeTracker
//
//  Created by conner on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMPTimedTaskController : NSObject

- (instancetype) init;

- (void)createTimedTaskWithClientName:(NSString*)clientName summary:(NSString*)summary hourlyRate:(float)hourlyRate hoursWorked:(float)hoursWorked;

@property NSMutableArray* timedTasks;

@end

NS_ASSUME_NONNULL_END
