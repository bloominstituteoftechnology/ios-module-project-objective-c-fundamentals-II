//
//  HAOTimedTaskController.h
//  TimeTracker
//
//  Created by Hunter Oppel on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HAOTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface HAOTimedTaskController : NSObject

@property (nonatomic) NSMutableArray<HAOTimedTask *> *timedTasks;

- (void)createTimedTaskWith:(NSString *)client :(NSString *)summary :(double)hourlyRate :(int)hoursWorked;

@end

NS_ASSUME_NONNULL_END
