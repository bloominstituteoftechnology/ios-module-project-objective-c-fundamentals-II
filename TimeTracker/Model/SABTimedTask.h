//
//  SABTimedTask.h
//  TimeTracker
//
//  Created by Stephanie Ballard on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SABTimedTask : NSObject

// Properties
@property NSString *clientName;
@property NSString *workCompleted;
@property double hourlyRate;
@property double hoursWorked;
@property (readonly) double total;

// Methods
- (instancetype)initWithClientName:(NSString *)clientName workedCompleted:(NSString *)workCompleted hourlyRate:(double)hourlyRate hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
