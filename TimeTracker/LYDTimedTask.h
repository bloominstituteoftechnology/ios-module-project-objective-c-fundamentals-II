//
//  LYDTimedTask.h
//  TimeTracker
//
//  Created by Lydia Zhang on 5/12/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface LYDTimedTask : NSObject
@property NSString *client;
@property NSString *summary;
@property double hrRate;
@property double hrs;
@property double total;

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                        hrRate:(double)hrRate
                           hrs:(double)hrs
                         total:(double)total;

@end

NS_ASSUME_NONNULL_END
