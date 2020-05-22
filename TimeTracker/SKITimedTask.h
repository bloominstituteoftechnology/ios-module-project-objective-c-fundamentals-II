//
//  SKITimedTask.h
//  TimeTracker
//
//  Created by Joshua Rutkowski on 5/22/20.
//  Copyright © 2020 Rutkowski. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SKITimedTask : NSObject

@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *workDescription;
@property (nonatomic) double hourlyRateCharged;
@property (nonatomic) double amountHoursWorked;
@property (nonatomic, readonly) double totalAmount;

- (instancetype)initWithClientName:(NSString *)aClientName
                   workDescription:(NSString *)aWorkDescription
                 hourlyRateCharged:(double)anHourlyRateCharged
                 amountHoursWorked:(double)anAmountHoursWorked
                       totalAmount:(double)aTotalAmount;

@end

NS_ASSUME_NONNULL_END
