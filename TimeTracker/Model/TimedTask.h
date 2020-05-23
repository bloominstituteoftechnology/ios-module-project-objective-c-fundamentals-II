//
//  TimedTask.h
//  TimeTracker
//
//  Created by Jessie Ann Griffin on 5/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JAGTimedTask : NSObject

@property (nonatomic, copy) NSString *client;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double totalBill;

- (instancetype)initWithClient:(NSString *)aClient
                       summary:(NSString *)aSummary
                  hourlyRateOf:(double)anHourlyRate
                   hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
