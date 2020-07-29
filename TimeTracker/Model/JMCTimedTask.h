//
//  JMCTimedTask.h
//  TimeTracker
//
//  Created by Jarren Campos on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface JMCTimedTask : NSObject

@property (nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSString *summary;
@property (nonatomic, readwrite) double hourlyRate;
@property (nonatomic, readwrite) double hoursWorked;
@property (nonatomic, readonly) double total;

- (instancetype)initWithName:(NSString *)name
                     summary:(NSString *)summary
                  hourlyRate:(double)hourlyRate
                 hoursWorked:(double)hoursWorked;
@end

NS_ASSUME_NONNULL_END
