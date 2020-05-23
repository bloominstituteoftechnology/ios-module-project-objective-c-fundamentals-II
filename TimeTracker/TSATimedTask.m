//
//  TSATimedTask.m
//  TimeTracker
//
//  Created by Alex Thompson on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "TSATimedTask.h"

@implementation TSATimedTask

- (instancetype)initWithClient:(NSString *)client total:(double)total summary:(NSString *)summary hourlyRate:(double)hourlyRate hoursWorked:(NSInteger)hoursWorked {
    
    if (self = [super init]) {
        
        _client = client.copy;
        _total = total;
        _summary = summary;
        _hourlyRate = hourlyRate;
        _hoursWorked = hoursWorked;
    }
    return self;
}

@end
