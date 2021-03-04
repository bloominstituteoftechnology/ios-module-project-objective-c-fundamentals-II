//
//  LSITimedTask.h
//  TimeTracker
//
//  Created by James McDougall on 3/3/21.
//  Copyright © 2021 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSITimedTask : NSObject

//MARK: - Properties -
@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *workSummary;
@property (nonatomic) int payRate;
@property (nonatomic) int hoursWorked;
@property (nonatomic, readonly) int payAmount;

//MARK: - Methods -
- (instancetype)initWithClientName:(NSString*)clientName
                workSummary:(NSString*)workSummary
                payRate:(int)payRate
                hoursWorked:(int)hoursWorked;

@end

NS_ASSUME_NONNULL_END
