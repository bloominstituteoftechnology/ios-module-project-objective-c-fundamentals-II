//
//  MBMTimedTask.h
//  TimeTracker
//
//  Created by Enrique Gongora on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MBMTimedTask : NSObject

@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summaryOfWork;
@property (nonatomic) NSNumber *hourlyRate;
@property (nonatomic) NSNumber *hoursWorked;
@property (readonly, nonatomic) double total;

- (instancetype)initWithClient:(NSString *)client
                 summaryOfWork:(NSString *)summaryOfWork
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(double)hoursWorked;
@end

NS_ASSUME_NONNULL_END
