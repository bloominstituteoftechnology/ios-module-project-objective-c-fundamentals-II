//
//  TimedTaskController.h
//  TimeTracker
//
//  Created by Bhawnish Kumar on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
@class LSITimeTask;
NS_ASSUME_NONNULL_BEGIN

@interface TimedTaskController : NSObject

@property (nonatomic, readonly) NSMutableArray<LSITimeTask *>*timeTask;

@end

NS_ASSUME_NONNULL_END
