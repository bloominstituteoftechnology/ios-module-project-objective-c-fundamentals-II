//
//  TTATimedTaskController.h
//  TimeTracker
//
//  Created by Dillon P on 4/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class TTATimeTracker;

NS_ASSUME_NONNULL_BEGIN

@interface TTATimedTaskController : NSObject

@property(nonatomic, readonly, copy) NSArray<TTATimeTracker *> *timedTasks;

@end

NS_ASSUME_NONNULL_END
