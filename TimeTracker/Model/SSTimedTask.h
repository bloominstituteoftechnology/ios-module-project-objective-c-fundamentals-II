//
//  SSTimedTask.h
//  TimeTracker
//
//  Created by Shawn Gee on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SSTimedTask : NSObject

@property NSString *clientName;
@property NSString *workSummary;
@property double hourlyRate;
@property double hoursWorked;

@property (readonly) double totalBill;

- (instancetype)initWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
