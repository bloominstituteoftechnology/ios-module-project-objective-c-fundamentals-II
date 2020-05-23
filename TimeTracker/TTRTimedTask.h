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
@property (nonatomic) NSString *name;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hourlyRate;
@property (nonatomic) double totalHours;
@property (nonatomic) double totalCost;

//add initializer
- (instancetype)initWithName:(NSString *)aName
                     summary:(NSString *)aSummary
                  hourlyRate:(double)aHourlyRate
                  totalHours:(double)aTotalHours;
                                  

@end

NS_ASSUME_NONNULL_END
