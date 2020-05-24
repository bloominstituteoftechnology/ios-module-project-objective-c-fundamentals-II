//
//  DTWTimedTaskController.h
//  TimeTracker
//
//  Created by David Wright on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class DTWTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface DTWTimedTaskController : NSObject

@property (nonatomic, copy) NSMutableArray<DTWTimedTask *> *timedTasks;

@end

NS_ASSUME_NONNULL_END
