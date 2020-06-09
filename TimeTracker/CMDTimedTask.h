//
//  CMDTimedTask.h
//  TimeTracker
//
//  Created by Chris Dobek on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMDTimedTask : NSObject

@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *workDescription;
@property (nonatomic) double hourlyRateCharged;
@property (nonatomic) double amountHoursWorked;
@property (nonatomic, readonly) double totalAmount;

- (instancetype)initWithClientName:(NSString *)aClientName
                   workDescription:(NSString *)aWorkDescription
                 hourlyRateCharged:(double)anHourlyRateCharged
                 amountHoursWorked:(double)anAmountHoursWorked;

@end

NS_ASSUME_NONNULL_END
