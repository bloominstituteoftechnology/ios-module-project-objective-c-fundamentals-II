//
//  CAMTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Cody Morley on 7/14/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "CAMTimeTrackerViewController.h"
#import "CAMTimedTaskController.h"

@interface CAMTimeTrackerViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;
@property (weak, nonatomic) IBOutlet UITextField *summaryTextField;
@property (weak, nonatomic) IBOutlet UITextField *rateTextField;
@property (weak, nonatomic) IBOutlet UITextField *hoursTextField;
@property (weak, nonatomic) IBOutlet UITableView *tasksTableView;

@property (nonatomic) CAMTimedTaskController *taskController;

@end

@implementation CAMTimeTrackerViewController
- (IBAction)logTime:(id)sender {
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.taskController = [[CAMTimedTaskController alloc] init];
    self.tasksTableView.dataSource = self;
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
