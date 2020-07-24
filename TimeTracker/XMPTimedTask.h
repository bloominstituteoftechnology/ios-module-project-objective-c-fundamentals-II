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

- (instancetype)initWithClientName:(NSString*)clientName summary:(NSString*)summary hourlyRate:(float)hourlyRate hoursWorked:(float)hoursWorked;

@property (nonatomic) NSString *clientName;
@property (nonatomic) NSString *summary;
@property (nonatomic) float hourlyRate;
@property (nonatomic) float hoursWorked;
@property (nonatomic) float total;

@end

NS_ASSUME_NONNULL_END
