//
//  HLOTimedTaskController.h
//  TimeTracker
//
//  Created by Karen Rodriguez on 5/11/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

// Class forward
@class HLOTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface HLOTimedTaskController : NSObject

@property (nonatomic, readonly) NSMutableArray<HLOTimedTask *>*a;

- (void)addTask:(HLOTimedTask *)task;

@end

NS_ASSUME_NONNULL_END
