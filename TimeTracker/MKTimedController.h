//
//  MKTimedController.h
//  TimeTracker
//
//  Created by Lambda_School_Loaner_268 on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MKTimedTask.h"

NS_ASSUME_NONNULL_BEGIN

@interface MKTimedTaskController : NSObject

@property (nonatomic, copy) NSMutableArray<MKTimedTask *> *timedTasks;

-(void)createTimedTasksWithClientName:(NSString *)clientName
                              sunmary:(NSString *)summary
                           hourlyRate:(double)hourlyRate
                          hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
