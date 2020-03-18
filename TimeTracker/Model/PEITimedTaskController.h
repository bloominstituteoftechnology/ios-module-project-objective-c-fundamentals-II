//
//  PEITimedTaskController.h
//  TimeTracker
//
//  Created by Austin Potts on 3/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class PEITimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface PEITimedTaskController : NSObject

@property (nonatomic) NSMutableArray<PEITimedTask *> *timedTask;



- (void)initWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(int)hourlyrate
                        timeWorked:(int)timeWorked;


@end

NS_ASSUME_NONNULL_END
