//
//  MTGTimedTask.h
//  TimeTracker
//
//  Created by Mark Gerrior on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MTGTimedTask : NSObject

// MARK: - Properties

@property NSString *client;
@property NSString *workSummary;
@property double hourlyRate;
@property double hoursWorked;
@property double total;

@end

NS_ASSUME_NONNULL_END
