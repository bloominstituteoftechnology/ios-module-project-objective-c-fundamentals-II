//
//  MKTimedTask.m
//  TimeTracker
//
//  Created by Lambda_School_Loaner_268 on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "MKTimedTask.h"

@implementation MKTimedTask

-(instancetype)initWithClientName:(NSString *)clientName
                          summary:(NSString *)summary
                       hourlyRate:(double)hourlyRate
                      hoursWorked:(double)hoursWorked {
    self = [super init];
    if (self != nil) {
        _clientName = clientName;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
        
    }
    return self;
    
}

-(double)setTotal:(double)total {
    _total = _hourlyRate * _hoursWorked;
    return _total;
}
@end
