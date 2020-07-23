//
//  XMPTimeTrackerViewController.m
//  TimeTracker
//
//  Created by conner on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "XMPTimeTrackerViewController.h"
#import "XMPTimedTaskController.h"

@interface XMPTimeTrackerViewController ()

@end

@implementation XMPTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XMPTimedTaskController* controllerTest = [[XMPTimedTaskController alloc] init];
    [controllerTest createTimedTaskWithClientName:@"Joe" summary:@"Paint a fence" hourlyRate:10.00 hoursWorked:4.00];
    [controllerTest createTimedTaskWithClientName:@"Bob" summary:@"Weld a pipe" hourlyRate:15.00 hoursWorked:2.00];
    NSLog(@"timedTasks = %@", controllerTest.timedTasks.description);
}

@end
