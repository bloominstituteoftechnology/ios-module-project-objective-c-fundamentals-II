//
//  EFSTimedTask.h
//  TimeTracker
//
//  Created by Clayton Watkins on 9/18/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EFSTimedTask : NSObject

@property (nonatomic, copy) NSString *clientName;
@property (nonatomic, copy) NSString *workSummary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double totalCost;

- (instancetype) initWithName:(NSString *)aClientName
                  workSummary:(NSString *)aWorkSummary
                   hourlyRate:(double)aHourlyRate
                  hoursWorked:(double)someHoursWorked
                    totalCost:(double)aTotalCost;
            
@end

NS_ASSUME_NONNULL_END
