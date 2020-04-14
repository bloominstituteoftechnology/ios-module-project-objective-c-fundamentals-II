//
//  SAHTimedTask.h
//  TimeTracker
//
//  Created by scott harris on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SAHTimedTask : NSObject

@property (nonatomic) NSString *client;
@property (nonatomic) NSString *workSummary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype) initWithClient:(NSString *)client
                        summary:(NSString *)summary
                           rate:(double)rate
                    hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
