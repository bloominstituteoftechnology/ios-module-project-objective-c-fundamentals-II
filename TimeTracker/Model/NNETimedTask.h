//
//  NNETimedTask.h
//  TimeTracker
//
//  Created by Nonye on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NNETimedTask : NSObject

// MARK: - PROPERTIES

@property NSString *clientName;
@property NSString *workComplete;
@property double hourlyRate;
@property double hoursWorked;
@property (readonly) double total;

- (instancetype)initWithClientName:(NSString *)clientName
                    workedComplete:(NSString *)workComplete
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked;
@end

NS_ASSUME_NONNULL_END
