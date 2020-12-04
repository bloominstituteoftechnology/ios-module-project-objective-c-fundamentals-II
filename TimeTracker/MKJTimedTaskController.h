//
//  MKJTimedTaskController.h
//  TimeTracker
//
//  Created by Kenneth Jones on 12/1/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

@class MKJTimedTask;

NS_ASSUME_NONNULL_BEGIN

@interface MKJTimedTaskController : NSObject

@property (nonatomic, copy) NSMutableArray<MKJTimedTask *> *timedTasks;

-(void)createTimedTaskWithClient:(NSString *)aClient
                         summary:(NSString *)aSummary
                            rate:(double)aRate
                           hours:(double)aHours;

@end

NS_ASSUME_NONNULL_END
