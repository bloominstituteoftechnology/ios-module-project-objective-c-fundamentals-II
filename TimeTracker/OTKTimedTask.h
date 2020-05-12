//
//  OTKTimedTask.h
//  TimeTracker
//
//  Created by Tobi Kuyoro on 12/05/2020.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface OTKTimedTask : NSObject

@property NSString *client;
@property NSString *workSummary;
@property int hourlyRate;
@property int hoursWorked;

@end

NS_ASSUME_NONNULL_END
