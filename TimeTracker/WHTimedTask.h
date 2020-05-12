//
//  WHTimedTask.h
//  TimeTracker
//
//  Created by Wyatt Harrell on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface WHTimedTask : NSObject

@property NSString *client;
@property NSString *summary;
@property int hourlyRate;
@property int hoursWorked;
@property (readonly) double total;

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                    hourlyRate:(int)hourlyRate
                   hoursWorked:(int)hoursWorked
                         total:(double)total;

@end

NS_ASSUME_NONNULL_END
