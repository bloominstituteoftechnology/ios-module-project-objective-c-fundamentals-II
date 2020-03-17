//
//  JLATimedTask.m
//  TimeTracker
//
//  Created by Jorge Alvarez on 3/17/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "JLATimedTask.h"

@implementation JLATimedTask

- (instancetype)initWithClientName:(NSString *)clientName
                           summary:(NSString *)summary
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked {
    
    self = [super init];
    if (self) {
        
        _clientName = clientName;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

- (double)total {
    return _hoursWorked * _hourlyRate;
}

@end
