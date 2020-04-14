//
//  KMLTimedTask.h
//  TimeTracker
//
//  Created by Keri Levesque on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface KMLTimedTask : NSObject


@property (nonatomic,  copy)NSString *client;
@property (nonatomic, copy)NSString *summaryOfWork;
@property ()double hourlyRate;
@property ()int hoursWorked;
@property (readonly)double total;

- (instancetype)initWithClient:(NSString*)client
                 summaryOfWork:(NSString*)summaryOfWork
                    hourlyRate:(double)hourlyRate
                   hoursWorked:(int)hoursWorked;
@end

NS_ASSUME_NONNULL_END
