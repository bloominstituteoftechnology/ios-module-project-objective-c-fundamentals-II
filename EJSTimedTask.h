//
//  EJSTimedTask.h
//  TimeTracker
//
//  Created by Enzo Jimenez-Soto on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface EJSTimedTask : NSObject

// MARK: - Properties

@property (nonatomic, readwrite, copy) NSString *clientName;
@property (nonatomic, readwrite, copy) NSString *summary;
@property (nonatomic,readwrite) double hourlyRate;
@property (nonatomic,readwrite) double hoursWorked;
@property (nonatomic,readonly) double total;

// MARK: - Initalizers

-(instancetype)initWithClientName:(NSString *)clientName
                          summary:(NSString *)summary
                       hourlyRate:(double)hourlyRate
                      hoursWorked:(double)hoursWorked;

@end

NS_ASSUME_NONNULL_END
