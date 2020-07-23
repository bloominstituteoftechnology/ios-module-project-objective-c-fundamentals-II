//
//  XMPTimedTask.m
//  TimeTracker
//
//  Created by conner on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "XMPTimedTask.h"

@implementation XMPTimedTask

- (instancetype)initWithClientName:(NSString*)clientName summary:(NSString*)summary hourlyRate:(float)hourlyRate hoursWorked:(float)hoursWorked total:(float)total {
    self = [super init];
    if(self) {
        _clientName = clientName;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
        _total = hourlyRate * hoursWorked;
    }
    return self;
}

@end
