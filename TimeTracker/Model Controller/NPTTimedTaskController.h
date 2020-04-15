//
//  NPTTimedTaskController.h
//  TimeTracker
//
//  Created by Nick Nguyen on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
@class NPTTimedTask;
NS_ASSUME_NONNULL_BEGIN

@interface NPTTimedTaskController: NSObject

@property (nonatomic,readonly) NSMutableArray<NPTTimedTask*> *timeTasks;

- (void)createTaskWithClient:(NSString *)client
                    summary:(NSString *)summary
                 hourlyRate:(double)hourlyRate
                 timeWorked:(double)timeWorked;

- (void)updateTaskWithTask:(NPTTimedTask *)task
                   client:(NSString *)client
                  summary:(NSString *)summary
               hourlyRate:(double)hourlyRate
               timeWorked:(double)timeWorked;
@end

NS_ASSUME_NONNULL_END
