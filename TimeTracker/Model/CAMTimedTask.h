//
//  CAMTimedTask.h
//  TimeTracker
//
//  Created by Cody Morley on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface CAMTimedTask : NSObject


@property (nonatomic, copy) NSString *name;
@property (nonatomic, copy) NSString *summary;
@property (nonatomic) double rate;
@property (nonatomic) double hours;
@property (nonatomic, readonly) double total;

- (instancetype)initWithName:(NSString *)name
                     summary:(NSString *)summary
                        rate:(double)rate
                       hours:(double)hours;

@end

NS_ASSUME_NONNULL_END
