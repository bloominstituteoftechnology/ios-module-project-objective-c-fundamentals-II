//
//  TTRTimedTaskController.h
//  TimeTracker
//
//  Created by Sal B Amer on 5/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//


#import <Foundation/Foundation.h>

@class TTRTimedTask; // forward decleration - add ref to LSI Tip so autocomplete works

NS_ASSUME_NONNULL_BEGIN

@interface TTRTimedTaskController : NSObject

@property (nonatomic, readwrite) NSArray<TTRTimedTask *> *timedTask;
- (void)createTimedTaskWith:(NSString *)name
                    summary:(NSString *)summary
                 hourlyRate:(double)hourlyRate
                 totalHours:(double)totalHours;

- (void)updateTotalTimes:(NSInteger)index name:(NSString *)name
                 summary:(NSString *)summary
               hourlyRate:(double)hourlyRate
               totalHours:(double)totalHours;

@end

NS_ASSUME_NONNULL_END
