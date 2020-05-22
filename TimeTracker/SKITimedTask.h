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

@property (nonatomic, readonly, copy) NSString *clientName;
@property (nonatomic, readonly) NSString *workSummaryDescription;
@property (nonatomic, readonly) double hourlyRateCharged;
@property (nonatomic, readonly) double totalHoursWorked;
@property (nonatomic, readonly) double totalAmount;



@end

NS_ASSUME_NONNULL_END
