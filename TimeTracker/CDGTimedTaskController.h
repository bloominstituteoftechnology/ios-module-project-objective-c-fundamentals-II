//
//  CDGTimedTaskController.h
//  TimeTracker
//
//  Created by Chris Gonzales on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class CDGTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface CDGTimedTaskController : NSObject

@property (nonatomic) NSMutableArray<CDGTimedTask *> *timedTasks;

-(void)createTimedTask: (NSString *)clientName
workoutDescription: (NSString *)workoutDescription
hourlyRate: (double)hourlyRate
hoursWorked: (double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
