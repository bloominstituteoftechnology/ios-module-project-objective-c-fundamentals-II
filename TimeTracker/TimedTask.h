//
//  TimedTask.h
//  TimeTracker
//
//  Created by John McCants on 12/2/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TimedTask : NSObject

@property NSString *clientName;
@property NSString *summaryText;
@property double *hourlyRate;
@property double *hoursWorked;
@property (readonly) double *totalAmount;


- (instancetype)initWithClientName:(NSString *)clientName
                workSummary:(NSString *)summaryText
                hourlyRate:(double)hourlyRate
                hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
