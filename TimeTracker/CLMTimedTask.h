//
//  CLMTimedTask.h
//  TimeTracker
//
//  Created by Claudia Maciel on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CLMTimedTask : NSObject

// Properties
@property (nonatomic, copy) NSString *client;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) NSInteger hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype) initWithClient:(NSString *)aClient
                        summary:(NSString *)theSummary
                     hourlyRate:(double)theHourlyRate
                    hoursWorked:(NSInteger)theHoursWorked;

@end

NS_ASSUME_NONNULL_END
