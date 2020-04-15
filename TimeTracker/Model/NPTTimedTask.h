//
//  NPTTimedTask.h
//  TimeTracker
//
//  Created by Nick Nguyen on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface NPTTimedTask : NSObject

@property (nonatomic, readwrite, copy) NSString *client;
@property (nonatomic, readwrite, copy) NSString *summary;
@property (nonatomic, readwrite)double hourlyRate;
@property (nonatomic, readwrite)double timeWorked;
@property (nonatomic, readonly)double totalPay;


-(instancetype)initWithClient:(NSString *)client
                      summary:(NSString *)summary
                   hourlyRate:(double)hourlyRate
                   timeWorked:(double)timeWorked;
                    

@end

NS_ASSUME_NONNULL_END
