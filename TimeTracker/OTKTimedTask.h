//
//  OTKTimedTask.h
//  TimeTracker
//
//  Created by Tobi Kuyoro on 12/05/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OTKTimedTask : NSObject

@property NSString *client;
@property NSString *workSummary;
@property double hourlyRate;
@property int hoursWorked;
@property (readonly) double total;

- (instancetype)initWithClient:(NSString *)client
                   workSummary:(NSString *)workSummary
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(int)hoursWorked;

@end

NS_ASSUME_NONNULL_END
