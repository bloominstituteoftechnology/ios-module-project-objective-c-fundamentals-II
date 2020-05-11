//
//  HLOTimedTaskController.m
//  TimeTracker
//
//  Created by Karen Rodriguez on 5/11/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "HLOTimedTaskController.h"

@implementation HLOTimedTaskController

- (instancetype)init {
    self = [super init];
    if (self) {
        _tasks = [[NSMutableArray<HLOTimedTask *> alloc] init];
    }
    return self;
}


@end
