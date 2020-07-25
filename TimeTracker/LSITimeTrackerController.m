//
//  LSITimeTrackerController.m
//  TimeTracker
//
//  Created by Joe on 7/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "LSITimeTrackerController.h"
#import "LSITimeTracker.h"

@implementation LSITimeTrackerController

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

- (double)countTheCost:(double)ofRate times:(double)manHours
{
    return ofRate * manHours;
}

- (double)total
{
    return _manHours * _rate;
}

@end
