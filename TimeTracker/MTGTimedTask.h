//
//  MTGTimedTask.h
//  TimeTracker
//
//  Created by Mark Gerrior on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MTGTimedTask : NSObject

// MARK: - Properties

@property (nonatomic, readwrite) NSString *client;
@property (nonatomic, readwrite) NSString *workSummary;
@property (nonatomic, readwrite) double hourlyRate;
@property (nonatomic, readwrite) double hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype)initWithClient:(NSString *)client
                   workSummary:(NSString *)workSummary
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
