//
//  PEITimedTask.h
//  TimeTracker
//
//  Created by Austin Potts on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface PEITimedTask : NSObject

//Properties
@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *workSummary;
@property (nonatomic) int hourlyRate;
@property (nonatomic) int timeWorked;
@property (readonly, nonatomic) double total;

//Methods
//Still in the header, define a standard memberwise initializer that takes in the four non-read only properties.


- (instancetype)initWithClientName:(NSString *)clientName
                       workSummary:(NSString *)workSummary
                        hourlyRate:(int)hourlyrate
                        timeWorked:(int)timeWorked;
                          //   total:(double *)total;

@end

NS_ASSUME_NONNULL_END
