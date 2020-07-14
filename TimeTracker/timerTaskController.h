//
//  timerTaskController.h
//  TimeTracker
//
//  Created by Kelson Hartle on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

/*
We do this because
1- Build projects faster
2- We can reference other classes "recursively"
*/

@class LSITimedTask; //foward class declaration (IOU) here's a heads up about a new class

NS_ASSUME_NONNULL_BEGIN

@interface timerTaskController : NSObject

@property (nonatomic, readonly)NSArray<LSITimedTask *> *timedTasks;

//Also in the header define a createTimedTaskWith function that takes in each of the 4 settable properties of a TimedTask.
- (void)createTimedTask:(LSITimedTask *)task;




@end

NS_ASSUME_NONNULL_END
