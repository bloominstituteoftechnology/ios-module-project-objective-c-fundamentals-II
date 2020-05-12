//
//  LYDTimedTaskController.h
//  TimeTracker
//
//  Created by Lydia Zhang on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class LYDTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface LYDTimedTaskController : NSObject

@property (nonatomic) NSMutableArray<LYDTimedTask *> *timedTaskArray;

- (void)createTaskWithClient:(NSString *)client
                     summary:(NSString *)summary
                      hrRate:(double)hrRate
                         hrs:(double)hrs;

@end

NS_ASSUME_NONNULL_END
