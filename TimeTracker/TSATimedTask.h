//
//  TSATimedTask.h
//  TimeTracker
//
//  Created by Alex Thompson on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TSATimedTask : NSObject

@property NSString *client;
@property NSString *summary;
@property double hourlyRate;
@property NSInteger hoursWorked;
@property (readonly) double total;

- (instancetype)initWithClient:(NSString *)aClient
                         total:(double)aTotal
                       summary:(NSString *)aSummary
                    hourlyRate:(double)aHourlyRate
                   hoursWorked:(NSInteger)HoursWorked;
@end

NS_ASSUME_NONNULL_END
