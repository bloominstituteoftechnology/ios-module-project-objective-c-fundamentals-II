//
//  HSITimedTaskController.h
//  TimeTracker
//
//  Created by Kenny on 6/9/20.
//  Copyright © 2020 Hazy Studios Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

@class HSITimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface HSITimedTaskController : NSObject

@property(readonly) NSArray<HSITimedTask *> *tasks;

- (void) createTimedTask:(HSITimedTask *)task;

@end

NS_ASSUME_NONNULL_END
