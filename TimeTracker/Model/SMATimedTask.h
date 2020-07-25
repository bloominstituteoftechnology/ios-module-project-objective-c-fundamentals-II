//
//  SMATimedTask.h
//  TimeTracker
//
//  Created by Sean Acres on 7/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface SMATimedTask : NSObject

@property (nonatomic, readonly, copy) NSString *clientName;
@property (nonatomic, readonly, copy) NSString *workSummary;
@property (nonatomic, readonly) double hourlyRate;
@property (nonatomic, readonly) double timeWorked;
@property (nonatomic, readonly) double total;

@end

NS_ASSUME_NONNULL_END
