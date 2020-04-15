//
//  CDGTimedTask.m
//  TimeTracker
//
//  Created by Chris Gonzales on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CDGTimedTask.h"

@implementation CDGTimedTask


@synthesize clientName = _clientName;
@synthesize workoutDescription = _workoutDescription;

// MARK: - Initializer

-(instancetype)initWithClientName:(NSString *)clientName
workoutDescription:(NSString *)workoutDescription
        hourlyRate:(double)hourlyRate
       hoursWorked:(double)hoursWorked
//                            total:(double)total
{
    self = [super init];
    if (self) {
        _clientName = clientName;
        _workoutDescription = workoutDescription;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
//        total = total;
        
    }
    return self;
}

// MARK: - Strings

- (NSString *)clientName {
    return _clientName;
}
- (NSString *)workoutDescription {
    return _workoutDescription;
}

// MARK: - Methods

- (double)total {
    return _hoursWorked * _hourlyRate;
}

@end
