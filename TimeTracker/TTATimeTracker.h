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

@property (nonatomic, readonly, copy) NSString *client;
@property (nonatomic, readonly, copy) NSString *summary;
@property (nonatomic, readonly) double hourlyRate;
@property (nonatomic, readonly) double numberOfHours;
@property (nonatomic, readonly) double totalCost;

@end

NS_ASSUME_NONNULL_END
