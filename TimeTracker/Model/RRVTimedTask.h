//
//  RRVTimedTask.h
//  TimeTracker
//
//  Created by Rob Vance on 11/13/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface RRVTimedTask : NSObject

@property (nonatomic, copy) NSString *clientName;
@property (nonatomic, copy) NSString *workSummary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double totalCost;

- (instancetype) initWithName:(NSString *)aClientName
                  workSummary:(NSString *)aWorkSummary
                   hourlyRate:(double)aHourlyRate
                  hoursWorked:(double)someHoursWorked;

@end

NS_ASSUME_NONNULL_END
