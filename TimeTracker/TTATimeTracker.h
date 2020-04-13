//
//  TTATimeTracker.h
//  TimeTracker
//
//  Created by Dillon P on 4/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TTATimeTracker : NSObject

@property (nonatomic, copy) NSString *client;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double numberOfHours;
@property (nonatomic) double totalCost;

- (instancetype)initWithClient:(NSString *)client
                     summary:(NSString *)summary
                  hourlyRate:(double)hourlyRate
                 numberOfHours:(double)numberOfHours;

@end

NS_ASSUME_NONNULL_END
