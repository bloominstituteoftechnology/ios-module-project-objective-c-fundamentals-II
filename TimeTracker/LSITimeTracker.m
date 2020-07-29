//
//  LSITimeTracker.m
//  TimeTracker
//
//  Created by Joe on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITimeTracker.h"

@implementation LSITimeTracker

- (instancetype)initWithName:(NSString *)aClientName
                   taskNotes:(NSString *)aTaskNotes
                        rate:(double)aRate
                    manHours:(double)aManHours
                    totalPay:(double)aTotalPay
{
    if (self = [super init]) {
        _clientName = aClientName;
        _taskNotes = aTaskNotes;
        _rate = aRate;
        _manHours = aManHours;
        _totalPay = aTotalPay;
    }
    return self;
}
@end
