//
//  CBDTimedTask.h
//  TimeTracker
//
//  Created by Christopher Devito on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CBDTimedTask : NSObject

// MARK: - Properties
@property (nonatomic, readwrite) NSString *name;
@property (nonatomic, readwrite) NSString *summary;
@property (nonatomic, readwrite) double hourlyRate;
@property (nonatomic, readwrite) double hoursWorked;
@property (nonatomic, readonly) double total;

//MARK: - Methods
- (instancetype)initWithName:(NSString *)name
                     summary:(NSString *)summary
                  hourlyRate:(double)hourlyRate
                 hoursWorked:(double)hoursWorked;
@end

NS_ASSUME_NONNULL_END
