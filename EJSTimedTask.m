//
//  EJSTimedTask.m
//  TimeTracker
//
//  Created by Enzo Jimenez-Soto on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "EJSTimedTask.h"

@implementation EJSTimedTask

-(instancetype)initWithClientName:(NSString *)clientName
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
