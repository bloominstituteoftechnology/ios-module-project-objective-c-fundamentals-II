//
//  XMPTimeTrackerViewController.m
//  TimeTracker
//
//  Created by conner on 7/23/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "XMPTimeTrackerViewController.h"
#import "XMPTimedTaskController.h"
#import "XMPTimedTask.h"

@interface XMPTimeTrackerViewController ()
@property (weak, nonatomic) IBOutlet UITextField *clientTF;
@property (weak, nonatomic) IBOutlet UITextField *summaryTF;
@property (weak, nonatomic) IBOutlet UITextField *hourlyRateTF;
@property (weak, nonatomic) IBOutlet UITextField *timeWorkedTF;
@property (weak, nonatomic) IBOutlet UITableView *tableView;
@end

@implementation XMPTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    XMPTimedTaskController* taskController = [[XMPTimedTaskController alloc] init];
    
    /*
    [controllerTest createTimedTaskWithClientName:@"Joe" summary:@"Paint a fence" hourlyRate:10.00 hoursWorked:4.00];
    [controllerTest createTimedTaskWithClientName:@"Bob" summary:@"Weld a pipe" hourlyRate:15.00 hoursWorked:2.00];
    NSLog(@"timedTasks = %@", controllerTest.timedTasks.description);
    XMPTimedTask* selectedTask = [controllerTest.timedTasks objectAtIndex:0];
    NSLog(@"timedTasks[0].clientName = %@", selectedTask.clientName);
    */
    
    
}

- (IBAction)logTime:(UIButton *)sender {
}

@end
