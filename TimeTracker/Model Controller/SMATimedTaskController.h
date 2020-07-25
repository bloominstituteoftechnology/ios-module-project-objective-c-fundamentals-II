//
//  SMATimedTaskController.h
//  TimeTracker
//
//  Created by Sean Acres on 7/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class SMATimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface SMATimedTaskController : NSObject

@property (nonatomic, copy) NSMutableArray<SMATimedTask *> *timedTasks;

-(void)createTimedTaskWithClientName:(NSString *)clientName
                                   workSummary:(NSString *)aWorkSummary
                                    hourlyRate:(double)aHourlyRate
                                    timeWorked:(double)aTimeWorked;

@end

NS_ASSUME_NONNULL_END
