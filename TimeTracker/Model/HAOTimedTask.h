//
//  HAOTimedTask.h
//  TimeTracker
//
//  Created by Hunter Oppel on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface HAOTimedTask : NSObject

@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) int hoursWorked;
@property (nonatomic, readonly) double totalWage;

- (instancetype)initWithClient:(NSString *)client summary:(NSString *)summary hourlyRate:(double)hourlyRate hoursWorked:(int)hoursWorked;

@end

NS_ASSUME_NONNULL_END
