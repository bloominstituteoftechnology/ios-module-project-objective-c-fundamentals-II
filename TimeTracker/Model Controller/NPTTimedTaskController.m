//
//  NPTTimedTaskController.m
//  TimeTracker
//
//  Created by Nick Nguyen on 4/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "NPTTimedTaskController.h"
#import "NPTTimedTask.h"

@interface NPTTimedTaskController ()

@property (nonatomic) NSMutableArray <NPTTimedTask *> *internalTask;

@end

@implementation NPTTimedTaskController

-(instancetype)init {
    self = [super init];
    if (self) {
        _internalTask = [[NSMutableArray alloc]init];
      
    }
    return self;
}
-(NSArray<NPTTimedTask*>*)timeTasks {
    return [self.internalTask copy];
}


-(void)createTaskWithClient:(NSString*)client summary:(NSString*)summary hourlyRate:(double)hourlyRate timeWorked:(double)timeWorked {
    
    NPTTimedTask * task = [[NPTTimedTask alloc] initWithClient:client summary:summary hourlyRate:hourlyRate timeWorked:timeWorked];
    
    [self.internalTask addObject:task];
    
    
}


@end
