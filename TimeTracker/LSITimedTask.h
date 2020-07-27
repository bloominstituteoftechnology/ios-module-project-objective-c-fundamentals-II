//
//  LSITimedTask.h
//  TimeTracker
//
//  Created by Kelson Hartle on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSITimedTask : NSObject

@property NSString *clientName;
@property NSString *workSummary;
@property int hourlyRate;
@property int amountOfHoursWorked;
@property (nonatomic, readonly) double totalPrice;

- (instancetype)initWithClientName:(NSString *)name
                       workSummary:(NSString *)workSummary
                        hourlyRate:(int)hourlyRate
                        amountOfHoursWorked:(int)amountOfHoursWorked;

@end

NS_ASSUME_NONNULL_END
