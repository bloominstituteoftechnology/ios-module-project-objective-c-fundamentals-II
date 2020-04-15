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

@property (nonatomic, copy) NSString *clientName;
@property (nonatomic, copy) NSString *workoutDescription;
@property double hourlyRate;
@property double hoursWorked;
- (double)total;

// MARK: - Initializer

-(instancetype)initWithClientName:(NSString *)clientName
               workoutDescription:(NSString *)workoutDescription
                       hourlyRate:(double)hourlyRate
                      hoursWorked:(double)hoursWorked;
//                            total:(double)total;

// MARK: - Methods



@end

NS_ASSUME_NONNULL_END
