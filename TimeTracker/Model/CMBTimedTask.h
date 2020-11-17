//
//  CMBTimedTask.h
//  TimeTracker
//
//  Created by Craig Belinfante on 11/15/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CMBTimedTask : NSObject

//client, summary of work, hourly rate, amount of hours, total
@property (nonatomic, readonly, copy) NSString *client;
@property (nonatomic, readonly) NSString *summary;
@property (nonatomic, readonly) NSInteger rate;
@property (nonatomic, readonly) double amount;
//@property (nonatomic, readonly) double total = amount + NSInteger

- (instancetype)initWithName:(NSString *)aClient
                     summary:(NSString *)aSummary
                        rate:(NSInteger)aRate
                      amount:(double)anAmount;
                     //  total:(double)aTotal;

@end

NS_ASSUME_NONNULL_END
