//
//  MKJTimedTask.h
//  TimeTracker
//
//  Created by Kenneth Jones on 11/26/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MKJTimedTask : NSObject

@property (nonatomic, copy) NSString *client;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) double rate;
@property (nonatomic) double hours;
@property (nonatomic, readonly) double total;

- (instancetype)initWithClient:(NSString *)aClient
                       summary:(NSString *)aSummary
                          rate:(double)aRate
                         hours:(double)aHours;

@end

NS_ASSUME_NONNULL_END
