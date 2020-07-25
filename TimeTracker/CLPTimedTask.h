//
//  CLPTimedTask.h
//  TimeTracker
//
//  Created by Chad Parker on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CLPTimedTask : NSObject

@property (nonatomic, copy) NSString *client;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) NSDecimalNumber *hourlyRate;
@property (nonatomic) NSDecimalNumber *hoursWorked;
@property (nonatomic, readonly) NSDecimalNumber *total;

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                    hourlyRate:(NSDecimalNumber *)hourlyRate
                   hoursWorked:(NSDecimalNumber *)hoursWorked;

@end

NS_ASSUME_NONNULL_END
