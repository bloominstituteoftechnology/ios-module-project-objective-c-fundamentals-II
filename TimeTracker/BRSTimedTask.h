//
//  BRSTimedTask.h
//  TimeTracker
//
//  Created by BrysonSaclausa on 11/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>


NS_ASSUME_NONNULL_BEGIN

@interface BRSTimedTask : NSObject

@property (nonatomic, readonly) NSString *clientName;
@property (nonatomic, readonly) NSString *summaryText;
@property (nonatomic, readonly) double hourlyRate;
@property (nonatomic, readonly) double hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype) initWithClientName:(NSString *)aClientName
                        summaryText:(NSString *)aSummaryText
                          hourlyRate:(double)aHourlyRateChanged
                          hoursWorked:(double)aHoursWorked
                                 total:(double)aTotal;
                

@end

NS_ASSUME_NONNULL_END
