//
//  CLMTimedTask.h
//  TimeTracker
//
//  Created by Claudia Maciel on 7/24/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CLMTimedTask : NSObject

// Properties
@property (nonatomic, readonly, copy) NSString *client;
@property (nonatomic, readonly, copy) NSString *summary;
@property (nonatomic, readonly) double hourlyRate;
@property (nonatomic, readonly) NSInteger hoursWorked;
@property (nonatomic, readonly) double total;

@end

NS_ASSUME_NONNULL_END
