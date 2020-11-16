//
//  CMBTimedTaskController.h
//  TimeTracker
//
//  Created by Craig Belinfante on 11/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CMBTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface CMBTimedTaskController : NSObject

@property (nonatomic, readonly, copy) NSArray<CMBTimedTask *> *tasks;

@property (nonatomic, readonly) NSUInteger taskCount;

- (CMBTimedTask *)taskAtIndex:(NSUInteger)index;

- (void)addTasks:(CMBTimedTask *)aTask;

@end

NS_ASSUME_NONNULL_END
