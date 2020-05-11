//
//  HLOTimeTrackerViewController.m
//  TimeTracker
//
//  Created by Karen Rodriguez on 5/11/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

#import "HLOTimeTrackerViewController.h"
#import "HLOTimedTaskController.h"

@interface HLOTimeTrackerViewController () <UITableViewDataSource>

// MARK:- Outlets
@property (weak, nonatomic) IBOutlet UITextField *clientField;
@property (weak, nonatomic) IBOutlet UITextField *summaryField;
@property (weak, nonatomic) IBOutlet UITextField *hourlyField;
@property (weak, nonatomic) IBOutlet UITextField *hoursField;
@property (weak, nonatomic) IBOutlet UITableView *tableView;

// MARK:- Actions
- (IBAction)logTime:(UIButton *)sender;

// MARK:- Properties
@property HLOTimedTaskController *taskController;

@end

@implementation HLOTimeTrackerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    if (!_taskController) {
        _taskController = [[HLOTimedTaskController alloc] init];
    }
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

- (IBAction)logTime:(UIButton *)sender {
}
@end
