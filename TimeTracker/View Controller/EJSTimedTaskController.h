//
//  EJSTimedTaskController.h
//  TimeTracker
//
//  Created by Enzo Jimenez-Soto on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@class EJSTimedTask;

@interface EJSTimedTaskController : NSObject

@property (readonly, nonatomic) NSMutableArray<EJSTimedTask *> *timedTasks;

-(void)createTimedTasksWithClientName:(NSString *)clientName
                              summary:(NSString *)summary
                           hourlyRate:(double)hourlyRate
                          hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
