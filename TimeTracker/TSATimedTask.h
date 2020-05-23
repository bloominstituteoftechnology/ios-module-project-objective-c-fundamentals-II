//
//  TSATimedTask.h
//  TimeTracker
//
//  Created by Alex Thompson on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TSATimedTask : NSObject

@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) NSInteger hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype)initWithClient:(NSString *)client
                        summary:(NSString *)summary
                        hourlyRate:(double)hourlyRate
                   hoursWorked:(NSInteger)hoursWorked;
@end

NS_ASSUME_NONNULL_END
