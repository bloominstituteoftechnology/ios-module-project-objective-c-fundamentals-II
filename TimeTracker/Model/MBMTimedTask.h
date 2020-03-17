//
//  MBMTimedTask.h
//  TimeTracker
//
//  Created by Michael on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MBMTimedTask : NSObject

@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summaryOfWork;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (readonly, nonatomic) double total;


- (instancetype)initWithClient:(NSString *)client
                 summaryOfWork:(NSString *)summaryOfWork
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(double)hoursWorked;
//                         total:(double)total;

@end

NS_ASSUME_NONNULL_END
