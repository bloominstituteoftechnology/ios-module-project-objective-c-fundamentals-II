//
//  TTRTimedTask.h
//  TimeTracker
//
//  Created by Sal B Amer on 5/22/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface TTRTimedTask : NSObject

//create properties for model
@property (nonatomic, readonly, copy) NSString *name;
@property (nonatomic, readonly, copy) NSString *summary;
@property (nonatomic, readonly) double hourlyRate;
@property (nonatomic, readonly) NSInteger totalHours;
@property (nonatomic) double totalCost;

//add initializer
- (instancetype)initWithName:(NSString *)aName
                     summary:(NSString *)aSummary
                  hourlyRate:(double)aHourlyRate
                  totalHours:(NSInteger)aTotalHours;
                                  

@end

NS_ASSUME_NONNULL_END
