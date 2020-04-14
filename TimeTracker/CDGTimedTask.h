//
//  CDGTimedTask.h
//  TimeTracker
//
//  Created by Chris Gonzales on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CDGTimedTask : NSObject

// MARK: - Properties

@property NSString *clientName;
@property NSString *workoutDescription;
@property double hourlyRate;
@property double hoursWorked;
@property double total;

// MARK: - Initializer

-(instancetype)initWithClientName:(NSString *)clientName
               workoutDescription:(NSString *)workoutDescription
                       hourlyRate:(double)hourlyRate
                      hoursWorked:(double)hoursWorked
                            total:(double)total;
@end

NS_ASSUME_NONNULL_END
