//
//  CAMTimedTaskController.h
//  TimeTracker
//
//  Created by Cody Morley on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "CAMTimedTask.h"

NS_ASSUME_NONNULL_BEGIN

@interface CAMTimedTaskController : NSObject

@property (nonatomic, copy) NSMutableArray *timedTasks;

- (void)createTimedTaskWithName:(NSString *)name
                        summary:(NSString *)summary
                           rate:(double)rate
                          hours:(double)hours;

@end

NS_ASSUME_NONNULL_END
