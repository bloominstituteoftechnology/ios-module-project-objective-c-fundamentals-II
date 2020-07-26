//
//  TimedTask.h
//  TimeTracker
//
//  Created by Matthew Martindale on 7/26/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKMTimedTask : NSObject

@property (nonatomic, copy) NSString *client;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype)initWithClient: (NSString *)aClient
                       summary: (NSString *)aSummary
                    hourlyRate: (double)anHourlyRate
                   hoursWorked: (double)anHoursWorked;

@end

NS_ASSUME_NONNULL_END
