//
//  IGFTimedTask.h
//  TimeTracker
//
//  Created by Ian French on 9/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface IGFTimedTask : NSObject

// Properties
@property (nonatomic, copy) NSString *client;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) NSInteger hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype) initWithClient:(NSString *)aClient
                        summary:(NSString *)aSummary
                     hourlyRate:(double)aHourlyRate
                    hoursWorked:(NSInteger)aHoursWorked;

@end

NS_ASSUME_NONNULL_END

