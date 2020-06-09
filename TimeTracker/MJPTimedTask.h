//
//  MJPTimedTask.h
//  TimeTracker
//
//  Created by Mark Poggi on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MJPTimedTask : NSObject

// MARK: - Properties

@property (nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSString *summary;
@property (nonatomic, readwrite) double hourlyRate;
@property (nonatomic, readwrite) double hoursWorked;
@property (nonatomic, readonly) double total;

// MARK: - Initializer

- (instancetype)initWithName:(NSString *)name summary:(NSString *)summary hourlyRate:(double)hourlyRate hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
