//
//  MKTimedTask.h
//  TimeTracker
//
//  Created by Lambda_School_Loaner_268 on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKTimedTask : NSObject

@property (readonly) NSString *clientName;
@property (readwrite) NSString *summary;
@property (readonly) double hourlyRate;
@property (readwrite) double hoursWorked;
@property (readonly) double total;


-(instancetype)initWithClientName:(NSString *)clientName
                           summary:(NSString *)summary
                        hourlyRate:(double)hourlyRate
                       hoursWorked:(double)hoursWorked;


@end

NS_ASSUME_NONNULL_END
