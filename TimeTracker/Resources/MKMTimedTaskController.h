//
//  MKMTimedTaskController.h
//  TimeTracker
//
//  Created by Matthew Martindale on 7/26/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MKMTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface MKMTimedTaskController : NSObject

@property (nonatomic, readonly, copy) NSArray<MKMTimedTask *> *tasks;
@property (nonatomic, readonly) NSUInteger taskCount;

- (void)createTimedTask:(MKMTimedTask *)aTask;

@end

NS_ASSUME_NONNULL_END
