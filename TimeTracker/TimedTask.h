//
//  TimedTask.h
//  TimeTracker
//
//  Created by Cora Jacobson on 11/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TimedTask : NSObject

@property (nonatomic, copy) NSString *client;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                    hourlyRate:(double)rate
                   hoursWorked:(double)hours;

@end

NS_ASSUME_NONNULL_END
