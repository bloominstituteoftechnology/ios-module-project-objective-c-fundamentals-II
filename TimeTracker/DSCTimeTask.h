//
//  DSCTimeTask.h
//  TimeTracker
//
//  Created by denis cedeno on 5/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface DSCTimeTask : NSObject

@property (nonatomic, copy) NSString *client;
@property (nonatomic, copy) NSString *workSummary;
@property (nonatomic) double rateCharged;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype)initWithClient:(NSString *)aClient
                   workSummary:(NSString *)aSummaryOfWork
                   rateCharged:(double)aRateCharged
                   hoursWorked:(double)aWorkedHours;

@end

NS_ASSUME_NONNULL_END
