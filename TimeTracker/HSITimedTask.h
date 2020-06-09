//
//  HSITimedTask.h
//  TimeTracker
//
//  Created by Kenny on 6/9/20.
//  Copyright © 2020 Hazy Studios Inc. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HSITimedTask : NSObject

@property NSString *client;
@property NSString *summary;
@property double hourlyRate;
@property double hoursWorked;
@property (readonly) double total;
- (instancetype)initWithClient:(NSString *)client summary:(NSString *)summary hourlyRate:(double)hourlyRate hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
