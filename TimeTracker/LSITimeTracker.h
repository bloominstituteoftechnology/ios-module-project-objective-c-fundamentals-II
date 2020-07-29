//
//  LSITimeTracker.h
//  TimeTracker
//
//  Created by Joe on 5/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSITimeTracker : NSObject


@property (nonatomic, copy) NSString *clientName;
@property (nonatomic) NSString *taskNotes;
@property (nonatomic) double rate;
@property (nonatomic) double manHours;
@property (nonatomic, readonly) double totalPay;

- (instancetype)initWithName:(NSString *)aClientName
                   taskNotes:(NSString *)aTaskNotes
                        rate:(double)aRate
                    manHours:(double)aManHours
                    totalPay:(double)aTotalPay;   

@end

NS_ASSUME_NONNULL_END
