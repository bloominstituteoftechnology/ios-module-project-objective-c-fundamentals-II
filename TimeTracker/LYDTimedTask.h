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
@property (nonatomic) NSString *client;
@property (nonatomic) NSString *summary;
@property (nonatomic) double hrRate;
@property (nonatomic) double hrs;
@property (nonatomic, readonly) double total;

- (instancetype)initWithClient:(NSString *)client
                       summary:(NSString *)summary
                        hrRate:(double)hrRate
                           hrs:(double)hrs;

@end

NS_ASSUME_NONNULL_END
