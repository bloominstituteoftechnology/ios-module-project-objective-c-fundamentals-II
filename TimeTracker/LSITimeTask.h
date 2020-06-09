//
//  LSITimeTask.h
//  TimeTracker
//
//  Created by Bhawnish Kumar on 6/9/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LSITimeTask : NSObject

@property NSString *clientName;
@property NSString *summmary;
@property double hourlyRate;
@property double timeWorked;
@property (readonly) double total;


- (instancetype)initWithClientName:(NSString *)clientName summary:(NSString *)summary hourlyRate:(double)hourlyRate timeWorked:(double)timeWorked totle:(double)total;



@end

NS_ASSUME_NONNULL_END
