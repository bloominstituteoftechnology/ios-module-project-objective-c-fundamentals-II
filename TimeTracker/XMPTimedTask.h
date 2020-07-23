//
//  XMPTimedTask.h
//  TimeTracker
//
//  Created by conner on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface XMPTimedTask : NSObject

- (instancetype)initWithClientName:(NSString*)clientName summary:(NSString*)summary hourlyRate:(float)hourlyRate hoursWorked:(float)hoursWorked total:(float)total;

@property NSString *clientName;
@property NSString *summary;
@property float hourlyRate;
@property float hoursWorked;
@property float total;

@end

NS_ASSUME_NONNULL_END
